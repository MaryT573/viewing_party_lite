class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
