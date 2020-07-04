class AddCityToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :city, :string
  end
end
