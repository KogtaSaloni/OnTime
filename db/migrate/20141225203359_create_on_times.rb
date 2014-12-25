class CreateOnTimes < ActiveRecord::Migration
  def change
    create_table :on_times do |t|
      t.string :Task
      t.date :Deadline

      t.timestamps
    end
  end
end
