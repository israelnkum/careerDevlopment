<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/custom/particles/search.yaml',
    'modified' => 1530210399,
    'data' => [
        'name' => 'Search',
        'description' => 'Create a list of items, allowing each item\'s content to be expanded and collapsed by clicking its header.',
        'type' => 'particle',
        'icon' => 'fa-bars',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable to the particles.',
                    'default' => true
                ],
                'icon' => [
                    'type' => 'input.icon',
                    'label' => 'Icon',
                    'description' => 'Choose an icon.',
                    'default' => 'fa fa-search'
                ],
                'style' => [
                    'type' => 'select.select',
                    'label' => 'Style',
                    'description' => 'Choose search style',
                    'default' => 1,
                    'options' => [
                        1 => 'Default',
                        2 => 'Lightbox'
                    ]
                ],
                'itemid' => [
                    'type' => 'input.number',
                    'label' => 'ItemID',
                    'description' => 'Assign an menu ItemID for the display of the search results if there is no com_search menu and a specific display is desired. If you do not know what this means, you may not need it.'
                ],
                'css.class' => [
                    'type' => 'input.selectize',
                    'label' => 'CSS Classes',
                    'description' => 'CSS class name for the particle.'
                ]
            ]
        ]
    ]
];
