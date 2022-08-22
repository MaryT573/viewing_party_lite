class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :event_date
      t.time :start_time
      t.int :duration
      t.int :movie_id

      t.timestamps
    end
  end
end
