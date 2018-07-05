<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/custom/config/_error/layout.yaml',
    'modified' => 1530213211,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/default.png',
            'name' => '_error',
            'timestamp' => 1520019792
        ],
        'layout' => [
            'header' => [
                
            ],
            'navigation' => [
                
            ],
            '/container-main/' => [
                0 => [
                    0 => [
                        'sidebar 20' => [
                            
                        ]
                    ],
                    1 => [
                        'mainbar 60' => [
                            0 => [
                                0 => 'system-messages-6091'
                            ],
                            1 => [
                                0 => 'system-content-3910'
                            ],
                            2 => [
                                0 => 'custom-5592'
                            ],
                            3 => [
                                0 => 'custom-2850'
                            ]
                        ]
                    ],
                    2 => [
                        'aside 20' => [
                            
                        ]
                    ]
                ]
            ],
            'abovefooter' => [
                
            ],
            'footer' => [
                
            ],
            'frame' => [
                
            ],
            'offcanvas' => [
                
            ]
        ],
        'structure' => [
            'navigation' => [
                'type' => 'section',
                'inherit' => [
                    'outline' => 'default',
                    'include' => [
                        0 => 'attributes',
                        1 => 'children'
                    ]
                ]
            ],
            'sidebar' => [
                'type' => 'section'
            ],
            'mainbar' => [
                'type' => 'section',
                'attributes' => [
                    'class' => ''
                ],
                'block' => [
                    'variations' => 'center'
                ]
            ],
            'container-main' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings section-vertical-paddings',
                    'extra' => [
                        
                    ]
                ]
            ],
            'abovefooter' => [
                'type' => 'section'
            ],
            'footer' => [
                'inherit' => [
                    'outline' => 'default',
                    'include' => [
                        0 => 'attributes',
                        1 => 'children'
                    ]
                ]
            ],
            'frame' => [
                'type' => 'section'
            ],
            'offcanvas' => [
                'inherit' => [
                    'outline' => 'default',
                    'include' => [
                        0 => 'attributes',
                        1 => 'children'
                    ]
                ]
            ]
        ],
        'content' => [
            'custom-5592' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => '  <div class="content-404">
  <h3>Looks Like Something Went Wrong!</h3>
  <p>The page you are looking for does not exist. We’re sorry but we can’t seem to find the page you requested.</p>
  </div>
'
                ]
            ],
            'custom-2850' => [
                'title' => 'Custom HTML',
                'attributes' => [
                    'html' => ' <a class="button er-bt" href="index.php"><i class="fa fa-arrow-circle-left"></i> Go to Home Page</a>'
                ]
            ]
        ]
    ]
];
