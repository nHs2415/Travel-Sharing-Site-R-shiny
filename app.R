library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  titlePanel(h2(strong("Sri Lanka Travel Destination",style = "color : blue"),align = "center")),
  
  sidebarLayout(
    sidebarPanel(
      width = 3,style = "background-color:lightgray",
      h3(strong("BOOK UNIQUE EXPERIENCES")),br(),
      p("Explore top rated tours,  hotels and restaurants  around the world",align = "center"),
      div(
        img(src="image_1.png",height=200,width=200,align="center")
      )
    ),
    
    mainPanel(
      br(),
      h3("Welcome to our premier travel website. your gateway to unforgetable inbound tours to 
      Sri Lanka. With a team of dedicated professionals, we offer exceptional services and curated 
      tour packages, ensuring a service par excellence. Explore the splendor of Sri Lanka's diverse 
      landscapes and rich cultural heritage with us for an unforgetable experience.",align="justify"),style="background-color:#f0f8ff"
    ),
    
  ),
  
  tabsetPanel(
    tabPanel("Destination",
             navlistPanel(
               tabPanel("Ella",
                        div(img(src="image_2.jpg")),
                        h4("Ella is a small town in the Badulla District of Uva Province.Sri Lanka 
                          government by an Urban Council it is approximately 200 kilometers east of
                          Colombo and is situated at an elevation of 1.041 meters above sea level. The
                          area has a rich bio-diversity, dense with numerous varieties of flora and fauna.",align="justify")
                        ),
               tabPanel("Sigiriya",
                        div(img(src="image_3.jpg")),
                        h4("Sigiriya or Sinhagiri is an ancient rock fortress located in the nothern 
                           Matale District near the town of Dambulla in the Central Province. Sri Lanka, It
                           is a site of historical and archaelogical significance that is dominated by a massive
                           column of rock approximately 180 meters high.",align="justify")
                        )
             )
             ),
    tabPanel("Tours",
             h3("Choose the tour you want:"),
             selectInput("tours",label = "Round Tours:",
                         choices = list("All tour Packages","Classic Mini Sri Lanka Tour","Sri Lanka Cultural Tour"))
             ),
    wellPanel(
      h3("Contact Details"),
      fluidRow(
        column(width = 3,p(strong("Main Branch")),
               p("No.123,Main Street"),
               p("Kandy,Sri Lanka")
               ),
        column(width = 3,p(strong("Telephone")),
               p("+94 71 234 567"),
               p("+94 78 654 321")
               ),
        column(width = 3,p(strong("Email:")),
               p("sltours@gmail.com")
               ),
        column(width = 3,p(strong("Facebook:")),
               p(a("Facebook Page ",href="https://www.facebook.com"))
               )
      )
    )
  )
  
  
)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
