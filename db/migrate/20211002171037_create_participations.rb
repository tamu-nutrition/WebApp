class CreateParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :participations do |t|
      t.integer :event_id
      t.string :uin

      t.timestamps
    end
  end
end
