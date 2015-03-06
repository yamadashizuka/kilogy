module Common
  def dump
    @@h = {}
    self.attributes.each{ |key, val|
      @@h.store(self.class.to_s+"."+key,val)
    }
    STDOUT.puts(Rails.application.class.parent_name+":"+@@h.to_json)
  end
end
