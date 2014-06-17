library(shiny)

CircleArea <- function(radius){ 3.14*radius*radius}
CirclePer <- function(radius){ 6.28*radius}
TriangleArea <- function(vertical,base){base*vertical/2}
TrianglePer <- function(vertical,base){"you need to know the 3 edges, no possible to calculate it!"}
RectangleArea <- function(vertical,base){base*vertical}
RectanglePer <- function(vertical,base){2*(base+vertical)}


shinyServer(
  function(input,output){
    output$outArea2<-renderPrint(if (length(input$idBox2) == 0) {} else if (input$idBox2[1] %in% 1){CircleArea(input$idRadius2)} else if (input$idBox2[2] %in% 1){CircleArea(input$idRadius2)} else{})
    output$outPer2<-renderPrint(if (length(input$idBox2) == 0) {} else if (input$idBox2[1] %in% 2){CirclePer(input$idRadius2)} else if (input$idBox2[2] %in% 2){CirclePer(input$idRadius2)} else {})
    output$outArea3<-renderPrint(if (length(input$idBox3) == 0) {} else if (input$idBox3[1] %in% 1){TriangleArea(input$idVertical3,input$idBase3)} else if (input$idBox3[2] %in% 1){TriangleArea(input$idVertical3,input$idBase3)} else{})
    output$outPer3<-renderPrint(if (length(input$idBox3) == 0) {} else if (input$idBox3[1] %in% 2){TrianglePer(input$idVertical3,input$idBase3)} else if (input$idBox3[2] %in% 2){TrianglePer(input$idVertical3,input$idBase3)} else{})
    output$outArea4<-renderPrint(if (length(input$idBox4) == 0) {} else if (input$idBox4[1] %in% 1){RectangleArea(input$idVertical4,input$idBase4)} else if (input$idBox4[2] %in% 1){RectangleArea(input$idVertical4,input$idBase4)} else{})
    output$outPer4<-renderPrint(if (length(input$idBox4) == 0) {} else if (input$idBox4[1] %in% 2){RectanglePer(input$idVertical4,input$idBase4)} else if (input$idBox4[2] %in% 2){RectanglePer(input$idVertical4,input$idBase4)} else{})
  }
)