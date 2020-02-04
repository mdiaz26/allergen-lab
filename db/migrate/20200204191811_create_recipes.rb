class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :title
      t.integer :cook_time
      t.integer :quantity

      t.timestamps
    end
  end
end
