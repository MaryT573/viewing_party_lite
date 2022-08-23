class CreateEventsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :eventsusers do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
