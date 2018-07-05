<?php

/* @particles/contentarray.html.twig */
class __TwigTemplate_031ceffb6d17570ce8f0bb62740c838718a6018ecee48fb698b2d4b7ccf234fe extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/contentarray.html.twig", 1);
        $this->blocks = array(
            'particle' => array($this, 'block_particle'),
            'javascript_footer' => array($this, 'block_javascript_footer'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@nucleus/partials/particle.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 3
        $context["attr_extra"] = $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->attributeArrayFilter($this->getAttribute(($context["particle"] ?? null), "extra", array()));
        // line 4
        $context["article_settings"] = $this->getAttribute(($context["particle"] ?? null), "article", array());
        // line 5
        $context["filter"] = $this->getAttribute(($context["article_settings"] ?? null), "filter", array());
        // line 6
        $context["sort"] = $this->getAttribute(($context["article_settings"] ?? null), "sort", array());
        // line 7
        $context["limit"] = $this->getAttribute(($context["article_settings"] ?? null), "limit", array());
        // line 8
        $context["display"] = $this->getAttribute(($context["article_settings"] ?? null), "display", array());
        // line 11
        $context["category_options"] = (($this->getAttribute(($context["filter"] ?? null), "categories", array())) ? (array("id" => array(0 => twig_split_filter($this->env, $this->getAttribute(($context["filter"] ?? null), "categories", array()), ","), 1 => 0))) : (array()));
        // line 12
        $context["categories"] = $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["joomla"] ?? null), "finder", array(0 => "category", 1 => ($context["category_options"] ?? null)), "method"), "published", array(0 => 1), "method"), "language", array(), "method"), "limit", array(0 => 0), "method"), "find", array(), "method");
        // line 15
        if ($this->getAttribute(($context["filter"] ?? null), "articles", array())) {
            // line 16
            $context["article_options"] = (($this->getAttribute(($context["filter"] ?? null), "articles", array())) ? (array("id" => array(0 => twig_split_filter($this->env, twig_replace_filter($this->getAttribute(($context["filter"] ?? null), "articles", array()), " ", ""), ",")))) : (array()));
            // line 17
            $context["article_finder"] = $this->getAttribute($this->getAttribute($this->getAttribute(($context["joomla"] ?? null), "finder", array(0 => "content", 1 => ($context["article_options"] ?? null)), "method"), "published", array(0 => 1), "method"), "language", array(), "method");
        } else {
            // line 19
            $context["article_finder"] = $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["joomla"] ?? null), "finder", array(0 => "content"), "method"), "category", array(0 => ($context["categories"] ?? null)), "method"), "published", array(0 => 1), "method"), "language", array(), "method");
        }
        // line 22
        $context["featured"] = (($this->getAttribute(($context["filter"] ?? null), "featured", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["filter"] ?? null), "featured", array()), "include")) : ("include"));
        // line 23
        if ((($context["featured"] ?? null) == "exclude")) {
            // line 24
            $this->getAttribute(($context["article_finder"] ?? null), "featured", array(0 => false), "method");
        } elseif ((        // line 25
($context["featured"] ?? null) == "only")) {
            // line 26
            $this->getAttribute(($context["article_finder"] ?? null), "featured", array(0 => true), "method");
        }
        // line 29
        $context["start"] = ($this->getAttribute(($context["limit"] ?? null), "start", array()) + max(0, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->intFilter($this->getAttribute(($context["ajax"] ?? null), "start", array()))));
        // line 30
        $this->getAttribute($this->getAttribute($this->getAttribute(($context["article_finder"] ?? null), "order", array(0 => $this->getAttribute(($context["sort"] ?? null), "orderby", array()), 1 => $this->getAttribute(($context["sort"] ?? null), "ordering", array())), "method"), "limit", array(0 => $this->getAttribute(($context["limit"] ?? null), "total", array())), "method"), "start", array(0 => ($context["start"] ?? null)), "method");
        // line 31
        $context["total"] = $this->getAttribute(($context["article_finder"] ?? null), "count", array(), "method");
        // line 32
        $context["articles"] = $this->getAttribute(($context["article_finder"] ?? null), "find", array(), "method");
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 34
    public function block_particle($context, array $blocks = array())
    {
        // line 35
        echo "
    ";
        // line 37
        echo "    <div class=\"g-content-array g-joomla-articles";
        if ($this->getAttribute($this->getAttribute(($context["particle"] ?? null), "css", array()), "class", array())) {
            echo " ";
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["particle"] ?? null), "css", array()), "class", array()), "html", null, true);
        }
        echo "\"";
        echo ($context["attr_extra"] ?? null);
        echo ">

        ";
        // line 39
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_array_batch(($context["articles"] ?? null), $this->getAttribute(($context["limit"] ?? null), "columns", array())));
        foreach ($context['_seq'] as $context["_key"] => $context["column"]) {
            // line 40
            echo "            <div class=\"g-grid\">
                ";
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($context["column"]);
            foreach ($context['_seq'] as $context["_key"] => $context["article"]) {
                // line 42
                echo "
                    <div class=\"g-block\">
                        <div class=\"g-content\">
                            <div class=\"g-array-item\">
                                ";
                // line 46
                if ((($this->getAttribute($this->getAttribute(($context["display"] ?? null), "image", array()), "enabled", array()) && $this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_intro", array())) || $this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_fulltext", array()))) {
                    // line 47
                    echo "                                    ";
                    if ((($this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_intro", array()) && ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "image", array()), "enabled", array()) == "intro")) || ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "image", array()), "enabled", array()) == "show"))) {
                        // line 48
                        echo "                                        <div class=\"g-array-item-image\">
                                            <a href=\"";
                        // line 49
                        echo twig_escape_filter($this->env, $this->getAttribute($context["article"], "route", array()), "html", null, true);
                        echo "\">
                                                <img src=\"";
                        // line 50
                        echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_intro", array())), "html", null, true);
                        echo "\" ";
                        echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->imageSize($this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_intro", array()));
                        echo " alt=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_intro_alt", array()), "html", null, true);
                        echo "\" />
                                            </a>
                                        </div>
                                    ";
                    } elseif (($this->getAttribute($this->getAttribute(                    // line 53
$context["article"], "images", array()), "image_fulltext", array()) && ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "image", array()), "enabled", array()) == "full"))) {
                        // line 54
                        echo "                                        <div class=\"g-array-item-image\">
                                            <a href=\"";
                        // line 55
                        echo twig_escape_filter($this->env, $this->getAttribute($context["article"], "route", array()), "html", null, true);
                        echo "\">
                                                <img src=\"";
                        // line 56
                        echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_fulltext", array())), "html", null, true);
                        echo "\" ";
                        echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->imageSize($this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_fulltext", array()));
                        echo " alt=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["article"], "images", array()), "image_fulltext_alt", array()), "html", null, true);
                        echo "\" />
                                            </a>
                                        </div>
                                    ";
                    }
                    // line 60
                    echo "                                ";
                }
                // line 61
                echo "
                                ";
                // line 62
                if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "title", array()), "enabled", array())) {
                    // line 63
                    echo "                                    <div class=\"g-array-item-title\">
                                        <h3 class=\"g-item-title\">
                                            <a href=\"";
                    // line 65
                    echo twig_escape_filter($this->env, $this->getAttribute($context["article"], "route", array()), "html", null, true);
                    echo "\">
                                                ";
                    // line 66
                    echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute(($context["display"] ?? null), "title", array()), "limit", array())) ? ($this->env->getExtension('Gantry\Component\Twig\TwigExtension')->truncateText($this->getAttribute($context["article"], "title", array()), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "title", array()), "limit", array()))) : ($this->getAttribute($context["article"], "title", array()))), "html", null, true);
                    echo "
                                            </a>
                                        </h3>
                                    </div>
                                ";
                }
                // line 71
                echo "
                                ";
                // line 72
                if (((($this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "enabled", array()) || $this->getAttribute($this->getAttribute(($context["display"] ?? null), "author", array()), "enabled", array())) || $this->getAttribute($this->getAttribute(($context["display"] ?? null), "category", array()), "enabled", array())) || $this->getAttribute($this->getAttribute(($context["display"] ?? null), "hits", array()), "enabled", array()))) {
                    // line 73
                    echo "                                    <div class=\"g-array-item-details\">
                                        ";
                    // line 74
                    if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "enabled", array())) {
                        // line 75
                        echo "                                            <span class=\"g-array-item-date\">
                                                ";
                        // line 76
                        if (($this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "enabled", array()) == "published")) {
                            // line 77
                            echo "                                                    <i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>";
                            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('date')->getCallable(), array($this->env, $this->getAttribute($context["article"], "publish_up", array()), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "format", array()))), "html", null, true);
                            echo "
                                                ";
                        } elseif (($this->getAttribute($this->getAttribute(                        // line 78
($context["display"] ?? null), "date", array()), "enabled", array()) == "modified")) {
                            // line 79
                            echo "                                                    <i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>";
                            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('date')->getCallable(), array($this->env, $this->getAttribute($context["article"], "modified", array()), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "format", array()))), "html", null, true);
                            echo "
                                                ";
                        } else {
                            // line 81
                            echo "                                                    <i class=\"fa fa-clock-o\" aria-hidden=\"true\"></i>";
                            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('date')->getCallable(), array($this->env, $this->getAttribute($context["article"], "created", array()), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "date", array()), "format", array()))), "html", null, true);
                            echo "
                                                ";
                        }
                        // line 83
                        echo "                                            </span>
                                        ";
                    }
                    // line 85
                    echo "
                                        ";
                    // line 86
                    if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "author", array()), "enabled", array())) {
                        // line 87
                        echo "                                            <span class=\"g-array-item-author\">
                                                <i class=\"fa fa-user\" aria-hidden=\"true\"></i>";
                        // line 88
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($context["article"], "author", array()), "name", array()), "html", null, true);
                        echo "
                                            </span>
                                        ";
                    }
                    // line 91
                    echo "
                                        ";
                    // line 92
                    if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "category", array()), "enabled", array())) {
                        // line 93
                        echo "                                            ";
                        $context["category_link"] = ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "category", array()), "enabled", array()) == "link");
                        // line 94
                        echo "                                            <span class=\"g-array-item-category\">
                                                ";
                        // line 95
                        $context["cat"] = twig_last($this->env, $this->getAttribute($context["article"], "categories", array()));
                        // line 96
                        echo "                                                ";
                        if (($context["category_link"] ?? null)) {
                            // line 97
                            echo "                                                    <a href=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["cat"] ?? null), "route", array()), "html", null, true);
                            echo "\">
                                                        <i class=\"fa fa-folder-open\" aria-hidden=\"true\"></i>";
                            // line 98
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["cat"] ?? null), "title", array()), "html", null, true);
                            echo "
                                                    </a>
                                                ";
                        } else {
                            // line 101
                            echo "                                                    <i class=\"fa fa-folder-open\" aria-hidden=\"true\"></i>";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["cat"] ?? null), "title", array()), "html", null, true);
                            echo "
                                                ";
                        }
                        // line 103
                        echo "                                            </span>
                                        ";
                    }
                    // line 105
                    echo "
                                        ";
                    // line 106
                    if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "hits", array()), "enabled", array())) {
                        // line 107
                        echo "                                            <span class=\"g-array-item-hits\">
                                                <i class=\"fa fa-eye\" aria-hidden=\"true\"></i>";
                        // line 108
                        echo twig_escape_filter($this->env, $this->getAttribute($context["article"], "hits", array()), "html", null, true);
                        echo "
                                            </span>
                                        ";
                    }
                    // line 111
                    echo "                                    </div>
                                ";
                }
                // line 113
                echo "
                                ";
                // line 114
                if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "text", array()), "type", array())) {
                    // line 115
                    echo "                                    ";
                    $context["article_text"] = ((($this->getAttribute($this->getAttribute(($context["display"] ?? null), "text", array()), "type", array()) == "intro")) ? ($this->getAttribute($context["article"], "introtext", array())) : ($this->getAttribute($context["article"], "text", array())));
                    // line 116
                    echo "                                    <div class=\"g-array-item-text\">
                                        ";
                    // line 117
                    if (($this->getAttribute($this->getAttribute(($context["display"] ?? null), "text", array()), "formatting", array()) == "text")) {
                        // line 118
                        echo "                                            ";
                        echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->truncateText(($context["article_text"] ?? null), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "text", array()), "limit", array()));
                        echo "
                                        ";
                    } else {
                        // line 120
                        echo "                                            ";
                        echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->truncateHtml(($context["article_text"] ?? null), $this->getAttribute($this->getAttribute(($context["display"] ?? null), "text", array()), "limit", array()));
                        echo "
                                        ";
                    }
                    // line 122
                    echo "                                    </div>
                                ";
                }
                // line 124
                echo "
                                ";
                // line 125
                if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "read_more", array()), "enabled", array())) {
                    // line 126
                    echo "                                    <div class=\"g-array-item-read-more\">
                                        <a href=\"";
                    // line 127
                    echo twig_escape_filter($this->env, $this->getAttribute($context["article"], "route", array()), "html", null, true);
                    echo "\">
                                            <button class=\"button";
                    // line 128
                    if ($this->getAttribute($this->getAttribute(($context["display"] ?? null), "read_more", array()), "css", array())) {
                        echo " ";
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["display"] ?? null), "read_more", array()), "css", array()), "html", null, true);
                    }
                    echo "\">";
                    echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute(($context["display"] ?? null), "read_more", array(), "any", false, true), "label", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute(($context["display"] ?? null), "read_more", array(), "any", false, true), "label", array()), "Read More...")) : ("Read More...")), "html", null, true);
                    echo "</button>

                                        </a>
                                    </div>
                                ";
                }
                // line 133
                echo "                            </div>
                        </div>
                    </div>

                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['article'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 138
            echo "            </div>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['column'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 140
        echo "
        ";
        // line 141
        if (((($context["total"] ?? null) > $this->getAttribute(($context["limit"] ?? null), "total", array())) && $this->getAttribute(($context["display"] ?? null), "pagination_buttons", array()))) {
            // line 142
            echo "            <div class=\"g-content-array-pagination\">
                <button class=\"button float-left contentarray-button pagination-button pagination-button-prev\" data-id=\"";
            // line 143
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "\" data-start=\"";
            echo twig_escape_filter($this->env, max(0, (($context["start"] ?? null) - $this->getAttribute(($context["limit"] ?? null), "total", array()))), "html", null, true);
            echo "\"";
            echo ((((($context["start"] ?? null) - $this->getAttribute(($context["limit"] ?? null), "total", array())) < 0)) ? (" disabled") : (""));
            echo ">Prev</button>
                <button class=\"button float-right contentarray-button pagination-button pagination-button-next\" data-id=\"";
            // line 144
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "\" data-start=\"";
            echo twig_escape_filter($this->env, (($context["start"] ?? null) + $this->getAttribute(($context["limit"] ?? null), "total", array())), "html", null, true);
            echo "\"";
            echo ((((($context["start"] ?? null) + $this->getAttribute(($context["limit"] ?? null), "total", array())) >= ($context["total"] ?? null))) ? (" disabled") : (""));
            echo ">Next</button>
                <div class=\"clearfix\"></div>
            </div>
        ";
        }
        // line 148
        echo "    </div>
";
    }

    // line 151
    public function block_javascript_footer($context, array $blocks = array())
    {
        // line 152
        if (((($context["total"] ?? null) > $this->getAttribute(($context["limit"] ?? null), "total", array())) && $this->getAttribute(($context["display"] ?? null), "pagination_buttons", array()))) {
            // line 153
            $this->getAttribute(($context["gantry"] ?? null), "load", array(0 => "jquery"), "method");
            // line 154
            echo "<script>
    (function (\$) {
        \$(document).on('click', 'button.contentarray-button', function () {
            var id = \$(this).attr('data-id'),
                start = \$(this).attr('data-start'),
                request = {
                'option' : 'com_ajax',
                'plugin' : 'particle',
                'Itemid' : ";
            // line 162
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->intFilter($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "page", array()), "itemid", array())), "html", null, true);
            echo ",
                'id'     : id,
                'start'  : start,
                'format' : 'json'
            };
            \$.ajax({
                type       : 'GET',
                data       : request,
                indexValue : id + '-particle',
                success: function (response) {
                    if(response.data){
                        \$('#' + this.indexValue).html(response.data[0].html);
                    } else {
                        // TODO: Improve error handling -- instead of replacing particle content, display flash message or something...
                        \$('#' + this.indexValue).html(response.message);
                    }
                },
                error: function(response) {
                    // TODO: Improve error handling -- instead of replacing particle content, display flash message or something...
                    \$('#' + this.indexValue).html('AJAX FAILED ON ERROR');
                }
            });
            return false;
        });
    })(jQuery)
