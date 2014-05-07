class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :message

  validates :description, presence: true, length: {minimum: 2, maximum: 1000}
end
