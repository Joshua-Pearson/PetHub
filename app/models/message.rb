class Message < ActiveRecord::Base
  belongs_to :animal
  belongs_to :user

  validates :title, presence: true, length: {minimum: 2, maximum: 40}
  validates :description, presence: true, length: {minimum: 2, maximum: 1000}

  def self.my_random
    if (c = count) != 0
      first(:offset =>rand(c))
    end
  end
end