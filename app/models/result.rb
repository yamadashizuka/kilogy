class Result < ActiveRecord::Base
  def self.of_ok;   1 end #
  def self.of_ng;   2 end #
  def self.of_unknown;   3 end #
  def self.of_preinitiation;   4 end #
end
