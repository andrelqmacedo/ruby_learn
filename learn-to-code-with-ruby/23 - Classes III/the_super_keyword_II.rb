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

  def drive(speed)
    "Vrum, vrum at #{speed} km/h."
  end
end

class Firetruck < Car
  def drive(speed)
    super + " Beep! Beep at #{speed} km/h."             # The 'super' without parentheses passed in the 'speed' argument of 60 to the
  end                                                   # drive method in the Car class.
end

ft = Firetruck.new
puts ft.drive(60)
