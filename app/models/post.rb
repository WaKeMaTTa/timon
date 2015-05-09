class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :title, :description, :category_id, presence: true
  validates :category_id, inclusion: { in: Category.ids }
end
