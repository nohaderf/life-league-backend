class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :notes
      t.integer :duration

      t.timestamps
    end
  end
end