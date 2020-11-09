class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :ens, :ems do |t|
      t.index [:en_id, :em_id]
      t.index [:em_id, :en_id]
    end
  end
end
