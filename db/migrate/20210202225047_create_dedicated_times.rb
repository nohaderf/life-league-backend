class CreateDedicatedTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :dedicated_times do |t|
      t.references :task, null: false, foreign_key: true
      t.integer :time_spent
      t.date :date

      t.timestamps
    end
  end
end
