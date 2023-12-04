# There are 3 ways to use the 'super' keyword:
#
# 1) Without parentheses, 'super' passes ALL subclass method's arguments
#       to the superclass's method.,
#
# 2) With parentheses and no argumet, 'super' passes no arguments
#       to the superclass´s methods
#
# 3) With parentheses and arguments, 'super' passes those arguments
#       to the superclass's methods.

class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive(speed)
    "Vrum, vrum at #{speed} km/h."
  end
end

class Firetruck < Car
  def drive(speed)
    super + " Beep! Beep at #{speed} km/h."             # The 'super' without parentheses passed in the speed argument of 60 to the
  end                                                   # drive method in the superclass Car
end

ft = Firetruck.new
puts ft.drive(60)


class Firetruck2 < Car
  def drive(speed)
    super() + " Beep! Beep at #{speed} km/h."           # With parentheses and no argument like so that's how we more explicitly tell Ruby
  end                                                   # 'do not pass anything up'.
end

ft2 = Firetruck2.new
puts ft.drive(60)

class Firetruck3 < Car

  def initialize(maker, sirens)
    super(maker)                                      # We only pass the 'maker' argument, and the sirens is saved in a attr, because with the
    @sirens = sirens                                  # parentheses and the argument, we pass only the argument to the superclass
  end

  def drive(speed)
    super() + " Beep! Beep at #{speed} km/h."
  end
end

ft3 = Firetruck3.new
puts ft.drive(60)
