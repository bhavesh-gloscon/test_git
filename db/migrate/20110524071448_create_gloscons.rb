class CreateGloscons < ActiveRecord::Migration
  def self.up
    create_table :gloscons do |t|
      t.string :empname
      t.string :lastname
      t.string :desig

      t.timestamps
    end
  end

  def self.down
    drop_table :gloscons
  end
end
