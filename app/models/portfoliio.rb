class Portfoliio < ApplicationRecord
  has_many :technologies
  validates_presence_of :title, :subtitle, :body, :main_img, :thumb_img
  scope :rails, -> { where(subtitle: "this is sub title for rails") }

  after_initialize :set_default
  include Placeholder

  
  def self.rails
    where(subtitle: "this is sub title for rails")
  end

  def set_default
    self.main_img ||= Placeholder.image_generator(height: '150', width: '150')
    self.thumb_img ||= Placeholder.image_generator(height: '150', width: '150')
  end
end
