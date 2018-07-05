<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_raiseup_free/blueprints/styles/navigation.yaml',
    'modified' => 1530223352,
    'data' => [
        'name' => 'Navigation Styles',
        'description' => 'Navigation styles for the Raiseup theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#ffffff'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#000000'
                ]
            ]
        ]
    ]
];
