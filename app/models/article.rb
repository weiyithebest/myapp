class Article < ApplicationRecord
  # include Visible
  
  has_many :comments, dependent: :destroy
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user

end

