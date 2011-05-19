class CreateUserProfiles < ActiveRecord::Migration
  def self.up
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :profile_name
      t.string :address
      t.string :phone
      t.integer :mobile
      t.integer :gender
      
      t.timestamps
    end
  end

  def self.down
    drop_table :user_profiles
  end
end
