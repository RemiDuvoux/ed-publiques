class CreateVisitorNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :visitor_needs do |t|
      t.references :visitor, null: false, foreign_key: true
      t.references :need, null: false, foreign_key: true

      t.timestamps
    end
  end
end
