class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :points
      t.boolean :active
      t.string :category

      t.timestamps
    end
  end
end
