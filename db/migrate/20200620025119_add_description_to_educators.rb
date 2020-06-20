class AddDescriptionToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :description, :text
  end
end
