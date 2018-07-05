<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_bostan_free/blueprints/styles/utility.yaml',
    'modified' => 1530210377,
    'data' => [
        'name' => 'Utility Styles',
        'description' => 'Utility section styles for the Bostan theme',
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
