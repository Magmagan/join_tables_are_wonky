class AddPrimaryKeyToEnEmJoinTable < ActiveRecord::Migration[6.0]
  def change
    add_column :ems_ens, :id, :primary_key
  end
end
