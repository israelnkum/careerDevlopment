<?php

/* @gantry-admin/partials/php_unsupported.html.twig */
class __TwigTemplate_662c533909022f5952baf526c9dfea275c6dc5bfcf099a9110a865a3381c20be extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        $context["php_version"] = twig_constant("PHP_VERSION");
        // line 2
        echo "
";
        // line 3
        if ((is_string($__internal_1dcfbbe0574ad7ecdcf35e2020b9b1b2475346f0234a0fe3e5d1560e96979613 = ($context["php_version"] ?? null)) && is_string($__internal_4b878cf1bbbf1010902e09e9a59b922b2deadf216bbd75a3072d7bc928e5f03c = "5.4") && ('' === $__internal_4b878cf1bbbf1010902e09e9a59b922b2deadf216bbd75a3072d7bc928e5f03c || 0 === strpos($__internal_1dcfbbe0574ad7ecdcf35e2020b9b1b2475346f0234a0fe3e5d1560e96979613, $__internal_4b878cf1bbbf1010902e09e9a59b922b2deadf216bbd75a3072d7bc928e5f03c)))) {
            // line 4
            echo "<div class=\"g-grid\">
    <div class=\"g-block alert alert-warning g-php-outdated\">
        ";
            // line 6
            echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->transFilter("GANTRY5_PLATFORM_PHP54_WARNING", ($context["php_version"] ?? null));
            echo "
    </div>
</div>
";
        }
    }

    public function getTemplateName()
    {
        return "@gantry-admin/partials/php_unsupported.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  30 => 6,  26 => 4,  24 => 3,  21 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "@gantry-admin/partials/php_unsupported.html.twig", "/opt/lampp/htdocs/careerDev/administrator/components/com_gantry5/templates/partials/php_unsupported.html.twig");
    }
}
