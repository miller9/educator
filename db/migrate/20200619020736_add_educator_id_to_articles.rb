class AddEducatorIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :educator, null: false, foreign_key: true, default: 1
  end
end
