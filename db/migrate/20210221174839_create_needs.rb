class CreateNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :needs do |t|
      t.integer :name

      t.timestamps
    end
  end
end
