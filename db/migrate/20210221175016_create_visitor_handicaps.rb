class CreateVisitorHandicaps < ActiveRecord::Migration[6.0]
  def change
    create_table :visitor_handicaps do |t|
      t.references :user
      t.references :handicap

      t.timestamps
    end
  end
end
