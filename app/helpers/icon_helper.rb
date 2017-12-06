# frozen_string_literal: true

module IconHelper
  def icon(name, options = {})
    content_tag :svg, icon_options(name, options) do
      concat icon_placeholder
    end
  end

  private

  def icon_options(name, options = {})
    {
      width: 24,
      height: 24,
      viewbox: '0 0 24 24',
      class: classnames('icon', "icon-#{name}", options[:class])
    }.merge(options)
  end

  def icon_placeholder
    content_tag :path, nil, d: 'M12 2A10 10 1 0 0 12 22A10 10 1 0 0 12 2'
  end
end
