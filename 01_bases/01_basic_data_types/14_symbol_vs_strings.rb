=begin

Symbols vs. Strings
To get a better idea of how symbols 
are stored in memory, give this a whirl 
in irb or a REPL. The object_id method 
returns an integer identifier for an object. 
(And remember: in Ruby, everything is an object!)

=end


"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true