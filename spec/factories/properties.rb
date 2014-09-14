# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    title "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    postal_code "MyString"
    country "MyString"
    lat 1.5
    long 1.5
    user_id 1
    num_beds 1
    max_guests 1
    price "9.99"
    min_stay 1
  end
end
