class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :messages
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: {minimum: 2, maximum: 40}
  validates :species, presence: true, length: {minimum: 2, maximum: 40}
  validates :breed, presence: true, length: {minimum: 2, maximum: 40}
  validates :age, presence: true, length: {minimum: 1, maximum: 20}

  def self.yesterday
    where('created_at BETWEEN ? AND ?', Date.yesterday.beginning_of_day, Time.zone.now.beginning_of_day).order('created_at desc')
  end

  def self.today
    where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def self.this_week
    where('created_at BETWEEN ? AND ?', 7.days.ago, 2.days.ago)
  end
  
  def self.my_order
    order('created_at desc')
  end
end
