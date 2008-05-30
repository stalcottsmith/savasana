class CreateTimeslots < ActiveRecord::Migration
  def self.up
    create_table :timeslots do |t|
      t.column :start_hour, :integer
      t.column :start_minute, :integer
      t.column :duration, :integer
      t.column :days_of_week, :string, :limit => 14
      t.timestamps
    end
  end

  def self.down
    drop_table :timeslots
  end
end
