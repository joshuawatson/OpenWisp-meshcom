class AddIbanToXusers < ActiveRecord::Migration
  def self.up
    add_column :xusers, :iban, :string
  end

  def self.down
    remove_column :xusers, :iban
  end
end
