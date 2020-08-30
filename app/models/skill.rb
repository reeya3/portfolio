class Skill < ApplicationRecord
  validates_presence_of :title, :percentage_completed
  include Placeholder
  after_initialize :set_default

 def set_default
    self.badge ||= Placeholder.image_generator(height: '150', width: '150')
  end
end
