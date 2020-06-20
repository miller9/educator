class AddInstitutionToEducators < ActiveRecord::Migration[6.0]
  def change
    add_column :educators, :institution, :string
  end
end
