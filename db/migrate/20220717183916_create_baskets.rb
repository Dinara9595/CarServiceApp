class CreateBaskets < ActiveRecord::Migration[6.1]
  def change
    create_table :baskets do |t|
      t.integer :cost, null: false

      t.timestamps
    end
  end
end
