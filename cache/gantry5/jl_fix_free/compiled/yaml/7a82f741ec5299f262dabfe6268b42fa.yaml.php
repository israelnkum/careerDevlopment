<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/blueprints/styles/abovefooter.yaml',
    'modified' => 1530210399,
    'data' => [
        'name' => 'Above Footer Colors',
        'description' => 'Above Footer for the Fix theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#273272'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#9d9ec0'
                ],
                'background-image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Background Image',
                    'default' => 'gantry-media://background/above-ft-bg.png'
                ]
            ]
        ]
    ]
];
