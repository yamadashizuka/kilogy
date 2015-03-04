class Check < ActiveRecord::Base
  belongs_to :weather
  belongs_to :kiroku 
  belongs_to :exterior , :class_name => "Checkresult" , :foreign_key => "exterior"
  belongs_to :tone     , :class_name => "Checkresult" , :foreign_key => "tone"
  belongs_to :stain    , :class_name => "Checkresult" , :foreign_key => "stain"
end
