class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :start
      t.date :end
      t.integer :num_tenants
      t.integer :rent
      t.integer :security

      t.references :unit, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
