require 'httparty'

class TechNews
  BASE_URL = 'https://api.currentsapi.services/v1'
  HEADERS = { 'Authorization' => '_ik6nbZEJiT-vgtqJG1zTvl4wwFX6bYxRYElsXsBtfivnnbx', 'cache-control' => 'no-cache' }
  CACHE_EXPIRATION = 1.day

  def initialize(keywords:, language:, category: nil)
    @keywords = keywords
    @language = language
    @category = category
  end

  def fetch_articles
    url = "#{BASE_URL}/search"
    params = { keywords: @keywords, language: @language }
    params[:category] = @category if @category

    cache_key = "tech_news_#{@keywords}_#{@language}_#{@category}"
    cached_data = Rails.cache.read(cache_key)

    if cached_data
      return cached_data
    else
      response = HTTParty.get(url, query: params, headers: HEADERS)

      if response.code == 200
        data = response.parsed_response
        articles = data['news'].map do |article|
          { title: article['title'], description: article['description'], url: article['url'] }
        end
        Rails.cache.write(cache_key, articles, expires_in: CACHE_EXPIRATION)
        return articles
      else
        raise "Error: #{response.code} - #{response.message}"
      end
    end
  end
end
