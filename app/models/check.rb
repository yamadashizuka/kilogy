class Check < ActiveRecord::Base
  belongs_to :weather
  belongs_to :kiroku 
end
