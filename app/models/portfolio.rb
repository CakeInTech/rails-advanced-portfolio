class Portfolio < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true

  def self.anguler
    where(subtitle: 'Anguler')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
