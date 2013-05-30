class CreateXusers < ActiveRecord::Migration
  def self.up
    create_table :xusers do |t|
      t.string :pg_ragione_sociale
      t.string :pg_partita_iva
      t.text :pg_indirizzo
      t.string :pg_cap
      t.string :pf_cf
      t.string :pf_luogo_di_nascita
      t.text :inst_indirizzo
      t.string :inst_cap
      t.string :inst_cpe_modello
      t.string :inst_cpe_username
      t.string :inst_cpe_password
      t.string :inst_cpe_mac
      t.text :gen_note
      t.references :user
      t.references :operator

      t.timestamps
    end
  end

  def self.down
    drop_table :xusers
  end
end
