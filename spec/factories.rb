FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end

  factory :contract do
    name "Foo Bar Contract"
    company "Foobars"
    start_date Date.new(2013, 1, 1)
    end_date Date.new(2013, 12, 31)
    articles [1, 2, 3]
    text "Lorem ipsum foo foo foobar baz bla bla bla"
    user
  end
end
