<?php
return [
    '@class' => 'Gantry\\Component\\Config\\CompiledConfig',
    'timestamp' => 1530210900,
    'checksum' => '765a54a4aeeb3755a65f029361f00ea6',
    'files' => [
        'templates/jl_bostan_free/custom/config/default' => [
            'index' => [
                'file' => 'templates/jl_bostan_free/custom/config/default/index.yaml',
                'modified' => 1530210377
            ],
            'layout' => [
                'file' => 'templates/jl_bostan_free/custom/config/default/layout.yaml',
                'modified' => 1530210377
            ]
        ],
        'templates/jl_bostan_free/config/default' => [
            'page/body' => [
                'file' => 'templates/jl_bostan_free/config/default/page/body.yaml',
                'modified' => 1530210377
            ],
            'page/head' => [
                'file' => 'templates/jl_bostan_free/config/default/page/head.yaml',
                'modified' => 1530210377
            ],
            'particles/branding' => [
                'file' => 'templates/jl_bostan_free/config/default/particles/branding.yaml',
                'modified' => 1530210377
            ],
            'particles/copyright' => [
                'file' => 'templates/jl_bostan_free/config/default/particles/copyright.yaml',
                'modified' => 1530210377
            ],
            'particles/logo' => [
                'file' => 'templates/jl_bostan_free/config/default/particles/logo.yaml',
                'modified' => 1530210377
            ],
            'particles/social' => [
                'file' => 'templates/jl_bostan_free/config/default/particles/social.yaml',
                'modified' => 1530210377
            ],
            'particles/totop' => [
                'file' => 'templates/jl_bostan_free/config/default/particles/totop.yaml',
                'modified' => 1530210377
            ],
            'styles' => [
                'file' => 'templates/jl_bostan_free/config/default/styles.yaml',
                'modified' => 1530210377
            ]
        ]
    ],
    'data' => [
        'particles' => [
            'contentcubes' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true
            ],
            'contenttabs' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true,
                'animation' => 'slide'
            ],
            'copyright' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => '1',
                'date' => [
                    'start' => '2016',
                    'end' => 'now'
                ],
                'target' => '_blank',
                'owner' => 'JoomLead LLC',
                'link' => '',
                'additional' => [
                    'text' => 'Developed by <a href="https://www.joomlead.com">JoomLead</a>. All rights reserved'
                ],
                'css' => [
                    'class' => ''
                ]
            ],
            'horizontalmenu' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true,
                'target' => '_blank'
            ],
            'owlcarousel' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true,
                'nav' => 'disable',
                'dots' => 'enable',
                'autoplay' => 'disable',
                'imageOverlay' => 'enable'
            ],
            'branding' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => '1',
                'content' => 'Powered by <a href="http://www.gantry.org/" title="Gantry Framework" class="g-powered-by">Gantry<span class="hidden-tablet"> Framework</span></a>',
                'css' => [
                    'class' => 'g-branding'
                ]
            ],
            'custom' => [
                'caching' => [
                    'type' => 'config_matches',
                    'values' => [
                        'twig' => '0',
                        'filter' => '0'
                    ]
                ],
                'enabled' => true,
                'twig' => '0',
                'filter' => '0'
            ],
            'logo' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => '1',
                'target' => '_self',
                'link' => true,
                'url' => '',
                'image' => 'gantry-media://logo.png',
                'svg' => '',
                'text' => '',
                'class' => 'g-logo g-logo-bostan'
            ],
            'menu' => [
                'caching' => [
                    'type' => 'menu'
                ],
                'enabled' => true,
                'menu' => '',
                'base' => '/',
                'startLevel' => 1,
                'maxLevels' => 0,
                'renderTitles' => 0,
                'hoverExpand' => 1,
                'mobileTarget' => 0
            ],
            'mobile-menu' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true
            ],
            'social' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => '1',
                'css' => [
                    'class' => ''
                ],
                'target' => '_blank',
                'display' => 'both',
                'title' => '',
                'items' => [
                    0 => [
                        'icon' => 'fa fa-twitter fa-fw',
                        'text' => '',
                        'link' => 'http://www.twitter.com/joomlead',
                        'name' => 'Twitter'
                    ],
                    1 => [
                        'icon' => 'fa fa-facebook fa-fw',
                        'text' => '',
                        'link' => 'http://www.facebook.com/joomlead',
                        'name' => 'Facebook'
                    ],
                    2 => [
                        'icon' => 'fa fa-google-plus fa-fw',
                        'text' => '',
                        'link' => 'https://plus.google.com/+joomlead',
                        'name' => 'Google+'
                    ]
                ]
            ],
            'spacer' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => true
            ],
            'totop' => [
                'caching' => [
                    'type' => 'static'
                ],
                'enabled' => '1',
                'css' => [
                    'class' => ''
                ],
                'icon' => 'fa fa-chevron-up fa-fw',
                'content' => 'Back to top'
            ],
            'backtotop' => [
                'enabled' => true,
                'icon' => 'fa fa-angle-double-up'
            ],
            'sticky' => [
                'enabled' => true,
                'spacing' => 0
            ],
            'analytics' => [
                'enabled' => true,
                'ua' => [
                    'anonym' => false,
                    'ssl' => false,
                    'debug' => false
                ]
            ],
            'assets' => [
                'enabled' => true
            ],
            'content' => [
                'enabled' => true
            ],
            'contentarray' => [
                'enabled' => true,
                'article' => [
                    'filter' => [
                        'featured' => ''
                    ],
                    'limit' => [
                        'total' => 2,
                        'columns' => 2,
                        'start' => 0
                    ],
                    'display' => [
                        'pagination_buttons' => '',
                        'image' => [
                            'enabled' => 'intro'
                        ],
                        'text' => [
                            'type' => 'intro',
                            'limit' => '',
                            'formatting' => 'text'
                        ],
                        'title' => [
                            'enabled' => 'show'
                        ],
                        'date' => [
                            'enabled' => 'published',
                            'format' => 'l, F d, Y'
                        ],
                        'read_more' => [
                            'enabled' => 'show'
                        ],
                        'author' => [
                            'enabled' => 'show'
                        ],
                        'category' => [
                            'enabled' => 'link'
                        ],
                        'hits' => [
                            'enabled' => 'show'
                        ]
                    ],
                    'sort' => [
                        'orderby' => 'publish_up',
                        'ordering' => 'ASC'
                    ]
                ]
            ],
            'date' => [
                'enabled' => true,
                'css' => [
                    'class' => 'date'
                ],
                'date' => [
                    'formats' => 'l, F d, Y'
                ]
            ],
            'frameworks' => [
                'enabled' => true,
                'jquery' => [
                    'enabled' => 0,
                    'ui_core' => 0,
                    'ui_sortable' => 0
                ],
                'bootstrap' => [
                    'enabled' => 0
                ],
                'mootools' => [
                    'enabled' => 0,
                    'more' => 0
                ]
            ],
            'lightcase' => [
                'enabled' => true
            ],
            'messages' => [
                'enabled' => true
            ],
            'module' => [
                'enabled' => true
            ],
            'position' => [
                'enabled' => true
            ]
        ],
        'styles' => [
            'above' => [
                'background' => '#f4f5f7',
                'text-color' => '#424753'
            ],
            'accent' => [
                'color-1' => '#414856',
                'color-2' => '#3d84a8'
            ],
            'base' => [
                'background' => '#ffffff',
                'text-color' => '#424753',
                'favicon' => 'gantry-media://favicon.ico'
            ],
            'breakpoints' => [
                'large-desktop-container' => '75rem',
                'desktop-container' => '60rem',
                'tablet-container' => '51rem',
                'large-mobile-container' => '48rem',
                'mobile-menu-breakpoint' => '51rem'
            ],
            'carousel' => [
                'background' => '#414856',
                'text-color' => '#eceeef'
            ],
            'contact' => [
                'background' => '#414856',
                'text-color' => '#eceeef'
            ],
            'counter' => [
                'background' => '#414856',
                'text-color' => '#eceeef'
            ],
            'couter' => [
                'background' => '#ffffff',
                'text-color' => '#424753'
            ],
            'expanded' => [
                'background' => '#ffffff',
                'text-color' => '#424753'
            ],
            'features' => [
                'background' => '#ffffff',
                'text-color' => '#424753'
            ],
            'font' => [
                'family-default' => 'family=Roboto:300,400',
                'family-title' => 'family=Roboto+Condensed:300,700,400'
            ],
            'footer' => [
                'background' => '#414856',
                'text-color' => '#ffffff'
            ],
            'header' => [
                'background' => '#312f38',
                'background-image' => '',
                'background-overlay' => 'disabled',
                'text-color' => '#eceeef'
            ],
            'intro' => [
                'background' => '#f4f5f7',
                'text-color' => '#424753'
            ],
            'main' => [
                'background' => '#ffffff',
                'text-color' => '#888888'
            ],
            'menu' => [
                'col-width' => '180px',
                'animation' => 'g-zoom'
            ],
            'navigation' => [
                'background' => '#3d84a8',
                'text-color' => '#fafafa'
            ],
            'offcanvas' => [
                'background' => '#414856',
                'text-color' => '#eceeef',
                'toggle-color' => '#3d84a8',
                'toggle-visibility' => '1',
                'width' => '14rem'
            ],
            'pricing' => [
                'background' => '#ffffff',
                'text-color' => '#424753'
            ],
            'slideshow' => [
                'background' => 'rgba(0,0,0, 0.0)',
                'text-color' => '#ffffff'
            ],
            'tabs' => [
                'background' => '#ffffff',
                'text-color' => '#424753'
            ],
            'testimonials' => [
                'background' => '#414856',
                'background-image' => '',
                'background-overlay' => 'disabled',
                'text-color' => '#eceeef'
            ],
            'utility' => [
                'background' => '#424753',
                'text-color' => '#ffffff'
            ],
            'preset' => 'preset1'
        ],
        'page' => [
            'body' => [
                'attribs' => [
                    'class' => 'gantry g-passion-style',
                    'id' => '',
                    'extra' => [
                        
                    ]
                ],
                'layout' => [
                    'sections' => '3'
                ],
                'body_top' => '',
                'body_bottom' => ''
            ],
            'head' => [
                'meta' => [
                    
                ],
                'head_bottom' => '',
                'atoms' => [
                    0 => [
                        'id' => 'sticky-3545',
                        'type' => 'sticky',
                        'title' => 'Sticky',
                        'attributes' => [
                            'enabled' => '1',
                            'id' => 'g-navigation',
                            'spacing' => '0',
                            'css' => [
                                'class' => ''
                            ]
                        ]
                    ],
                    1 => [
                        'title' => 'Back To Top',
                        'type' => 'backtotop',
                        'attributes' => [
                            'enabled' => true,
                            'icon' => 'fa fa-angle-double-up'
                        ],
                        'id' => 'backtotop-9041'
                    ],
                    2 => [
                        'type' => 'frameworks',
                        'title' => 'JavaScript Frameworks',
                        'attributes' => [
                            'enabled' => '1',
                            'jquery' => [
                                'enabled' => '1',
                                'ui_core' => '0',
                                'ui_sortable' => '0'
                            ],
                            'bootstrap' => [
                                'enabled' => '0'
                            ],
                            'mootools' => [
                                'enabled' => '0',
                                'more' => '0'
                            ]
                        ],
                        'id' => 'frameworks-3779'
                    ],
                    3 => [
                        'id' => 'assets-3565',
                        'type' => 'assets',
                        'title' => 'Custom CSS / JS',
                        'attributes' => [
                            'enabled' => '1',
                            'css' => [
                                
                            ],
                            'javascript' => [
                                0 => [
                                    'location' => 'gantry-assets://js/theme.js',
                                    'inline' => '',
                                    'in_footer' => '0',
                                    'extra' => [
                                        
                                    ],
                                    'priority' => '0',
                                    'name' => 'Theme js'
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ],
        'index' => [
            'name' => 'default',
            'timestamp' => 1530210377,
            'version' => 7,
            'preset' => [
                'image' => 'gantry-admin://images/layouts/default.png',
                'name' => 'default',
                'timestamp' => 1530210377
            ],
            'positions' => [
                'sidebar' => 'Sidebar'
            ],
            'sections' => [
                'navigation' => 'Navigation',
                'slideshow' => 'Slideshow',
                'intro' => 'Intro',
                'features' => 'Features',
                'utility' => 'Utility',
                'above' => 'Above',
                'counter' => 'Counter',
                'tabs' => 'Tabs',
                'testimonials' => 'Testimonials',
                'pricing' => 'Pricing',
                'contact' => 'Contact',
                'carousel' => 'Carousel',
                'header' => 'Header',
                'sidebar' => 'Sidebar',
                'aside' => 'Aside',
                'mainbar' => 'Main',
                'footer' => 'Footer',
                'offcanvas' => 'Offcanvas'
            ],
            'particles' => [
                'logo' => [
                    'logo-9608' => 'Logo / Image'
                ],
                'menu' => [
                    'menu-6409' => 'Menu'
                ],
                'social' => [
                    'social-3171' => 'Social'
                ],
                'position' => [
                    'position-position-3949' => 'Sidebar'
                ],
                'messages' => [
                    'system-messages-8155' => 'System Messages'
                ],
                'content' => [
                    'system-content-1587' => 'Page Content'
                ],
                'copyright' => [
                    'copyright-1736' => 'Copyright'
                ],
                'horizontalmenu' => [
                    'horizontalmenu-9034' => 'Horizontal Menu'
                ],
                'mobile-menu' => [
                    'mobile-menu-5697' => 'Mobile-menu'
                ]
            ],
            'inherit' => [
                
            ]
        ],
        'layout' => [
            'version' => 2,
            'preset' => [
                'image' => 'gantry-admin://images/layouts/default.png',
                'name' => 'default',
                'timestamp' => 1530210377
            ],
            'layout' => [
                '/navigation/' => [
                    0 => [
                        0 => 'logo-9608 20',
                        1 => 'menu-6409 60',
                        2 => 'social-3171 20'
                    ]
                ],
                '/slideshow/' => [
                    
                ],
                '/header/' => [
                    
                ],
                '/intro/' => [
                    
                ],
                '/features/' => [
                    
                ],
                '/utility/' => [
                    
                ],
                '/container-main/' => [
                    0 => [
                        0 => [
                            'sidebar 20' => [
                                0 => [
                                    0 => 'position-position-3949'
                                ]
                            ]
                        ],
                        1 => [
                            'mainbar 60' => [
                                0 => [
                                    0 => 'system-messages-8155'
                                ],
                                1 => [
                                    0 => 'system-content-1587'
                                ]
                            ]
                        ],
                        2 => [
                            'aside 20' => [
                                
                            ]
                        ]
                    ]
                ],
                '/above/' => [
                    
                ],
                '/counter/' => [
                    
                ],
                '/tabs/' => [
                    
                ],
                '/testimonials/' => [
                    
                ],
                '/pricing/' => [
                    
                ],
                '/contact/' => [
                    
                ],
                '/carousel/' => [
                    
                ],
                '/footer/' => [
                    0 => [
                        0 => 'copyright-1736 42',
                        1 => 'horizontalmenu-9034 58'
                    ]
                ],
                '/offcanvas/' => [
                    0 => [
                        0 => 'mobile-menu-5697'
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
                        'class' => ''
                    ]
                ],
                'header' => [
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'intro' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'features' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '2',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'utility' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '2',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'sidebar' => [
                    'type' => 'section',
                    'subtype' => 'aside',
                    'attributes' => [
                        'class' => ''
                    ]
                ],
                'mainbar' => [
                    'type' => 'section',
                    'subtype' => 'main',
                    'title' => 'Main',
                    'attributes' => [
                        'class' => ''
                    ]
                ],
                'aside' => [
                    'attributes' => [
                        'class' => ''
                    ]
                ],
                'container-main' => [
                    'attributes' => [
                        'boxed' => '3',
                        'class' => 'section-horizontal-paddings',
                        'extra' => [
                            
                        ]
                    ]
                ],
                'above' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'counter' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'tabs' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'testimonials' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'pricing' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'contact' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'carousel' => [
                    'type' => 'section',
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings'
                    ]
                ],
                'footer' => [
                    'attributes' => [
                        'boxed' => '',
                        'class' => 'section-horizontal-paddings section-vertical-paddings'
                    ]
                ],
                'offcanvas' => [
                    'attributes' => [
                        'boxed' => ''
                    ]
                ]
            ],
            'content' => [
                'logo-9608' => [
                    'title' => 'Logo / Image',
                    'attributes' => [
                        'image' => 'gantry-media://logo.png'
                    ]
                ],
                'social-3171' => [
                    'block' => [
                        'class' => 'g-social-header visible-desktop'
                    ]
                ],
                'position-position-3949' => [
                    'title' => 'Sidebar',
                    'attributes' => [
                        'key' => 'sidebar'
                    ]
                ],
                'copyright-1736' => [
                    'attributes' => [
                        'date' => [
                            'start' => '2015'
                        ],
                        'owner' => 'JoomLead'
                    ]
                ],
                'horizontalmenu-9034' => [
                    'title' => 'Horizontal Menu',
                    'attributes' => [
                        'items' => [
                            0 => [
                                'text' => 'Home',
                                'link' => 'https://www.joomlead.com',
                                'name' => 'Gantry'
                            ],
                            1 => [
                                'text' => 'Documentation',
                                'link' => 'http://www.joomlead.com/documentation/',
                                'name' => 'Documentation'
                            ],
                            2 => [
                                'text' => 'Download',
                                'link' => 'http://www.joomlead.com/joomla-templates/',
                                'name' => 'Download'
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
];
