# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    content ""
    count 1
    subject_id 1
  end
end
