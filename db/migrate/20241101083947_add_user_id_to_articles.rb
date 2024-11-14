class AddUserIdToArticles < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :user_id, :int
    add_foreign_key :articles, :users, column: :user_id
  end
end
