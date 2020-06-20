class AddFirstNameToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :first_name, :string
  end
end
