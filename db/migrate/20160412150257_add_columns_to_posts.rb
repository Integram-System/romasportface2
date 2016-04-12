class AddColumnsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author, :string
    add_column :posts, :post_date, :date
  end
end
