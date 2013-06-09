class Subject < ActiveRecord::Base
  attr_accessible :name, :tex
  has_many :questions
end
