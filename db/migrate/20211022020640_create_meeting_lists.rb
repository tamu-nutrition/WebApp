class CreateMeetingLists < ActiveRecord::Migration[6.1]
  def change
    create_table :meeting_lists do |t|
      t.integer :meeting_id
      t.string :meeting_name
      t.date :date
      t.string :location
      t.timestamp :start_time

      t.timestamps
    end
  end
end
