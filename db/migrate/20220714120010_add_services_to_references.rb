class AddServicesToReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :services, :category, null: false, foreign_key: true
    add_reference :services, :executor, null: false, foreign_key: true
    add_reference :services, :order, null: false, foreign_key: true
  end
end
