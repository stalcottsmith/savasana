class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.column :teacher_id, :integer
      t.column :timeslot_id, :integer
      t.column :assigned_date, :date
      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
