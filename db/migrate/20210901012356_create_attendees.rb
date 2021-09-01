class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :names
      t.boolean :welcome
      t.boolean :wedding
    end
  end
end
