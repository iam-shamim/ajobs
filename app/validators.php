<?php

/** @var \Illuminate\Validation\Factory $validator */

$validator->extend(
    'valid_password',
    function ($attribute, $value, $parameters)
    {
        return preg_match('/^[a-zA-Z0-9!@#$%\/\^&\*\(\)\-_\+\=\|\[\]{}\\\\?\.,<>`\'":;]+$/u', $value);
    }
);

$validator->extend(
    'userName',
    function ($attribute, $value, $parameters)
    {
        return preg_match('/^[a-zA-z][a-zA-z0-9._]+$/', $value);
    },
    'Your username must begin with a letter. and Only letters, numbers, underscores, period are allowed.'
);
$validator->extend(
    'passConfirmed',
    function ($attribute, $value, $parameters,$validator) {
        $confirmPass=array_get($validator->getData(),$parameters[0]);
        if($value===$confirmPass){
           return true;
        }
        return false;
    },
    'The password confirmation does not match.'
);