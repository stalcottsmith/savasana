class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
