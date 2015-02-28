class Kiroku < ActiveRecord::Base
  belongs_to :worker
  belongs_to :inspection
  has_one :check
  has_one :measurement
  has_one :note
end
