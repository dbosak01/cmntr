
library(shiny)
library(miniUI)


bannerDialog <- function() {
  ui <- miniPage(
    miniContentPanel(
      textInput("content", "Desired Text:"),
      HTML("<button id = 'okay'
           type ='button'
           class = 'btn-overload btn btn-default action-button shiny-bound-input'>
           Okay</button>"),

      HTML("<button id = 'cancel'
           type = 'button'
           class = 'btn-overload btn btn-default action-button shiny-bound-input'>
           Cancel</button>")
    )) # End UI
  server <- function(input, output, session) {
    observeEvent(input$okay, ignoreNULL = TRUE, ignoreInit = TRUE, {
      textInsert <- input$content
      comment <- cmnt_banner(textInsert)
      rstudioapi::insertText("\n")
      for(i in 1:length(comment)) {
        rstudioapi::insertText(comment[i])
        rstudioapi::insertText("\n")
      }
      stopApp()
    })
  } # End Server
  viewer <- dialogViewer("Create Banner Comment", height = 50, width = 300)
  runGadget(ui, server, viewer = viewer)
}





headerPrint <- function() {
  rstudioapi::setCursorPosition(c(1,1))
  textInsert <- cmnt_header()
  rstudioapi::insertText(textInsert)
  rstudioapi::insertText("\n")
}



roxyPrint <- function() {
  textInsert <- cmnt_rox()
  rstudioapi::insertText(textInsert)
  rstudioapi::insertText("\n")
}





