class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :opening_id
      t.timestamps
    end
  end
end
