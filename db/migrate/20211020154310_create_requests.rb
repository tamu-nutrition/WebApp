class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.numeric :event_id
      t.numeric :uin
      t.datetime :date
      t.numeric :points
      t.text :request_type
      t.boolean :approved
      
      t.timestamps
    end
  end
end
