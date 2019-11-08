#install.packages("shinydashboard")
#install.packages('rsconnect')
library(shinydashboard)
library(shiny)
source("app_sidebar.R")
source("operacao_hoje.R")
source("varejo_anual.R")
source("varejo_mensal.R")
source("franquias_anual.R")
source("franquias_mensal.R")


options(shiny.port=80)
options(shiny.host="0.0.0.0")

# ======================[HEADER]============================

#drop_menu_messages <-dropdownMenuOutput('msgOutput')
#<- dropdownMenu(type = "messages",dropdownMenuOutput('msgOoutput')
             # messageItem(
             #   from = "Sales Dept",
             #   message = "Sales are steady this month."
             # ),
             # messageItem(
             #   from = "New User",
             #   message = "How do I register?",
             #   icon = icon("question"),
             #   time = "13:45"
             # ),
             # messageItem(
             #   from = "Support",
             #   message = "The new server is ready.",
             #   icon = icon("life-ring"),
             #   time = "2014-12-01"
             # )
             
             
#)

drop_menu_notifications <- dropdownMenu(type = "notifications",
             notificationItem(
               text = "5 new users today",
               icon("users")
             ),
             notificationItem(
               text = "12 items delivered",
               icon("truck"),
               status = "success"
             ),
             notificationItem(
               text = "Server load at 86%",
               icon = icon("exclamation-triangle"),
               status = "warning"
             )
)


drop_menu_tasks <- dropdownMenu(type = "tasks", badgeStatus = "success",
             taskItem(value = 90, color = "green",
                      "Documentation"
             ),
             taskItem(value = 17, color = "aqua",
                      "Project X"
             ),
             taskItem(value = 75, color = "yellow",
                      "Server deployment"
             ),
             taskItem(value = 80, color = "red",
                      "Overall project"
             )
)

header<- dashboardHeader(
  title = 'PARLA|BI',
  dropdownMenuOutput("messageMenu"),
  drop_menu_notifications,
  drop_menu_tasks
  
)
# ======================[SIDEBAR]===========================

# ======================[BODY]==============================
body <- dashboardBody(
  tabItems(
    dash_operacao_hoje,
    dash_varejo_anual,
    dash_varejo_mensal,
    dash_franquias_anual,
    dash_franquias_mensal
    
  )
  #fluidRow(box(plotOutput('histogram')))
  
)
#skins = {"blue","black", "purple", "green", "red", "yellow"}
#skin ["blue","black", "purple", "green", "red", "yellow"]
# ======================[DASHBOARD PAGE]====================
ui <- dashboardPage(skin = 'black', 
  header <- header,
  sidebar <-sidebar,
  body <- body
)

