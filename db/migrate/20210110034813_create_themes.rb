class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string      :subject, null: false
      t.timestamps
    end
  end
end
