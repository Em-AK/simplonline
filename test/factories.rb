
FactoryGirl.define do
  factory :essai do
    exercice
  end

  factory :exercice do
  end

  factory :user do
    provider "browser_id"
    uid "12345"
  end
end

