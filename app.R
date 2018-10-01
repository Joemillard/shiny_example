###### IoZ Shiny app example ###### 01/10/18

# if you haven't already, before going any further you'll want to install the shiny package - run the install packages code hashed out below
# install.packages("shiny")
library(shiny)

# each Shiny app includes three key components: the ui, server, and ShinyApp function
# the ui (user interface) describes how the app will look to the user - it's analagous to front end website development in html and css
# the server function is the engine of the app - it describes what the app does, and how it should react to inputs (buttons, text input etc) on the front end
# the ShinyApp function just links the two together

# first off, try running the app without changing anything - what happens? (select "Run App" in the corner of the script window)
# the app should open in a browser at a local host URL, but it'll be blank
# here we're running the app locally - remember the distinction between local and online for web development?

# let's try adding a couple of things to build a simple app
# remember the stuff we see goes in the front end, and the engine goes in the server

### add an action button ###

# first, try adding a button to the front end (ui)
# each input is placed inside fluidPage(), followed by a comma if you have multiple inputs - fluidPage() just describes the way in which inputs will react to each other when the page size changes
# the function for a button is actionButton()

# if you just add actionButton() to fluidPage, you'll see you get an error - the button wants an inputId
# the inputId is crucial, since it provides a unique identifier for the server - we'll see why this is important
# define the inputId as you would an argument in a function: actionButton(inputId = "button")

# add the inputId and you get another error - Shiny wants a label, or in other words a title for your button,
# add that, it'll look something like actionButton(inputId = "button", label = "Do it!")
# now run the app and a button should have appeared in the corner of the browser!

### add a text input

# now let's add an additional input for text
# the function we want is textInput(), and the syntax is exactly the same as action buttons
# your function should look something like textInput(inputId = "text", label = "Write text here)

### trigger a script in the server when you click the action button
# now let's write a short script in the server to print the inputted text when you interact with the button
# to do that we need an observeEvent function - the syntax is observeEvent(input$inputId, {any scripts to trigger})
# we also need an extra ui function to determine where the text will appear, using textOutput, defined in the same way
# and then we can render the text in the textOutput location using renderText
# it'll look something like output$text_out <- renderText(input$text)
# try that, and you should have an app that'll print the text inputted when you interact with the action button!

# more complicated Shiny apps are largely just combinations of inputs linked to the server through observe functions

# this is the ui (front end)
ui <- fluidPage(
    # actionButton(inputId = "button", label = "Do it!"),
    # textInput(inputId = "text", label = "Write text here"),
    # textOutput("text_out")
)

# this is the server (back end)
server <- function(input, output) {
   # observeEvent(input$button, {
     # output$text_out <- renderText(input$text)
  # })
}

# this is the ShinyApp function which links the front and back end
shinyApp(ui = ui, server = server)