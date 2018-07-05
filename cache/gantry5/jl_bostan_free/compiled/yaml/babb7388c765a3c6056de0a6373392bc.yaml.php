<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_bostan_free/custom/config/_error/layout.yaml',
    'modified' => 1530210377,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/default.png',
            'name' => '_error',
            'timestamp' => 1472314489
        ],
        'layout' => [
            'navigation' => [
                
            ],
            '/header/' => [
                0 => [
                    0 => 'custom-8642'
                ]
            ],
            '/container-main/' => [
                0 => [
                    0 => [
                        'mainbar 75' => [
                            0 => [
                                0 => 'system-content-1587'
                            ]
                        ]
                    ],
                    1 => [
                        'sidebar 25' => [
                            
                        ]
                    ]
                ]
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
            'header' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings section-vertical-paddings'
                ]
            ],
            'mainbar' => [
                'type' => 'section',
                'subtype' => 'main',
                'attributes' => [
                    'class' => ''
                ],
                'block' => [
                    'variations' => 'center'
                ]
            ],
            'sidebar' => [
                'type' => 'section',
                'subtype' => 'aside'
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
                'inherit' => [
                    'outline' => 'default',
                    'include' => [
                        0 => 'attributes',
                        1 => 'children'
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
        ],
        'content' => [
            'custom-8642' => [
                'title' => 'Error Text',
                'attributes' => [
                    'html' => '<h2 class="g-title">Truth Behind The 404!</h2>
<p>Gantry 5 provides a custom error page for you to configure with either positions, particles or a combination of both, as well as styling.</p>'
                ]
            ]
        ]
    ]
];
