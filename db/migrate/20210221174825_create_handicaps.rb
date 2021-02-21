class CreateHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :handicaps do |t|
      t.integer :name

      t.timestamps
    end
  end
end
