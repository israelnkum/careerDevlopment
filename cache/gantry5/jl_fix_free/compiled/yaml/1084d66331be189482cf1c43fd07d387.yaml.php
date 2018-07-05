<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/blueprints/styles/accent.yaml',
    'modified' => 1530210399,
    'data' => [
        'name' => 'Accent Colors',
        'description' => 'Accent colors for the Fix theme',
        'type' => 'core',
        'form' => [
            'fields' => [
                'color-1' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Accent Color 1',
                    'default' => '#c6d3e3'
                ],
                'color-2' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Accent Color 2',
                    'default' => '#273272'
                ]
            ]
        ]
    ]
];
