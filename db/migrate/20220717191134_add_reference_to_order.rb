class AddReferenceToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :basket
    add_reference :orders, :executor
  end
end
