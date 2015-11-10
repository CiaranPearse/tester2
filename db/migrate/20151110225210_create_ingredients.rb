class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :amount
      t.string :unit
      t.text :ingredient
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
