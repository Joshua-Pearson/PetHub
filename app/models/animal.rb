class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :messages
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: {minimum: 2, maximum: 40}
  validates :species, presence: true, length: {minimum: 2, maximum: 40}
  validates :breed, presence: true, length: {minimum: 2, maximum: 40}
  validates :age, presence: true, length: {minimum: 2, maximum: 40}



  def self.animals_today
    Animal.where('created_at < ?', Date.today )
  end

  def self.animals_yesterday
    Animal.where('created_at < ?', Date.yesterday  )
  end

  def self.animals_this_past_week
  end

  def self.owners_animals
    Animal.findby()
  end
end
