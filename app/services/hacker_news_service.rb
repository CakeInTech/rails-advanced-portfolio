require 'httparty'

class HackerNewsService
  include HTTParty

  base_uri 'https://hacker-news.firebaseio.com/v0'

  def self.top_stories(timeframe = 'day')
    Rails.cache.fetch("hacker_news_#{timeframe}", expires_in: 1.day) do
      response = get("/topstories/#{timeframe}.json")
      response.parsed_response
    end
  end

  def self.get_story(story_id)
    Rails.cache.fetch("hacker_news_#{timeframe}", expires_in: 1.day) do
      response = get("/item/#{story_id}.json")
      response.parsed_response
    end
  end
end
