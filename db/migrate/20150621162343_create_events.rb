class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :challonge_id, null: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.timestamps null: false
    end
  end
end
