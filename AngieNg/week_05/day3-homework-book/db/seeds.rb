# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Book.create(:title => "The Best Goodbye", :desc => "Love is a journey ~ Rosemary Beach is the destination... Ten years working for a mysterious crime boss and River 'Captain' Kipling is ready to leave his past behind him and move on. The only thing standing in the way is his commitment to launch a new restaurant in the resort town of Rosemary Beach. With his sister, Blaire, nearby, Captain delays his dream of running a bar on the waterfront a little longer, but the unwanted flirty attentions of his head waitress, Elle, has him itching to get out - until he notices Rose Henderson, the new waitress at the restaurant. All Captain knows about the pretty redhead with the cute glasses is that she's a hardworking single mum from Oklahoma.But there's something very familiar about her eyes and her laugh...something strange about the way she looks at Captain...could she be a welcome blast from the past?", :publ_date => '2015/12/1', :publisher => 'Simon & Schuster Ltd ', :pages => 256, :image => 'http://www.booktopia.com.au/http_coversbooktopiacomau/big/9781471144707/the-best-goodbye.jpg')

Author.destroy_all
Author.create(:name => 'Abigail Potts', :pen_name =>'Abbi Glines', :genre =>'New-adult fiction', :period => '2012',  :nationality => 'United State', :dob => '1977/06/04', :image => 'http://d.gr-assets.com/authors/1416598790p5/4872191.jpg')