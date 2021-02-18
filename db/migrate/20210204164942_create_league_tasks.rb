class CreateLeagueTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :league_tasks do |t|
      t.references :league, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
