# == Schema Information
#
# Table name: authors
#
#  id          :integer          not null, primary key
#  name        :text
#  pen_name    :text
#  nationality :text
#  genre       :text
#  period      :text
#  dob         :date
#  image       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Author < ActiveRecord::Base
  has_many :books
end
