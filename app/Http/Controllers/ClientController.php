<?php

namespace App\Http\Controllers;

use App\Mail\ResetPassword;
use App\Models\Client;
use Illuminate\Http\Request;
use App\Models\Appspecification;
use App\Models\Password_reset;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class ClientController extends Controller
{
    public function insertClient(Request $request)
    {
        // $validated = $request->validate([
        //     'email' => 'required|unique:clients|max:255',
        //     'name' => 'required',
        //     'lastName' => 'required',
        //     'phoneNumber' => 'required|unique:clients',
        //     'password' => 'required',
        // ]);

        $client = new Client;
        $client->name = $request->name;
        $client->lastName = $request->lastName;
        $client->email = $request->email;
        $client->password = Hash::make($request->password);
        $client->phoneNumber = $request->phoneNumber;

        if ($client->save()) {
            if ($request->ClientCoices) {                
                $appSpecifacation = new Appspecification;
                $appSpecifacation->app_global = $request->ClientCoices ;
                $appSpecifacation->client_id = $client->id;
                $appSpecifacation->price = $request->price;
                $appSpecifacation->save();
                //return $request->ClientCoices;
            }
            $credentials = request(['email', 'password']);
            if (!$token = auth()->guard('client-api')->attempt($credentials)) {
                return response()->json(['error' => 'Unauthorized'], 401);
            }
            return response()->json([
                'client' => auth()->guard('client-api')->user(),
                'token' => $token,
                'token_type' => 'bearer'
            ]);

        } else {
            return Response()->json([
                'msg' => 'error'
            ]);
        }
    }


    public function clientLogin(Request $request)
    {

        // $validated = $request->validate([
        //     'email' => 'required|unique:clients|max:255',
        //     'password' => 'required',
        // ]);


        $credentials = request(['email', 'password']);

        if (!$token = auth()->guard('client-api')->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        if ($request->ClientCoices) {
            $appSpecifacation = new Appspecification;
            $appSpecifacation->app_global = $request->ClientCoices ;
            $appSpecifacation->client_id = auth()->guard('client-api')->user()->id;
            $appSpecifacation->save();
        }
        return response()->json([
            'client' => auth()->guard('client-api')->user(),
            'token' => $token,
            'token_type' => 'bearer'
        ]);
    }


    public function me()
    {
        return response()->json(auth()->guard('client-api')->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->guard('client-api')->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    public function updateClient(Request $request,$id)
    {
        $client = Client::find($id);
        $client->name = $request->name;
        $client->lastName = $request->lastName;
        $client->email = $request->email;
        $client->phoneNumber = $request->phoneNumber;
        if ($client->update()) {
            return response()->json([
                'client' => auth()->guard('client-api')->user(),
                'token_type' => 'bearer'
            ]);

        }
    }
    public function changePassword(Request $request,$id)
    {
         $client = Client::find($id);
        if (Hash::check($request->oldPassword, $client->password)) {
            $client->password = Hash::make($request->password);
            $client->update();
            return response()->json([
                "class" => "alert alert-success alert-dismissible fade show",
                "msg" => "votre mot de passe a été changé avec succès"
            ]);
        }else{
            return response()->json([
                "class" => "alert alert-danger alert-dismissible fade show",
                "msg" => "ancien mot de passe incorrect"
            ]);           
        }
    }

    public function forgotPassword(Request $request)
    {
        $client = Client::Where('email',$request->email);
        if ($client->doesntExist()) {
            return response()->json([               
                'status' => 'invalid'
            ]);
        }else{
            if (Password_reset::Where('email',$request->email)->exists()) {
                $verif_client = Password_reset::Where('email',$request->email)->first();
                $mail = [
                    'title' => 'code pour réinitialiser votre password',
                    'body' => $verif_client->token
                ];
                Mail::to($request->email)->send(new ResetPassword($mail));
                return response()->json([
                    'status' => 'valid'
                ]);
            }
            $passwrod_reset = new Password_reset;
            $passwrod_reset->email = $request->email ;
            $passwrod_reset->token = random_int(0, 999999);
            $passwrod_reset->save();
            $mail = [
                'title' => 'code pour réinitialiser votre password',
                'body' => $passwrod_reset->token
            ];
            Mail::to($request->email)->send(new ResetPassword($mail));
            return response()->json([
                'status' => 'valid'
            ]);
        }
    }

    public function resetPassword(Request $request)
    {
        $password_reset = Password_reset::Where('email',$request->email);
        $client = Client::Where('email',$request->email);
        if ($password_reset->exists() && $client->exists()) {
            $token = $password_reset->first(['token']);
            if ($request->token == $token->token) {
                $myClient = $client->first();
                $myClient->password = Hash::make($request->password);
                $myClient->update();
                $password_reset->delete();
                return "success";
            }else {
                return "invalid";
            }
        }
        
        
    }
}
