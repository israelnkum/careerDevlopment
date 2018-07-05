<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/blueprints/styles/navigation.yaml',
    'modified' => 1530210399,
    'data' => [
        'name' => 'Navigation Styles',
        'description' => 'Navigation styles for the Fix theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => 'rgba(255, 255, 255, 0.95)'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#444444'
                ]
            ]
        ]
    ]
];
