class CreateSchemeNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :scheme_needs do |t|
      t.references :scheme, null: false, foreign_key: true
      t.references :need, null: false, foreign_key: true

      t.timestamps
    end
  end
end
