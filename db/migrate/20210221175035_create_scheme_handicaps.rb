class CreateSchemeHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :scheme_handicaps do |t|
      t.references :scheme
      t.references :handicap

      t.timestamps
    end
  end
end
