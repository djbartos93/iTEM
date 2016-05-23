class Job < ActiveRecord::Base
  searchkick
  has_many :materials
end
