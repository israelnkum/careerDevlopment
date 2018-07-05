<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/custom/config/default/layout.yaml',
    'modified' => 1530214457,
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
                ],
                1 => [
                    0 => 'position-position-8450 33.3',
                    1 => 'position-position-3990 33.3',
                    2 => 'position-position-2394 33.3'
                ],
                2 => [
                    0 => 'custom-1056'
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
            'position-position-8450' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'firstImage'
                ]
            ],
            'position-position-3990' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'secondPic'
                ]
            ],
            'position-position-2394' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'thirdPic'
                ]
            ],
            'custom-1056' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '<div class="panel panel-default">
  <div class="panel-body">
    Panel content
  </div>
  <div class="panel-footer">Panel footer</div>
</div>'
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
