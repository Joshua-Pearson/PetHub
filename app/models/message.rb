class Message < ActiveRecord::Base
  belongs_to :animal
  has_many :comments
end
