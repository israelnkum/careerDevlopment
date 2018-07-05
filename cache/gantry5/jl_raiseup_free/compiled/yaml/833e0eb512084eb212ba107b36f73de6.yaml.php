<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => '/opt/lampp/htdocs/careerDev/templates/jl_raiseup_free/custom/config/default/layout.yaml',
    'modified' => 1530484406,
    'data' => [
        'version' => 2,
        'preset' => [
            'image' => 'gantry-admin://images/layouts/home.png',
            'name' => 'home',
            'timestamp' => 1530223352
        ],
        'layout' => [
            '/header/' => [
                0 => [
                    0 => 'custom-5173 70',
                    1 => 'social-1900 30'
                ]
            ],
            '/navigation/' => [
                0 => [
                    0 => 'logo-7657 29',
                    1 => 'menu-5263 71'
                ]
            ],
            '/slideshow/' => [
                0 => [
                    0 => 'position-position-1765'
                ],
                1 => [
                    0 => 'spacer-2142 10',
                    1 => 'position-position-5121 80',
                    2 => 'spacer-8009 10'
                ],
                2 => [
                    0 => 'spacer-1882 5',
                    1 => 'position-position-5348 90',
                    2 => 'spacer-8295 5'
                ],
                3 => [
                    0 => 'position-position-1245'
                ],
                4 => [
                    0 => 'spacer-7448 5',
                    1 => 'position-position-5604 90',
                    2 => 'spacer-1285 5'
                ],
                5 => [
                    0 => 'spacer-3649 5',
                    1 => 'position-position-3093 90',
                    2 => 'spacer-7450 5'
                ],
                6 => [
                    0 => 'spacer-2613 5',
                    1 => 'position-position-7775 90',
                    2 => 'spacer-3509 5'
                ],
                7 => [
                    0 => 'position-position-6351 20',
                    1 => 'position-position-6925 60',
                    2 => 'position-position-3035 20'
                ]
            ],
            '/container-main/' => [
                0 => [
                    0 => [
                        'sidebar 15' => [
                            
                        ]
                    ],
                    1 => [
                        'mainbar 71' => [
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
            '/abovefooter/' => [
                0 => [
                    0 => 'position-position-5091 17',
                    1 => 'position-position-9943 33',
                    2 => 'position-position-5299 25',
                    3 => 'position-position-9218 25'
                ]
            ],
            '/footer/' => [
                0 => [
                    0 => 'branding-4929 50',
                    1 => 'custom-8697 50'
                ]
            ],
            'offcanvas' => [
                0 => [
                    0 => 'mobile-menu-7330'
                ]
            ]
        ],
        'structure' => [
            'header' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings'
                ]
            ],
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
                'type' => 'section',
                'attributes' => [
                    'class' => ''
                ]
            ],
            'container-main' => [
                'attributes' => [
                    'boxed' => '',
                    'class' => 'no-content-md',
                    'extra' => [
                        
                    ]
                ]
            ],
            'abovefooter' => [
                'type' => 'section',
                'attributes' => [
                    'boxed' => '',
                    'class' => 'section-horizontal-paddings'
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
            'custom-5173' => [
                'title' => 'Header Contact',
                'attributes' => [
                    'html' => '<div class="top-left">
	<ul class="top-links clearfix">
		<li><span class="icon theme_color flaticon-maps-and-flags"></span>Career Development, BOX 256, TTU</li>
		<li><span class="icon theme_color flaticon-telephone"></span>Phone +233 249 051 415</li>
		<li>
			<span class="icon theme_color flaticon-e-mail-envelope"></span>
			careerdevelopment.office@ttu.edu.gh
			
		</li>
	</ul>
</div>'
                ]
            ],
            'social-1900' => [
                'attributes' => [
                    'items' => [
                        0 => [
                            'icon' => 'fa fa-facebook-f fa-fw',
                            'text' => '',
                            'link' => 'https://www.facebook.com/JoomLead',
                            'name' => 'Facebook'
                        ],
                        1 => [
                            'icon' => 'fa fa-twitter fa-fw',
                            'text' => '',
                            'link' => 'http://www.twitter.com/JoomLead',
                            'name' => 'Twitter'
                        ],
                        2 => [
                            'icon' => 'fa fa-instagram',
                            'text' => '',
                            'link' => '',
                            'name' => 'Instagram'
                        ],
                        3 => [
                            'icon' => 'fa fa-linkedin',
                            'text' => '',
                            'link' => '',
                            'name' => 'Linkedin'
                        ]
                    ]
                ]
            ],
            'logo-7657' => [
                'attributes' => [
                    'image' => 'gantry-media://Logo/logo.jpg'
                ]
            ],
            'menu-5263' => [
                'attributes' => [
                    'menu' => 'mainmenu',
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
            'position-position-5121' => [
                'title' => 'Mission and Vision',
                'attributes' => [
                    'key' => 'missionAndVision'
                ]
            ],
            'position-position-5348' => [
                'title' => 'whatWeDo-payVisit',
                'attributes' => [
                    'key' => 'whatWeDo-payVisit'
                ]
            ],
            'position-position-1245' => [
                'title' => 'Link To what We do',
                'attributes' => [
                    'key' => 'linkToWhatWeDo'
                ]
            ],
            'position-position-5604' => [
                'title' => 'About Us',
                'attributes' => [
                    'key' => 'about-us'
                ]
            ],
            'position-position-3093' => [
                'title' => 'whatWeDo-internshipEnded',
                'attributes' => [
                    'key' => 'whatWeDo-internshipEnded'
                ]
            ],
            'position-position-7775' => [
                'title' => 'whatWeDo-acceptOffer',
                'attributes' => [
                    'key' => 'whatWeDo-acceptOffer'
                ]
            ],
            'position-position-6351' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'module-position'
                ]
            ],
            'position-position-6925' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'module-position'
                ]
            ],
            'position-position-3035' => [
                'title' => 'Module Position',
                'attributes' => [
                    'key' => 'module-position'
                ]
            ],
            'position-position-5091' => [
                'title' => 'Logo',
                'attributes' => [
                    'key' => 'cr-logo'
                ]
            ],
            'position-position-9943' => [
                'title' => 'Find Us',
                'attributes' => [
                    'key' => 'find-us'
                ]
            ],
            'position-position-5299' => [
                'title' => 'Quick Links',
                'attributes' => [
                    'key' => 'quik-links'
                ]
            ],
            'position-position-9218' => [
                'title' => 'Send A message',
                'attributes' => [
                    'key' => 'send-a-message'
                ]
            ],
            'custom-8697' => [
                'title' => 'Footer Menu',
                'attributes' => [
                    'html' => '<div class="footer-menu">
	<p>Powered by Israel</p>
</div>'
                ]
            ],
            'mobile-menu-7330' => [
                'title' => 'Mobile Menu'
            ]
        ]
    ]
];
