# In the Sleep language a block of code associated with an identifier is processed by an
# sleep.interfaces.Environment bridge. Sleep implements the sub keyword with these.
# To declare a subroutine you use:

sub identifier { commands; }

# The environment bridge associated with the keyword sub creates a new closure and saves
# it into the script environment as a function named &identifier.