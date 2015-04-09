class Company < ActiveRecord::Base
  default_scope { order('name ASC') }

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
