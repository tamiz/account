class AddNewCollectionToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :newcollection, :integer
  end
end
