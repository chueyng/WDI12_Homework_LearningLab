# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :text
#  desc       :text
#  pages      :integer
#  publ_date  :text
#  publisher  :text
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Book < ActiveRecord::Base
  belongs_to :author
end
