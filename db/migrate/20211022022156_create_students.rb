class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :UIN
      t.string :first_name
      t.string :last_name
      t.integer :meeting_points
      t.integer :volunteer_points
      t.integer :social_points
      t.integer :total_points
      t.boolean :active_member

      t.timestamps
    end
  end
end
