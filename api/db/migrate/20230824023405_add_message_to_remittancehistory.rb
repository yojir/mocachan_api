class AddMessageToRemittancehistory < ActiveRecord::Migration[7.0]
  def change
    add_column :remittancehistories, :message, :text
  end
end
