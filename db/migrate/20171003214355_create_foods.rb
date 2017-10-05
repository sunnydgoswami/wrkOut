class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.datetime :date
      t.string :name
      t.float :calories

      t.timestamps null: false
    end
  end
end
