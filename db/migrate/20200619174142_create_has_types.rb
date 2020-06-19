class CreateHasTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :has_types do |t|
      t.references :article, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
