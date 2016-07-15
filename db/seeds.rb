# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


house1 = House.create('street_name' => 'Stevens St', "num_units" => "2", "purchase_price" => "200000", "current_price" => "350000", "user_id" => User.first.id);

house2 = House.create('street_name' => 'Howard St', "num_units" => "2", "purchase_price" => "180000", "current_price" => "250000", "user_id" => User.first.id);

house3 = House.create('street_name' => 'Woburn St', "num_units" => "3", "purchase_price" => "250000", "current_price" => "300000", "user_id" => User.first.id);

house4 = House.create('street_name' => 'Branch St', "num_units" => "6", "purchase_price" => "400000", "current_price" => "350000", "user_id" => User.first.id);

unit1 = Unit.create("unit_num" => "41", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house1.id);

unit2 = Unit.create("unit_num" => "43", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house1.id);

unit3 = Unit.create("unit_num" => "55", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);

unit4 = Unit.create("unit_num" => "56", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);

unit5 = Unit.create("unit_num" => "57", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);

unit6 = Unit.create("unit_num" => "58", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);

unit7 = Unit.create("unit_num" => "59", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);

unit8 = Unit.create("unit_num" => "60", "num_bedrooms" => "3", "num_bathrooms" => "1", "num_parking" => "1", "house_id" => house4.id);
