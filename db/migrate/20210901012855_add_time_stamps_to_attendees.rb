class AddTimeStampsToAttendees < ActiveRecord::Migration[5.2]
  def change
    change_table(:attendees) { |t| t.timestamps }
  end
end
