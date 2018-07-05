<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_bostan_free/blueprints/styles/navigation.yaml',
    'modified' => 1530210377,
    'data' => [
        'name' => 'Navigation Styles',
        'description' => 'Navigation section styles for the Bostan theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#424753'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#999999'
                ]
            ]
        ]
    ]
];
