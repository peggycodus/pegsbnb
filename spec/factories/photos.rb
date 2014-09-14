# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    property_id 1
    file_name "MyString"
    content_type "MyString"
    file_size 1
    caption "MyString"
  end
end
