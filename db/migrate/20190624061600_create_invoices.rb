class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :reference
      t.string :invoice_date
      t.string :customer
      t.string :brandmanager
      t.string :narration
      t.integer :amount
      t.integer :totalcollection
      t.integer :balance_due

      t.timestamps
    end
  end
end
