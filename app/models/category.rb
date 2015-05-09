class Category < ActiveRecord::Base
  KINDS = %w{blog community}

  has_many :posts, dependent: :destroy

  validates :title, :kind, presence: true
  validates :kind, inclusion: { in: KINDS }

  # Kinds methods
  KINDS.each do |kind|
    define_method "#{kind}?" do
      self.kind == kind
    end
  end
end
