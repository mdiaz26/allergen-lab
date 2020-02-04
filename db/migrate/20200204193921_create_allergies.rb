class CreateAllergies < ActiveRecord::Migration[6.0]
  def change
    create_table :allergies do |t|
      t.string :name
      t.integer :user_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
