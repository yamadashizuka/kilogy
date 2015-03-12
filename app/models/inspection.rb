class Inspection < ActiveRecord::Base
  belongs_to :equipment
  belongs_to :status
  belongs_to :worker
  belongs_to :result
  has_many :kiroku

  include Common
  after_commit :dump 


  #Inspection上に、1年前以前の情報しかないequipment_idの一覧を取得。
  def self.old_inspection_equipment_list
    limit_date = Time.now.prev_year
    Inspection.select("equipment_id, max(targetyearmonth)")
              .group(:equipment_id)
              .having("targetyearmonth < '#{limit_date.strftime('%Y%m')}'")
              .pluck(:equipment_id)
  end
end
