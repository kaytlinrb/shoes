class AlterShoes < ActiveRecord::Migration[5.1]
  def change
    remove_column(:shoes, :name)
    add_column(:shoes, :store_id, :integer)
  end
end
