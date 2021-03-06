class CreateExecutors < ActiveRecord::Migration[6.1]
  def change
    create_table :executors do |t|
      t.string :name, null: false
      t.references :service, null: false, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
