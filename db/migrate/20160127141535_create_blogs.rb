class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :image_id
      t.string :title
      t.string :content_short
      t.text :content

      t.timestamps null: false
    end
  end
end
