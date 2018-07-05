<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_fix_free/custom/config/_offline/layout.yaml',
    'modified' => 1530213211,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/default.png',
            'name' => '_offline',
            'timestamp' => 1520018321
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
                                0 => 'system-content-1246'
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
            'frame' => [
                
            ],
            'footer' => [
                
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
            'frame' => [
                'type' => 'section'
            ],
            'footer' => [
                'inherit' => [
                    'outline' => 'default',
                    'include' => [
                        0 => 'children',
                        1 => 'attributes'
                    ]
                ]
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
        ]
    ]
];
