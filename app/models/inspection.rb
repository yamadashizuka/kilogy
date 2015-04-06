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
    Inspection.select("equipment_id, max(targetyearmonth) ")
              .group("equipment_id")
              .having("max(targetyearmonth) < '#{limit_date.strftime('%Y%m')}'")
              .pluck(:equipment_id)
  end

  # Inspection のステータス変更
  def start_inspection
    self.status_id = Status.of_doing;
  end

  # Inspection の結果変更
  def judging(kiroku)
    if(kiroku.check.tone_id!=4)
      self.result_id = Result.of_ok;
    else
      self.result_id = Result.of_ng;
    end
  end

end
