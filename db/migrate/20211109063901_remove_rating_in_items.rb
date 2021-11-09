class RemoveRatingInItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :rating
  end
end
