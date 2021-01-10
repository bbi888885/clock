class CreateStopTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :stop_times do |t|

      t.timestamps
    end
  end
end
