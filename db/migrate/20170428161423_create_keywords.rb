class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.string :name
      t.integer :search_nbr
      t.integer :results_nbr
      t.float :ads_cost
      t.integer :competition_level
      t.boolean :is_worth

      t.timestamps
    end
  end
end
