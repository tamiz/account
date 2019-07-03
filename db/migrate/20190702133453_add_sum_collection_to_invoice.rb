class AddSumCollectionToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :sumcollection, :integer
  end
end
