<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_bostan_free/gantry/theme.yaml',
    'modified' => 1530210377,
    'data' => [
        'details' => [
            'name' => 'Bostan Free',
            'version' => '1.0.4',
            'icon' => 'paper-plane',
            'date' => 'April 02, 2018',
            'author' => [
                'name' => 'JoomLead',
                'email' => 'support@joomlead.com',
                'link' => 'http://www.joomlead.com'
            ],
            'documentation' => [
                'link' => 'http://docs.gantry.org/gantry5'
            ],
            'support' => [
                'link' => 'https://gitter.im/gantry/gantry5'
            ],
            'updates' => [
                'link' => NULL
            ],
            'copyright' => '(C) 2018 JoomLead Team. All rights reserved.',
            'license' => 'GPLv2',
            'description' => 'Bostan Theme',
            'images' => [
                'thumbnail' => 'admin/images/preset1.png',
                'preview' => 'admin/images/preset1.png'
            ]
        ],
        'configuration' => [
            'gantry' => [
                'platform' => 'joomla',
                'engine' => 'nucleus'
            ],
            'theme' => [
                'parent' => 'jl_bostan_free',
                'base' => 'gantry-theme://common',
                'file' => 'gantry-theme://includes/theme.php',
                'class' => '\\Gantry\\Framework\\Theme'
            ],
            'fonts' => [
                'roboto' => [
                    400 => 'gantry-theme://fonts/roboto_regular_macroman/Roboto-Regular-webfont',
                    500 => 'gantry-theme://fonts/roboto_medium_macroman/Roboto-Medium-webfont',
                    700 => 'gantry-theme://fonts/roboto_bold_macroman/Roboto-Bold-webfont'
                ]
            ],
            'css' => [
                'compiler' => '\\Gantry\\Component\\Stylesheet\\ScssCompiler',
                'target' => 'gantry-theme://css-compiled',
                'paths' => [
                    0 => 'gantry-theme://scss',
                    1 => 'gantry-engine://scss'
                ],
                'files' => [
                    0 => 'bostan',
                    1 => 'bostan-joomla',
                    2 => 'custom'
                ],
                'persistent' => [
                    0 => 'bostan'
                ],
                'overrides' => [
                    0 => 'bostan-joomla',
                    1 => 'custom'
                ]
            ],
            'dependencies' => [
                'gantry' => '5.3.2'
            ],
            'block-variations' => [
                'Title Variations' => [
                    'title1' => 'Title 1',
                    'title2' => 'Title 2',
                    'title3' => 'Title 3',
                    'title4' => 'Title 4',
                    'title5' => 'Title 5',
                    'title6' => 'Title 6',
                    'title-grey' => 'Title Grey',
                    'title-pink' => 'Title Pink',
                    'title-red' => 'Title Red',
                    'title-purple' => 'Title Purple',
                    'title-orange' => 'Title Orange',
                    'title-blue' => 'Title Blue',
                    'title-gradient' => 'Title Gradient',
                    'title-outline' => 'Title Outline'
                ],
                'Box Variations' => [
                    'box1' => 'Box 1',
                    'box2' => 'Box 2',
                    'box3' => 'Box Blank',
                    'box-grey' => 'Box Grey',
                    'box-pink' => 'Box Pink',
                    'box-red' => 'Box Red',
                    'box-purple' => 'Box Purple',
                    'box-orange' => 'Box Orange',
                    'box-blue' => 'Box Blue',
                    'box-gradient' => 'Box Gradient',
                    'box-outline' => 'Box Outline'
                ],
                'Effects' => [
                    'spaced' => 'Spaced',
                    'shadow' => 'Shadow',
                    'rounded' => 'Rounded'
                ],
                'Utility' => [
                    'center' => 'Center',
                    'title-center' => 'Centered Title',
                    'equal-height' => 'Equal Height',
                    'disabled' => 'Disabled',
                    'align-right' => 'Align Right',
                    'align-left' => 'Align Left',
                    'nomarginall' => 'No Margin',
                    'nopaddingall' => 'No Padding'
                ]
            ]
        ],
        'admin' => [
            'styles' => [
                'core' => [
                    0 => 'base',
                    1 => 'accent',
                    2 => 'font'
                ],
                'section' => [
                    0 => 'navigation',
                    1 => 'slideshow',
                    2 => 'header',
                    3 => 'intro',
                    4 => 'features',
                    5 => 'utility',
                    6 => 'main',
                    7 => 'above',
                    8 => 'counter',
                    9 => 'tabs',
                    10 => 'testimonials',
                    11 => 'pricing',
                    12 => 'contact',
                    13 => 'carousel',
                    14 => 'footer',
                    15 => 'offcanvas'
                ],
                'configuration' => [
                    0 => 'breakpoints',
                    1 => 'sidecolumn'
                ]
            ]
        ]
    ]
];
