class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :event_id
      t.string :UIN
      t.date :date_of_request
      t.integer :points_requested
      t.string :request_time
      t.boolean :approved

      t.timestamps
    end
  end
end
