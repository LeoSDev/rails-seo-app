class AddTitleToKeywords < ActiveRecord::Migration[5.0]
  def change
    add_column :keywords, :title, :string
  end
end
