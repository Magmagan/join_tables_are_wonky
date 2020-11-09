class CreateEms < ActiveRecord::Migration[6.0]
  def change
    create_table :ems do |t|
      t.string :mane
      t.timestamps
    end
  end
end
