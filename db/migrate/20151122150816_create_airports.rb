class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name
      t.references :flight, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
