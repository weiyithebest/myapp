class Article < ApplicationRecord
  include Visible
  
  has_many :comments, dependent: :destroy
  # validates :status, inclusion: { in:['public', 'private', 'archived']}
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :user

end

