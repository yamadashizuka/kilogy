class MenuController < ApplicationController
  def show
    @infomsgs = Infomsg.where('effective_date < ?', DateTime.now.in_time_zone.to_s).order('effective_date DESC').limit(3)
  end
end
