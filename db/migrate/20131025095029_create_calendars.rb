class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :name
      t.integer :caldav_collection_id

      t.timestamps
    end
  end
end