</script>
";
        }
    }

    public function getTemplateName()
    {
        return "@particles/contentarray.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  402 => 162,  392 => 154,  390 => 153,  388 => 152,  385 => 151,  380 => 148,  369 => 144,  361 => 143,  358 => 142,  356 => 141,  353 => 140,  346 => 138,  336 => 133,  323 => 128,  319 => 127,  316 => 126,  314 => 125,  311 => 124,  307 => 122,  301 => 120,  295 => 118,  293 => 117,  290 => 116,  287 => 115,  285 => 114,  282 => 113,  278 => 111,  272 => 108,  269 => 107,  267 => 106,  264 => 105,  260 => 103,  254 => 101,  248 => 98,  243 => 97,  240 => 96,  238 => 95,  235 => 94,  232 => 93,  230 => 92,  227 => 91,  221 => 88,  218 => 87,  216 => 86,  213 => 85,  209 => 83,  203 => 81,  197 => 79,  195 => 78,  190 => 77,  188 => 76,  185 => 75,  183 => 74,  180 => 73,  178 => 72,  175 => 71,  167 => 66,  163 => 65,  159 => 63,  157 => 62,  154 => 61,  151 => 60,  140 => 56,  136 => 55,  133 => 54,  131 => 53,  121 => 50,  117 => 49,  114 => 48,  111 => 47,  109 => 46,  103 => 42,  99 => 41,  96 => 40,  92 => 39,  81 => 37,  78 => 35,  75 => 34,  71 => 1,  69 => 32,  67 => 31,  65 => 30,  63 => 29,  60 => 26,  58 => 25,  56 => 24,  54 => 23,  52 => 22,  49 => 19,  46 => 17,  44 => 16,  42 => 15,  40 => 12,  38 => 11,  36 => 8,  34 => 7,  32 => 6,  30 => 5,  28 => 4,  26 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@particles/contentarray.html.twig", "/opt/lampp/htdocs/careerDev/media/gantry5/engines/nucleus/particles/contentarray.html.twig");
    }
}
