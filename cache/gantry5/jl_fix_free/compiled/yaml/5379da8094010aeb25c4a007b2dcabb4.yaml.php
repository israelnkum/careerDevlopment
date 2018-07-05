<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/config/default/layout.yaml',
    'modified' => 1530210399,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/home.png',
            'name' => 'default',
            'timestamp' => 1516041161
        ],
        'layout' => [
            '/navigation/' => [
                0 => [
                    0 => 'logo-7657 25',
                    1 => 'menu-5263 75'
                ]
            ],
            '/slideshow/' => [
                0 => [
                    0 => 'position-position-1765'
                ]
            ],
            '/container-main/' => [
                0 => [
                    0 => [
                        'sidebar 14' => [
                            
                        ]
                    ],
                    1 => [
                        'mainbar 72' => [
                            0 => [
                                0 => 'system-messages-4126'
                            ],
                            1 => [
                                0 => 'system-content-1246'
                            ]
                        ]
                    ],
                    2 => [
                        'aside 14' => [
                            
                        ]
                    ]
                ]
            ],
            '/footer/' => [
                0 => [
                    0 => 'branding-4929'
                ]
            ],
            'offcanvas' => [
                0 => [
                    0 => 'mobile-menu-7330'
                ]
            ]
        ],
        'structure' => [
            'navigation' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings'
                ]
            ],
            'slideshow' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => '2',
                    'class' => 'section-horizontal-paddings'
                ]
            ],
            'sidebar' => [
                'type' => 'section'
            ],
            'mainbar' => [
                'type' => 'section'
            ],
            'container-main' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings section-vertical-paddings',
                    'extra' => [
                        
                    ]
                ]
            ],
            'footer' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings'
                ]
            ],
            'offcanvas' => [
                'attributes' => [
                    'position' => 'g-offcanvas-left',
                    'class' => '',
                    'extra' => [
                        
                    ],
                    'swipe' => '1',
                    'css3animation' => '1'
                ]
            ]
        ],
        'content' => [
            'logo-7657' => [
                'attributes' => [
                    'image' => 'gantry-media://Logo/logo.png'
                ]
            ],
            'menu-5263' => [
                'attributes' => [
                    'mobileTarget' => '1'
                ],
                'block' => [
                    'variations' => 'align-right'
                ]
            ],
            'position-position-1765' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'slideshow'
                ]
            ],
            'branding-4929' => [
                'attributes' => [
                    'content' => 'Copyright &copy; 2017 by <a href="http://joomlead.com/" title="JoomLead" class="g-powered-by">JoomLead</a>. All rights reserved.'
                ]
            ],
            'mobile-menu-7330' => [
                'title' => 'Mobile Menu'
            ]
        ]
    ]
];
