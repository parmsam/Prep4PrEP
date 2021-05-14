# load libraries ----
library(shiny)
library(bslib)
library(vembedr)
library(htmltools)
library(flexdashboard)
# set theme ----
light <- bs_theme(version = 4, bootswatch = "litera", secondary = "#f3969a")

#set ui ----
ui <- fluidPage(
  theme = light,
  navbarPage("Prep4PrEP", id="inTabset",
  #first tab welcome page
  tabPanel("Welcome",
          div(h1("Prep4PrEP"),style="text-align:center;color:#f3969a"),
          br(),br(),
          div(h3("Welcome"),style="text-align:center;font-size:15px; color:#4582ec"),
          br(),
          div(
            actionButton("do1",tags$b( "Click here"), class='btn-primary'),
            style="text-align:center;"),
          br(),
          div(h6("PrEP Locator from NPIN and Emory University, 
                 Educational material from Great Than AIDS public information response."),
              align="center", style="text-align:center;margin-left: auto; margin-right: auto; max-width: 20rem;"),
          ),
  #second tab learn page
  tabPanel(title="Learn", value = "panel1",
    titlePanel("Learn about PrEP"),
    h3("Sources"),
    sidebarLayout(
      sidebarPanel(
        p(tags$a(href="https://www.greaterthan.org/", "Greater Than AIDS"),
        "is a leading public information response from KFF (Kaiser Family Foundation) 
        to the U.S. domestic HIV/AIDS epidemic with a focus on areas and people most affected. 
        Video content from  Greater Than AIDS Youtube Channel.")
      ),
      #setup main panel with action buttons 
      mainPanel(
        br(),
        actionButton("button1", "What is PReP?", class='btn-secondary'),
        br(),br(),
        actionButton("button2", "How does PReP work?", class='btn-secondary'),
        br(),br(),
        actionButton("button5", "Where can I get PrEP?", class='btn-secondary'),
        br(),br(),
        actionButton("button3", "How do I get PReP?", class='btn-secondary'),
        br(),br(),
        actionButton("button6", "How effective is PrEP?", class='btn-secondary'),
        br(),br(),
        actionButton("button8", "Does PrEP have side effects?", class='btn-secondary'),
        br(),br(),
        actionButton("button7", "I use condoms. Do I need PrEP?", class='btn-secondary'),
        br(),br(),
        actionButton("button4", "PrEP vs PEP?", class='btn-secondary'),
        br(),br(),
        div(
          actionButton("do2",tags$b( "Get PrEP"),class='btn-primary'),
          style="text-align:left;"),
        )
      )
    ),
  #third tab get page
  tabPanel("Get PrEP", value = "panel2",
           mainPanel(
           #will embed prep locator via iframe
           htmlOutput("frame")
           ))
  ))

server <- function(input, output, session) {
  textFill <- reactiveValues(data="9CyW09S5Le8")
  
  #setup prep locator iframe
  output$frame <- renderUI({
    my_iframe <- tags$iframe(src='https://preplocator.org/prep-widget/',
                             frameborder = "no",
                             scrolling="no",
                             position= "fixed",
                             style='width:100%; height:100vh')
  })
  
  #setup welcome page click here button
  observeEvent(input$do1, {
    updateTabsetPanel(session, "inTabset",
                      selected = "panel1")
  })
  
  observeEvent(input$do2, {
    updateTabsetPanel(session, "inTabset",
                      selected = "panel2")
  })
  
  #setup action buttons on learn page with modal pop-out videos
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
#run shiny app
shinyApp(ui, server)
