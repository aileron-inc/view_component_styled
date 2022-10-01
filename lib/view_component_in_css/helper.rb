# frozen_string_literal: true

module ViewComponentInCss
  #
  # Resolve and provide class names generated by css modules on the view template side.
  #
  module Helper
    def component_tag(tag = :section, **opts, &block)
      opts[:class] ||= :component
      content_tag(tag, class: component_css_selector(opts[:class]), style: opts[:style], &block)
    end

    def component_css_selector
      ["viewcomponent", identifier].compact.join("::")
    end
  end
end