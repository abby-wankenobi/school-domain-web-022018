class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    if roster[grade]
      roster[grade]
    end
  end

  def sort
    sorted_hash = {}
      roster.each { |grade, name| sorted_hash[grade] = name.sort}
      sorted_hash
  end

end
