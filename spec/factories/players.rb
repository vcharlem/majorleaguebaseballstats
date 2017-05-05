# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    surname "MyString"
    given_name "MyString"
    position "MyString"
    at_bat 1
    runs 1
    hits 1
    rbi 1
    steals 1
    errors 1
    walks 1
  end
end
