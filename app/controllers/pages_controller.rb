class PagesController < ApplicationController
  require './app/services/tech_news'

  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    tech_news = TechNews.new(keywords: 'technology', language: 'en', category: 'programming')
    @articles = tech_news.fetch_articles.first(6)
  end
end
