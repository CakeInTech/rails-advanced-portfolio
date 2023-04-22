class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                 allow_destroy: true,
                                 reject_if: lambda { |attrs| attrs['name'].blank?}

  has_one_attached :main_image
  has_one_attached :thumb_image

  include Placeholder
  validates :title, presence: true
  validates :body, presence: true
  validates :main_image, presence: true
  validates :thumb_image, presence: true

  def self.anguler
    where(subtitle: 'Anguler')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails')}

end
