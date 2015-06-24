class CreateDailySchedules < ActiveRecord::Migration
  def change
    create_table :daily_schedules do |t|
      t.string :day
      t.text :open
      t.text :close
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
