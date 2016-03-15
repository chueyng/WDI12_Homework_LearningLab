# == Schema Information
#
# Table name: oceans
#
#  id        :integer          primary key
#  name      :text
#  location  :text
#  area      :integer
#  avg_depth :integer
#  image     :text
#

class Ocean < ActiveRecord::Base
end
