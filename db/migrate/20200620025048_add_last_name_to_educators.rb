class AddLastNameToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :last_name, :string
  end
end
