
library(shiny)

# Define UI for application that draws a histogram
#RSinny untuk single
animals<-c("dog", "cat", "mouse", "bird", "other", "i hate animals")
ui <- fluidPage(
  textInput("name","what's your name?"),
  passwordInput("password", "what's your password?"),
  textAreaInput("story", "Tell me about yourself", rows = 3),
  numericInput("num","Number one", value = 0, min = 0, max = 100),
  sliderInput("num2","Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10,20), min = 0, max = 100),
  dateInput("dob", "when werw you born?"),
  dateRangeInput("holiday", "when do you want to go on vacation next?"),
  selectInput("state", "What's your favorite state?", state.name),
  radioButtons("animal", "What's your favorite animal?", animals),
  checkboxGroupInput("animal", "What animal do you like?", animals),
  fileInput("upload", NULL)
)


# Run the application 
shinyApp(ui = ui, server = server)

