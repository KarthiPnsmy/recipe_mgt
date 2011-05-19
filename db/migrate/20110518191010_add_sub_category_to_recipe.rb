class AddSubCategoryToRecipe < ActiveRecord::Migration
  def self.up
    add_column :recipes, :steps, :string
    add_column :recipes, :comments, :string
  end

  def self.down
    remove_column :recipes, :sub_category
  end
end
