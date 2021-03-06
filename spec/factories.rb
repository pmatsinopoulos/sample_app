# This will guess the User class
FactoryGirl.define do

    sequence(:email) {|n| "inga_#{n}@abc.de" }

    factory :user do
      first_name "John"
      last_name  "Doe"
      email { generate(:email) }
      password "12345678aA"
      admin false
    end

    # This will use the User class (Admin would have been guessed)
    factory :admin, class: User do
      first_name "Admin"
      last_name  "User"
      admin      true
    end

    sequence(:rating) {|n| "#{n}" }

    factory :comment do
      body "I like it."  
      rating { generate(:rating) }
      user 
      product
    end
    
  factory :product do
    name "T-Shirt"
    description "It is blue."
    image_url "board2.jpg"
    colour "blue"
  end

end
