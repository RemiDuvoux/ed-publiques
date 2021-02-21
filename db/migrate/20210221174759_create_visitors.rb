class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.integer :age
      t.boolean :scholarship
      t.boolean :has_handicap
      t.string :zip_code

      t.timestamps
    end
  end
end
