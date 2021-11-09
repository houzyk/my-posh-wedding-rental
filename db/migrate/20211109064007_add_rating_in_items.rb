class AddRatingInItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :rating, :float, default: 0
  end
end
