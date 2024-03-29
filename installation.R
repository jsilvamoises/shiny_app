library(shiny)

options(shiny.host = '0.0.0.0')
options(shiny.port = 81)
runApp(appDir = getwd(), port = getOption("shiny.port"),
       launch.browser = getOption("shiny.launch.browser", interactive()),
       host = getOption("shiny.host", "127.0.0.1"), workerId = "",
       quiet = FALSE, display.mode = c("auto", "normal", "showcase"))


