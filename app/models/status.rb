class Status < ActiveRecord::Base
  def self.of_unallocated;   1 end #
  def self.of_ready;         2 end #
  def self.of_doing;         3 end #
  def self.of_done;          4 end #
end
