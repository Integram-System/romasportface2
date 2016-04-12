class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :image_id
      t.string :title
      t.string :content_short
      t.text :content_first
      t.text :content_blockquote
      t.text :content_second

      t.timestamps null: false
    end
  end
end
