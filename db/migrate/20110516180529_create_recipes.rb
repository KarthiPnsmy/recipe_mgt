class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.integer :user_id
      t.string :user_name
      t.string :name
      t.boolean :is_veg
      t.string :category
      t.string :sub_category
      t.string :image
      t.string :video
      t.string :rating
      t.string :tag     
      
      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
