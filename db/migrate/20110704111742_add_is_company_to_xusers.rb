class AddIsCompanyToXusers < ActiveRecord::Migration
  def self.up
    add_column :xusers, :is_company, :boolean, :default =>false
  end

  def self.down
    remove_column :xusers, :is_company
  end
end
