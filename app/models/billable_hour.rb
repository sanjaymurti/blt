class BillableHour < ActiveRecord::Base
  belongs_to :project


  def total_time
  	return self.end - self.start
  end

  def total_time_in_tenths
  	return (self.total_time/360).ceil
  end

  def starting_tenth
  	return ((self.start - Time.zone.now.midnight)/360).ceil
  end

end
