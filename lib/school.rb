# code here!



class School
  attr_accessor :roster
  def initialize(roster)
    @roster = {}
  end


  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(number)
    self.roster[number]
  end

  def sort
    new_hash = {}
    self.roster.keys.sort.each do |key|
      new_hash[key] = self.roster[key].sort
    end
    new_hash
  end

end

