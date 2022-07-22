class RemoveReferenceToOrders < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :basket
    remove_column :baskets, :cost
  end
end
