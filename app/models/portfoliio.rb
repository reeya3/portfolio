class Portfoliio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_img, :thumb_img
end
