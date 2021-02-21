class ChangeColumnInVisitorHandicap < ActiveRecord::Migration[6.0]
  def change
    rename_column :visitor_handicaps, :user_id, :visitor_id
  end
end
