<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Appspecification;
use Illuminate\Support\Facades\Storage;
// use App\Models\Field;

class AppspecificationController extends Controller
{
    public function insert(Request $request)
    {

        //$requestData = ;       
        $app = new Appspecification;
        $app->client_id = $request->client_id;
        $app->price = $request->price;
        $app->app_global = $request->ClientCoices;

        if ($app->save()) {
            return response()->json([
                'message' => 'successfully',
                'code' => 200,
            ]);
        } else {
            return "echec";
        }
    }

    

    public function getApplications($id)
    {
        $applications = Appspecification::where('client_id', $id)->get();
        foreach($applications as $application){
            foreach(json_decode($application->app_global) as $key => $value){
                $field = \App\Models\Field::where('id',$key)->value('label');
                if (gettype($value) == "array") {
                    $checkbox = [];
                    foreach($value as $optionField){                       
                        $checkbox[] = \App\Models\Fieldoption::where('id',$optionField)->value('option');
                        $options[$field] = $checkbox ;
                    }
                }else{
                    $option = \App\Models\Fieldoption::where('id',$value)->value('option');
                    $options[$field] = $option;
                }                                     
                //$options[$key] = gettype($value) ;                      
            }
            $options['price'] = $application->price;
            $result[] = [    
                'App' => $options,
                'idApp' => $application->id,
            ];
        }

        return response()->json([
            "apps" => $result
        ]);
    }

    public function customApp(Request $request, $id)
    {
        //return $request->all();
        $app = Appspecification::find($id);
        $requestData = $request->all();
        
        if($request->hasFile('logo')){
            $logo = $request->file('logo');
            $imageName = 'logo' . time() . '_' . random_int(0, 999999) . '.' . $logo->getClientOriginalExtension();
            if ($logo->move(base_path('storage\app\public\ImageUploaded'), $imageName)) {
                $requestData['logo'] = $imageName;
            }
        }


        if($request->hasFile('icon')){
            $icon = $request->file('icon');
            $iconName = 'icon' . time() . '_' . random_int(0, 999999) . '.' . $icon->getClientOriginalExtension();
            if ($icon->move(base_path('storage\app\public\ImageUploaded'), $iconName)) {
                $requestData['icon'] = $iconName;
            }
        }

        //dd($requestData);
        
        $app->app_custom = $requestData;
        $app->update();
        return response()->json([
            'msg' => 'success',
        ]);
       
    }

    //function getDetailForm2
    public function GetDetailform2($id)
    {
        //$app = Appspecification::all();
        $app_custom=Appspecification::find($id)->app_custom;
       // $app_custom = Appspecification::where('client_id', $id)->get();
        //echo $app_custom;
          $result =[];

         foreach (json_decode($app_custom) as $key => $value) {
             $result[] = [
                $key => $value ,
             ];
         }
         return response()->json($result);
     }
    

    public function calcPrice(Request $request)
    {
        $data = $request->all();
        foreach ($data as $key => $value) {
            
            if (str_contains($value, ',')) {
                $values = explode(",", $value);
                for ($i = 0; $i < count($values); $i++) {
                    $table[] = $values[$i];
                }
            } else {
                $table[] = $value;
            }
        }

        $price = \App\Models\Fieldoption::whereIn('id', $table)->sum('price');
        return response()->json([
            'price' => $price,
        ]);
    }
    public function getThisApp($id,$type)
    {
        $app_global = Appspecification::find($id)->app_global;
        if ($type == 'display') {
            foreach(json_decode($app_global) as $key => $value){
                $field = \App\Models\Field::where('id',$key)->value('label');
                if (gettype($value) == "array") {
                    $checkbox = [];
                    foreach($value as $optionField){                       
                        $checkbox[] = \App\Models\Fieldoption::where('id',$optionField)->value('option');
                        $options[$field] = $checkbox ;
                    }
                }else{
                    $option = \App\Models\Fieldoption::where('id',$value)->value('option');
                    $options[$field] = $option;
                }                     
            }       
        }
        elseif ($type == 'edit'){
            $options = json_decode($app_global);
        }
        return response()->json($options);

    }

    public function updateApplication($id, Request $request)
    {
        $app = Appspecification::find($id);
        $app->client_id = $request->client_id;
        $app->price = $request->price;
        $app->app_global = $request->ClientCoices;

        if ($app->update()) {
            return response()->json([
                'message' => 'successfully',
                'code' => 200,
            ]);
        } else {
            return "echec";
        }
    }
}
