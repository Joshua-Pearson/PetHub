FactoryGirl.define do

  factory :animal do
    name "name"
    species "yellow lab"
    breed "dog"
    image "http://www.image.com"
    age "3"
  end

  factory :message do
    title "title"
    description "description"
  end

  sequence :email do |n|
    "email#{n}@josh.com"
  end

  sequence :oauth_token do |n|
    "3423543252#{n}"
  end


  sequence :uid do |n|
    "23232#{n}"
  end

  factory :user do
    name "name"
    email
    provider "facebook"
    uid
    oauth_token
    oauth_expires_at "2014-05-12"
  end
end