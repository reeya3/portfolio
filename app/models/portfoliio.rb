class Portfoliio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_img, :thumb_img
  scope :rails, -> { where(subtitle: "this is sub title for rails") }

  after_initialize :set_default
  
  def self.rails
    where(subtitle: "this is sub title for rails")
  end

  def set_default
    self.main_img ||= "https://via.placeholder.com/150x200"
    self.thumb_img ||= "https://via.placeholder.com/150x200"
  end
end
