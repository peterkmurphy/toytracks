FactoryGirl.define do
  factory :item do
    name "MyString"
    description "MyText"
    photo ""
    price "9.99"
    first_advertised_date "2018-01-21 05:27:29"
    is_advertisied false
    user nil
  end
end
