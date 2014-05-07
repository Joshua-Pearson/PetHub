class Message < ActiveRecord::Base
  belongs_to :animal
  # belongs_to :user, through: :animal
  has_many :comments

  validates :title, presence: true, length: {minimum: 2, maximum: 40}
  validates :description, presence: true, length: {minimum: 2, maximum: 1000}


  def self.messages_today
    Message.where(:created_at => Date.today, :order => 'updated_at DESC')
  end

  def self.messages_this_week
    Message.where(:created_at => Date.today, :order => 'updated_at DESC')
  end

end