module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Cake's Portfolio"
    @seo_keywords = "Mohamed Cake's portfolio"
  end
end
