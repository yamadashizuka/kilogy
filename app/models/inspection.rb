class Inspection < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :status
  belongs_to :worker
  belongs_to :result
  has_many :kiroku
end
