# # Hints
#
# Remember that one degree fahrenheit is 5/9 of one degree celsius, and that the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.
#
# In integer math, there **are no fractions**. So if you are using integer literals, you will be using integer math, which means, for example...
#
#    1 / 2 => 0
#
# In floating point math, there **are** fractions. So...
#
#    1.0 / 2.0 => 0.5
#

def ftoc(farenheit)
  temp_in_c = (farenheit - 32)*(5.0/9.0)
  temp_in_c % 1 > 0 ? temp_in_c.round(1) : temp_in_c.round(0)
end

def ctof(celsius)
  temp_in_f = (celsius)*(9.0/5.0) + 32
  temp_in_f % 1 > 0 ? temp_in_f.round(1) : temp_in_f.round(0)
end

