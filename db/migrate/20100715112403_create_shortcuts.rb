class CreateShortcuts < ActiveRecord::Migration
  def self.up
    create_table :shortcuts do |t|
      t.string :link
      t.string :alias
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :shortcuts
  end
end
