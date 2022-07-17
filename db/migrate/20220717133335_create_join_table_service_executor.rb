class CreateJoinTableServiceExecutor < ActiveRecord::Migration[6.1]
  def change
    create_join_table :services, :executors do |t|
       t.index [:service_id, :executor_id]
       t.index [:executor_id, :service_id]
    end
  end
end
