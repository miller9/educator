class AddCountryToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :country, :string
  end
end
