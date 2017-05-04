class RemoveTitleFromKeywords < ActiveRecord::Migration[5.0]
  def change
    remove_column :keywords, :title, :string
  end
end
