class Equipment < ActiveRecord::Base
  belongs_to :type
  belongs_to :place
  belongs_to :division
end
