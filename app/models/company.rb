class Company < ActiveRecord::Base
  def self.alphabetically
    order('name asc')
  end

  def small?
    staff < 15
  end

  def medium?
    staff >= 15 || staff <= 50
  end

  def large?
    staff > 50
  end
end
