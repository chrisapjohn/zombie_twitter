class AddStrengthToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :strength, :string
  end
end
