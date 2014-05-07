class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :messages
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: {minimum: 2, maximum: 40}
  validates :species, presence: true, length: {minimum: 2, maximum: 40}
  validates :breed, presence: true, length: {minimum: 2, maximum: 40}
  validates :age, presence: true, length: {minimum: 1, maximum: 20}

  # def self.animals_today(current_user)
  #   current_user.animals.where('created_at < ?', Date.today )
  # end

  def self.animals
    @animals = Animal.all
  end

  def self.yesterday
    where('created_at BETWEEN ? AND ?', Time.now - 48.hours, Time.now - 24.hours)
  end

  def self.animals_this_past_week
  end

  def self.today
    where('created_at BETWEEN ? AND ?', Time.now - 24.hours, Time.now)
  end

  def self.this_week
    where(created_at: 7.days.ago..Time.now - 48.hours)
  end
end
