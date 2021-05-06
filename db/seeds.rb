require 'faker'

User.destroy_all
City.destroy_all
Gossiip.destroy_all
Tag.destroy_all

10.times do
    city = City.create!(
       name: Faker::Address.city ,
       zip_code: Faker::Address.zip
    )
end

10.times do
   user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 8),
    email: Faker::Internet.email,
    age: Faker::Number.within(range: 15..50),
    city_id: Faker::Number.within(range: 1..10)
   )
end

10.times do
   tag = Tag.create!(
      title: Faker::Book.genre
   )
end
20.times do
   gossiip = Gossiip.create!(
      title: Faker::Movie.title,
      content: Faker::Lorem.sentence(word_count: 5),
      user_id: Faker::Number.within(range: 1..10)
      
   )
end
20.times do
   gossip_tag = GossipTag.create!(
      gossiip_id: Faker::Number.between(from: 1, to: 20), tag_id: Faker::Number.within(range: 1..10)
   )
end

5.times do
   private_message = PrivateMessage.create!(
      recipient: User.find(Random.rand(1..10)),
      sender: User.find(Random.rand(1..10)),
      content: Faker::Lorem.sentence(word_count: 5)
   )

end



