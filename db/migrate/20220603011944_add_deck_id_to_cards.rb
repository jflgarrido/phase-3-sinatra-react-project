class AddDeckIdToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :deck_id, :integer, null: false
  end
end
