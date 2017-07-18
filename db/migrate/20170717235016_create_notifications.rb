class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.boolean :success, default: false

      t.timestamps
    end
  end
end
