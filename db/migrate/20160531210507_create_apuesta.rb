class CreateApuesta < ActiveRecord::Migration
  def change
    create_table :apuestas do |t|
      t.integer :porra_id
      t.integer :match_id
      t.string :apuesta

      t.timestamps null: false
    end
  end
end
