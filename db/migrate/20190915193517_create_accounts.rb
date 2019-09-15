class CreateAccounts < ActiveRecord::Migration[6.0]
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.string :domain
      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
