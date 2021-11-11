class RemoveCategoryToItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :category
  end
end
