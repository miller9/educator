class AddEducatorIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :educator, null: false, foreign_key: true
  end
end
