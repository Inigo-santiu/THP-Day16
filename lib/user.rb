require "pry"

class User
  attr_accessor :email, :age
  @@user_count = 0
  @@all_users = []

  def initialize(get_email, get_age)
    @email = get_email
    @age = get_age
    @@user_count = @@user_count + 1
    @@all_users << self
  end

  def self.count
    return @@user_count
  end

  def self.all # the method .all, when attached to 'self' returns and array.
    return @@all_users
  end

end
binding.pry
puts "end of line"
