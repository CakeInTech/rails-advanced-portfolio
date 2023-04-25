class PagesController < ApplicationController
  require './app/services/hacker_news_service'

  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
    top_stories = HackerNewsService.top_stories
    @top_stories = top_stories&.first ? HackerNewsService.get_story(top_stories.first) : nil
  end
end
