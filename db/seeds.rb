# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
requests = Request.create([
    {title: "Monthlies-Taste", description: "Monthly taste samples for Winemakers", complete: false, due_date: Date.new(2018, 3, 17)},
    {title: "Monthlies-Lab", description: "Monthly lab samples", complete: false, due_date: Date.new(2018, 3, 17},
    {title: "VA checks", description: "Re-check VAs on 1081 and 1092", complete: false, due_date: Date.new(2018, 3, 18)},
    {title: "V17 Trackers", description: "Test all V17 trackers for RS and VA", complete: false, due_date: Date.new(2018, 3, 19)},
    {title: "Cold checks", description: "Test cold stability for 1201 and 1202", complete: false, due_date: Date.new(2018, 3, 20)},
])