class CreatePortfoliios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfoliios do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :main_img
      t.text :thumb_img

      t.timestamps
    end
  end
end
