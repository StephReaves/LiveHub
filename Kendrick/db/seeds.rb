# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
5.times do
User.create(username: Faker::Name.name, password: "123", first_name: "Steph", last_name: "Reaves", email_address: "me@me.com", bio: "enjoys long walks on beaches", soundcloud_profile: "soundcloud.com", artist: true )
end

5.times do
Review.create(body: Faker::Lorem.sentence, artist: User.all.sample)
end
