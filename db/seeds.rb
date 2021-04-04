# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Card.delete_all
List.delete_all

wishlist = List.create({name: "Wishlist"})
applied = List.create({name: "Applied"})
interview = List.create({name: "Interview"})
offer = List.create({name: "Offer"})
rejected = List.create({name: "Rejected"})

Card.create([
    {name: "Sixoas Plus", list: wishlist},
    {name: "Spotify", list: wishlist},
    {name: "PagerDuty", list: interview},
    {name: "Netflix", list: wishlist},
    {name: "Facebook", list: wishlist},
    {name: "Google", list: rejected},
    {name: "Amazon", list: rejected},
])