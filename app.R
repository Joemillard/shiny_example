### IoZ Shiny app example ### 01/10/18

# if you haven't already, before going any further you'll want to install the shiny package - run the install packages code hashed out below
# install.packages("shiny")
library(shiny)

# each Shiny app includes three key components: the ui, server, and ShinyApp function
# the ui (user interface) describes how the app will look to the user - it's analagous to front end website development in html and css
# the server function is the engine of the app - it describes what the app does, and it should react to inputs (buttons, text input etc) on the front end
# the ShinyApp function just links the two together

# first off, try running the app without changing anything - what happens? (select "Run App" in the corner of the script window)
# the app should open in a browser at a local host URL, but it'll be blank
# here we're running the app locally - remember the distinction between local and online for web development?

# let's try adding a couple of things to build a simple app
# remember the stuff we see goes in the front end, and the engine goes in the server

# this is the ui (front end)
ui <- fluidPage()



# this is the server (back end)
server <- function(input, output) {}

# this is the ShinyApp function which links the front and back end
shinyApp(ui = ui, server = server)