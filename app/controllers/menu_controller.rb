class MenuController < ApplicationController
  def show
    @infomsgs = Infomsg.limit(3).order('effective_date DESC')
  end
end
