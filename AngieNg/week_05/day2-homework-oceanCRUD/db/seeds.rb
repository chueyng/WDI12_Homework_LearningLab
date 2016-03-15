# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ocean.destroy_all

Ocean.create :name => 'Pacific Ocean', :location => 'Separates Asia and Oceania from the Americas', :area => 168723000 , :avg_depth => 3970, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Pacific_elevation.jpg/440px-Pacific_elevation.jpg'
Ocean.create :name => 'Atlantic Ocean', :location => 'Separates the Americas from Eurasia and Africa', :area => 85133000, :avg_depth => 3646, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Atlantic_bathymetry.jpg/440px-Atlantic_bathymetry.jpg'
Ocean.create :name => 'Indian Ocean', :location => 'Washes upon southern Asia and separates Africa and Australia', :area => 70560000, :avg_depth => 3741, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Indian_Ocean_bathymetry_srtm.png/440px-Indian_Ocean_bathymetry_srtm.png'