class CreateRemittancehistories < ActiveRecord::Migration[7.0]
  def change
    create_table :remittancehistories do |t|
      t.integer :src_id
      t.integer :dst_id
      t.integer :amount
      t.timestamps
    end
    add_index :remittancehistories, :src_id
    add_index :remittancehistories, :dst_id
  end
end
