<?php

/* @particles/position.html.twig */
class __TwigTemplate_492eb9988f81e10a34584cca24bc02137837ad0f3ba6e7a860fab9735d9a58bf extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/position.html.twig", 1);
        $this->blocks = array(
            'particle' => array($this, 'block_particle'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@nucleus/partials/particle.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_particle($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        echo $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "platform", array()), "displayModules", array(0 => $this->getAttribute(($context["particle"] ?? null), "key", array()), 1 => array("style" => (($this->getAttribute(($context["particle"] ?? null), "chrome", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "chrome", array()), "gantry")) : ("gantry")))), "method");
        echo "
";
    }

    public function getTemplateName()
    {
        return "@particles/position.html.twig";
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
        return new Twig_Source("", "@particles/position.html.twig", "/opt/lampp/htdocs/careerDev/media/gantry5/engines/nucleus/particles/position.html.twig");
    }
}
