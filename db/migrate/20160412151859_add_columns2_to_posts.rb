class AddColumns2ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :author_first_name, :string
    add_column :posts, :author_last_name, :string
  end
end
