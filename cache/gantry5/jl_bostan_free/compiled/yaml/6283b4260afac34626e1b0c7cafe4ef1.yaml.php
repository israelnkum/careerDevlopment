<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_bostan_free/blueprints/styles/testimonials.yaml',
    'modified' => 1530210377,
    'data' => [
        'name' => 'Testimonials Styles',
        'description' => 'Testimonials section styles for the Bostan theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#8f4dae'
                ],
                'background-image' => [
                    'type' => 'input.imagepicker',
                    'label' => 'Background Image',
                    'default' => ''
                ],
                'background-overlay' => [
                    'type' => 'select.select',
                    'label' => 'Background Overlay',
                    'description' => 'Enables the linear gradient overlay made of accent colors.',
                    'placeholder' => 'Select...',
                    'default' => 'disabled',
                    'options' => [
                        'enabled' => 'Enabled',
                        'disabled' => 'Disabled'
                    ]
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#eceeef'
                ]
            ]
        ]
    ]
];
