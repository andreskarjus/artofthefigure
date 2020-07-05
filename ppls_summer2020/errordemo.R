









# Common errors you'll face when learning R 
# and how to figure them out
# (or googling like all programmers do)


# Note: it's ok if you don't quite "get" code yet!






# Commas and brackets
 
# The menacing + | 

sum(1,2)

# Just press ESC in the console and start over!
  




# Typical syntax errors - too many of something
# Error: unexpected ')' in "..."
# Error in ... : argument ... is empty

sum(1:10))
sum(1, 2, )
sum(1, , 2)






# When things are not found

mean(y)  # Error in ... : object '...' not found
sample(x, 1, prb=c(0,1)) # Error in ... unused argument
meann(x) # Error in ... : could not find function "..."


# Error in library(...) : there is no package called ‘...’
ggplot() + aes(x) + geom_histogram()
library(ggplottt)


# (Solutions)
# Assign the object, e.g. x = 1:10
# Check the help file for list of arguments
# Make sure everything is spelled correctly 
# Or the package is loaded; library(ggplot2)
# ...and installed; install.packages("ggplot2")
# Take code apart if needed

  



# Googling for errors



library(ggplot2)      # load the package
d = data.frame(x=runif(10), y=runif(10)) # some data

ggplot(d, aes(x=x, y=y) ) +
  geom_point(size=5)


ggplot(d, aes(x=x, y=y, color=y) ) +
  geom_point(size=5) +
  scale_color_brewer()
# "Error: Continuous value supplied to discrete scale"
# Use quotes "Error... "
# Add the package and/or function name when googling!



# But only include the generic part of the error
# not things specific to your data

d[, "column"]
# Error in `[.data.frame`(d, , "column") : undefined columns selected
# Google: "Error in `[.data.frame"  "undefined columns selected"




# Another one bites the +

ggplot(d, aes(x=x, y=y)) +
  geom_point() +
  ylab("Axis title here") 
  
  
ggplot(d, aes(x=x, y=y)) +
  geom_point() +
  NULL



# ggplot2 non-errors
# All of these commands run without errors,
# but none of them does what you wanted;
# take your code apart and see where it went wrong!

ggplot(d, aes(x=y, y=x, geom_point() ) ) 

ggplot(d, aes(x=y, y=x, color="blue") ) +
  geom_point(size=4)

ggplot(d, aes(x=y, y=x, color=x) ) +
  geom_point() +
  scale_color_viridis_c()








# Thanks for watching!
# Remember:
#  take it easy
#  take your code apart
#  you're not the first one to get this error















    