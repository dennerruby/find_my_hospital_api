class Rating < ApplicationRecord
  belongs_to :hospital
  validates_presence_of :value, :opinion, :user_name
end
