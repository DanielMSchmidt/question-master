class Question < ActiveRecord::Base
  attr_accessible :content, :count, :subject_id
  belongs_to :subject
end
