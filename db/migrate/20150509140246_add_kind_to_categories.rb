class AddKindToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :kind, :string
  end
end
