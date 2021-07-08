=begin
Lesson 17: Virtual Computer
(all lessons from Codecademy's Ruby curriculum)
=end

class Computer

  @@users = {}

  def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}"
  end

  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("justjack", "clownshoes")