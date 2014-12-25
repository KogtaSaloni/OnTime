class AddUserIdToOnTime < ActiveRecord::Migration
  def change
    add_column :on_times, :user_id, :integer
  end
end
