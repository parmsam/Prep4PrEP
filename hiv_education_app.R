library(shiny)
library(bslib)
library(vembedr)

light <- bs_theme(version = 4, bootswatch = "minty")

ui <- fluidPage(
  theme = light,
  titlePanel("Learn more about PrEP"),
  h3("Sources"),
  sidebarLayout(
    sidebarPanel(
      p(tags$a(href="https://www.greaterthan.org/", "Greater Than AIDS"),
      "is a leading public information response from KFF (Kaiser Family Foundation) 
      to the U.S. domestic HIV/AIDS epidemic with a focus on areas and people most affected. 
      Video content from  Greater Than AIDS Youtube Channel.")
    ),
    mainPanel(
      actionButton("button1", "What is PReP?"),
      br(),br(),
      actionButton("button2", "How does PReP work?"),
      br(),br(),
      actionButton("button5", "Where can I get PrEP?"),
      br(),br(),
      actionButton("button3", "How do I get PReP?"),
      br(),br(),
      actionButton("button6", "How effective is PrEP?"),
      br(),br(),
      actionButton("button8", "Does PrEP have side effects?"),
      br(),br(),
      actionButton("button7", "I use condoms. Do I need PrEP?"),
      br(),br(),
      actionButton("button4", "PrEP vs PEP?")
    )
  )
)

server <- function(input, output, session) {
  textFill <- reactiveValues(data="9CyW09S5Le8")
  
  observeEvent(input$button1, {
    textFill$data <- ("9CyW09S5Le8")
    
    showModal(modalDialog(
      title = "What is PReP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
    
  })
  observeEvent(input$button2, {
    textFill$data <- ("uPhHVaz0srI")
    
    showModal(modalDialog(
      title = "How does PReP work?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
    
  })
  observeEvent(input$button3, {
    textFill$data <- ("pI5plRKTRBE") 
    
    showModal(modalDialog(
      title = "How Do I Get PrEP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
  })  
  observeEvent(input$button4, {
    textFill$data <- ("vAoc4t9e1KQ")
    
    showModal(modalDialog(
      title = "PrEP vs PEP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
    
  })  
  observeEvent(input$button5, {
    textFill$data <- ("Cp_g3PhMqSM") 
    
    showModal(modalDialog(
      title = "Where can I get PrEP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
  })
  observeEvent(input$button6, {
    textFill$data <- ("nu889KS_qGM")
    
    showModal(modalDialog(
      title = "How effective is PrEP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
  })
  observeEvent(input$button7, {
    textFill$data <- ("IHAvAMOzJ3U")
    
    showModal(modalDialog(
      title = "I use condoms. Do I need PrEP?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
  })  
  observeEvent(input$button8, {
    textFill$data <- ("kei_WhJ1aAg")
    
    showModal(modalDialog(
      title = "Does PrEP have side effects?",
      footer = modalButton("Close"),
      embed_url(paste0("https://www.youtube.com/watch?v=",textFill$data) ) %>%
        use_rounded() %>%
        use_align("left") %>%
        use_bs_responsive()
    ))
  })
  
}

shinyApp(ui, server)
