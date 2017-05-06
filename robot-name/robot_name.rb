class Robot
  def self.used_names
    @used_names ||= {}
  end

  def name
    @name ||= generate_name
  end

  def reset
    @name = generate_name
  end

  private

  def generate_name
    if Robot.used_names.key?(random_name)
      @random_name = nil
      generate_name
    else
      Robot.used_names[random_name] = true
      random_name
    end
  end

  def random_letters
    array_of_letters[rand(25)] + array_of_letters[rand(25)]
  end

  def random_numbers
    rand(100..999).to_s
  end

  def random_name
    @random_name ||= random_letters + random_numbers
  end

  def array_of_letters
    @array_of_letters ||= ('A'..'Z').to_a
  end
end

module BookKeeping
  VERSION = 2
end
