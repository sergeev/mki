class AddTimestampToArticles < ActiveRecord::Migration[6.0]
	def change
	# Добовляем столбец но при этом разрешим нулевое значение
	add_timestamps :articles, null: true
	# засыпать существующую запись с помощью create_at и updated_at
	# значения, дающие понять, что записи являются поддельными
	long_ago = DateTime.new(2000, 1, 1)
	Article.update_all(created_at: long_ago, updated_at: long_ago)
	# изменить ненулевые ограничения
	change_column_null :articles, :created_at, false
	change_column_null :articles, :updated_at, false
	end
end
