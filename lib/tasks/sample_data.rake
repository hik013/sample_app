namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_contracts
    make_microposts
    make_relationships
  end
end

def make_users
  admin = User.create!(name: "Example user",
                       email: "example@railstutorial.org",
                       password: "foobar",
                       password_confirmation: "foobar")
  admin.toggle!(:admin)
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_contracts
  users = User.all(limit: 6)
  5.times do
    name = "Foo Bar Contract"
    company = "Foobars"
    start_date = Date.new(2013, 1, 1)
    end_date = Date.new(2013, 12, 31)
    text = Faker::Lorem.sentence(5)
    users.each { |user| user.contracts.create!(name: name, company: company, start_date: start_date, end_date: end_date, text: text) }
  end
end
  
def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user = users.first
  followed_users = users[2..50]
  followers = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end
