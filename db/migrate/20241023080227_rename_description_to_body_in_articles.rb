class RenameDescriptionToBodyInArticles < ActiveRecord::Migration[7.2]
  def change
    rename_column :articles, :description, :body
  end
end
