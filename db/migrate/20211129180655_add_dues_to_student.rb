class AddDuesToStudent < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :paid_dues, :boolean
  end
end
