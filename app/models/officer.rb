class Officer < ActiveRecord::Base

  enum office_name: [:president, :vice_president, :treasurer, :corresponding_secretary, :recording_secretary, :board_member, :web_developer]

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end