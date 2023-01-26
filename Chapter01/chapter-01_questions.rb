# Questions
# 1. How are nil and false different from all other objects?
#  - nil represents the absence of information
#  - nil should be used wherever ther is no info available
#  - nil is the opposite of everything that is not true or false
#  - with nil and false you cannot use the ||= operator for memoization
 @cached_value ||= some_expression
#  - @cached_value is default nil and some_expression needs to return a value that is not nil or false


# 2. Are all standard arithmetic operations using two BigDecimal objects exact?
#  - BigDecimal is exact in most cases, and most useful when dealing with
#  a fixed precision, such as two digits after the decimal point, but is generally the slowest.
#  - BigDecimal is exact in values other than divisions involving repeating decimals and
#  exponentiation


# 3. Would it make sense for Ruby to combine symbols and strings?
#  - No because they have different uses in Ruby
#  - Ruby accepts either interchangabily but treats them differently behind the scenes
#  for the programmers convenience.

# 4. Which uses less memory for the same data-hash, or Set?
#  - Set is significantly slower than a data-hash but faster to look up 
#  than thorugh an array.

# 5. What are the only two core methods that return a new instance of Class?
#  - Struct and a regular class