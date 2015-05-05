# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

incomplete_list = List.create(title: "Incomplete List", type:"incomplete")
complete_list = List.create(title: "Complete List", type:"complete")

incomplete_list.items << Item.create(title: "Some Item0")
incomplete_list.items << Item.create(title: "Some Item1")
incomplete_list.items << Item.create(title: "Some Item2")
incomplete_list.items << Item.create(title: "Some Item3")

complete_list.items << Item.create(title: "Complete Item0", status: "complete")
