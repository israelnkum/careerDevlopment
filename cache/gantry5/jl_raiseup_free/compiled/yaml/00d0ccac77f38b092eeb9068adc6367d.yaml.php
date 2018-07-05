<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_raiseup_free/blueprints/styles/header.yaml',
    'modified' => 1530223352,
    'data' => [
        'name' => 'Header Styles',
        'description' => 'Header styles for the Raiseup theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#072235'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#d5d5d5'
                ]
            ]
        ]
    ]
];
