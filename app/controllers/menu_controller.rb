class MenuController < ApplicationController
  def show
    @infomsgs = Infomsg.where('effective_date <= ?', Date.today.in_time_zone.to_s[0..9]).order('effective_date DESC').limit(3)
  end
end
