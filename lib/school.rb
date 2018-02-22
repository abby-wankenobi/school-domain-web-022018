class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    roster[name].sort
  end

  def grade(grade)
    if roster[grade]
      roster[grade]
    end
  end

  # def sort
  #   sorted_hash = {}
  #     roster.each do |grade, name|
  #       sorted_hash[grade] = name.sort
  #     end
  #     sorted_hash
  # end

end
