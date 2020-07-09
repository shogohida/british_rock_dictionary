FactoryBot.define do
  factory :song, class: Song do
    association :artist
    association :album
    name { 'Some Might Say' }
    minutes { 5 }
  end
end
