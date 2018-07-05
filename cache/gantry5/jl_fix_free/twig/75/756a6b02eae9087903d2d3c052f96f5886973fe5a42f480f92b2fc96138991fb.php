<?php

/* partials/page.html.twig */
class __TwigTemplate_eac30b33655c1a55a46626206954d35c1701ab522e69289599616d2f5cb9d0ec extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/page.html.twig", "partials/page.html.twig", 1);
        $this->blocks = array(
            'page_footer' => array($this, 'block_page_footer'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@nucleus/page.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_page_footer($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->displayParentBlock("page_footer", $context, $blocks);
        echo "
    <jdoc:include type=\"modules\" name=\"debug\" />
";
    }

    public function getTemplateName()
    {
        return "partials/page.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  31 => 4,  28 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("", "partials/page.html.twig", "/opt/lampp/htdocs/careerDev/media/gantry5/engines/nucleus/twig/partials/page.html.twig");
    }
}
