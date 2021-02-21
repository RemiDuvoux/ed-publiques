class CreateSchemes < ActiveRecord::Migration[6.0]
  def change
    create_table :schemes do |t|
      t.string :name
      t.string :url
      t.string :description
      t.integer :min_age
      t.integer :max_age
      t.boolean :scholarship_needed

      t.timestamps
    end
  end
end
