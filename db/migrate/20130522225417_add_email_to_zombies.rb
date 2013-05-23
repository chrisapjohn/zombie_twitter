class AddEmailToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :email, :string
  end
end
