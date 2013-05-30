class AddPgComuneToXusers < ActiveRecord::Migration
  def self.up
    add_column :xusers, :pg_comune, :string
  end

  def self.down
    remove_column :xusers, :pg_comune
  end
end
