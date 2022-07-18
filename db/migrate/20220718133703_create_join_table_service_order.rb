class CreateJoinTableServiceOrder < ActiveRecord::Migration[6.1]
  def change
    create_join_table :services, :orders do |t|
       t.index [:service_id, :order_id]
       t.index [:order_id, :service_id]
    end
  end
end
