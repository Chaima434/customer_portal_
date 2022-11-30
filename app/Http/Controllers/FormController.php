<?php

namespace App\Http\Controllers;

use App\Models\Field;
use App\Models\Fieldoption;


class FormController extends Controller
{
    public function index()
    {
        $questions = Field::where('enabled', 1)->where('form', setting('forms.form_create_application'))->get();
        $maxStep = Field::where('form', setting('forms.form_create_application'))->max('step');
        $data = [];
        foreach ($questions as $question) {
            $options = Fieldoption::where('field_id', $question->id)->get();
            $countoption = $options->count();
            if ($countoption  > 0) {
                $result = [];
                foreach ($options as $option) {
                    $result[] = [
                        "id" => $option->id,
                        "option" => $option->option,
                        "price" => $option->price
                    ];
                };

                $data[] =
                    [
                        "id" => $question->id,
                        "question" => $question->label,
                        "type" => $question->type,
                        "step" => $question->step,
                        "parent" => $question->parent,
                        "enabled" => $question->enabled,
                        "options" => $result
                    ];
            } else {
                $data[] =
                    [
                        "id" => $question->id,
                        "question" => $question->label,
                        "type" => $question->type,
                        "step" => $question->step,
                        "parent" => $question->parent,
                        "enabled" => $question->enabled,
                        "price" => $question->price,
                    ];
            }
        }
        return response()->json([
            'data' => $data,
            'maxStep' => $maxStep
        ]);
    }

    
}
