# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weight do
    user nil
    weight "9.99"
    memo "MyText"
  end
end
