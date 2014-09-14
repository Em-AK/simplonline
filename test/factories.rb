FactoryGirl.define do
  sequence :name do |n|
    "name_#{n}"
  end

  factory :essai do
    exercice
  end

  factory :exercice do
  end

  factory :user do
    password 'truc'
    password_confirmation 'truc'
    name { generate(:name) }
  end

  factory :qcm do
    lesson
    authors ['someone', 'someone else']
  end

  factory :question do
    qcm
  end

  factory :choice do
    question
  end

  factory :answer do
    question
    user
  end

  factory :lesson do
    title { generate(:name) }
    publish_at DateTime.new(2013,11,24,14,56)
  end

  factory :chapter do
    lesson
    title { generate(:name) }
    authors ['someone', 'someone else']
  end
end


