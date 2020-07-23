class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :descrition, :text
  	add_column :articles, :create_at, :datetime
  	add_column :articles, :update_at, :datetime
  end
end
