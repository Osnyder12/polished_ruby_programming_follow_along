# 1. Does creating a custom class make sense if you need both information hiding and custom behavior?
  # Yes these are the 2 main scenarios where creating a custom class makes sense
  # The SymbolStack example used where the push time is included in the array is an example of this.
# 2. Which SOLID principle is almost impossible to implement in Ruby?
  # might be referring to open-closed principle which can mainly be ignored in Ruby
  # was written to address compiled software which ruby is not
  # ruby actively works to make sure classes arent closed for modification
  # you can close a Class to modification by using ClassName.freeze
# 3. Is it useful to create classes that the user will not use directly?
# 4. How often does it make sense to use custom data structures in Ruby?