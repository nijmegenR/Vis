---
title       : Visualizations
subtitle    : with R and Shiny
author      : Witek ten Hove, MBA
job         : Instructor HAN BKMER
framework   : CFA2016        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

--- .class #slide1 


<style>
#slide1 {
  background-color:#cc99ff;
}
</style>

<div style='float:left;width:50%;background-image: url("assets/img/wecan.jpg"); height: 650px; width: 500px;color:#FFF;'>
</div>
<div style='float:right;width:47%;'>
<h2>Learn By Doing</h2>
<ul>
  <li>Read data</li>
  <li>Restructure data</li>
  <li>Create bubble chart</li>
  <li>Build simple webapp</li>
</ul>

</div>

--- .class #slide2
## Google Style Bubble Chart

<style>
#slide2 {
  background-color:#ffb366;
}
</style>



<!-- BubbleChart generated in R 3.2.4 by googleVis 0.5.10 package -->
<!-- Sun May 22 07:07:34 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBubbleChartIDb2b49728fcb () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Aiden",
2,
4,
"Kans" 
],
[
 "Logan",
4,
5,
"Kans" 
],
[
 "Elijah",
3,
5,
"Kans" 
],
[
 "Daniel",
3,
3,
"Kans" 
],
[
 "Wyatt",
4,
2,
"Kans" 
],
[
 "Grayson",
2,
4,
"Kans" 
],
[
 "Harper",
1,
4,
"Kans" 
],
[
 "Amelia",
3,
3,
"Kans" 
],
[
 "Abigail",
3,
3,
"Kans" 
],
[
 "Evelyn",
4,
4,
"Kans" 
],
[
 "Scarlett",
4,
3,
"Kans" 
],
[
 "Aubrey",
4,
4,
"Kans" 
],
[
 "Addison",
3,
4,
"Kans" 
],
[
 "Liam",
5,
3,
"Bedreiging" 
],
[
 "Noah",
3,
4,
"Bedreiging" 
],
[
 "Ethan",
4,
4,
"Bedreiging" 
],
[
 "Mason",
2,
4,
"Bedreiging" 
],
[
 "Lucas",
3,
4,
"Bedreiging" 
],
[
 "Oliver",
4,
4,
"Bedreiging" 
],
[
 "James",
4,
4,
"Bedreiging" 
],
[
 "Benjamin",
3,
5,
"Bedreiging" 
],
[
 "Jacob",
4,
4,
"Bedreiging" 
],
[
 "Jackson",
4,
4,
"Bedreiging" 
],
[
 "Michael",
4,
4,
"Bedreiging" 
],
[
 "Jack",
4,
4,
"Bedreiging" 
],
[
 "Alexander",
2,
4,
"Bedreiging" 
],
[
 "William",
4,
4,
"Bedreiging" 
],
[
 "Carter",
4,
3,
"Bedreiging" 
],
[
 "Luke",
4,
4,
"Bedreiging" 
],
[
 "Henry",
4,
4,
"Bedreiging" 
],
[
 "Gabriel",
5,
5,
"Bedreiging" 
],
[
 "Owen",
2,
5,
"Bedreiging" 
],
[
 "Matthew",
4,
4,
"Bedreiging" 
],
[
 "Sebastian",
4,
4,
"Bedreiging" 
],
[
 "Ryan",
4,
4,
"Bedreiging" 
],
[
 "Emma",
2,
5,
"Bedreiging" 
],
[
 "Olivia",
3,
4,
"Bedreiging" 
],
[
 "Ava",
2,
2,
"Bedreiging" 
],
[
 "Sophia",
5,
4,
"Bedreiging" 
],
[
 "Isabella",
5,
4,
"Bedreiging" 
],
[
 "Mia",
3,
4,
"Bedreiging" 
],
[
 "Charlotte",
3,
4,
"Bedreiging" 
],
[
 "Emily",
4,
4,
"Bedreiging" 
],
[
 "Ella",
3,
4,
"Bedreiging" 
],
[
 "Madison",
2,
5,
"Bedreiging" 
],
[
 "Avery",
4,
4,
"Bedreiging" 
],
[
 "Lily",
3,
3,
"Bedreiging" 
],
[
 "Sofia",
4,
3,
"Bedreiging" 
],
[
 "Chloe",
4,
3,
"Bedreiging" 
],
[
 "Aria",
4,
3,
"Bedreiging" 
],
[
 "Riley",
4,
4,
"Bedreiging" 
],
[
 "Layla",
5,
5,
"Bedreiging" 
],
[
 "Hannah",
4,
5,
"Bedreiging" 
],
[
 "Ellie",
5,
5,
"Bedreiging" 
],
[
 "Elizabeth",
4,
4,
"Bedreiging" 
],
[
 "Zoe",
2,
2,
"Bedreiging" 
],
[
 "Victoria",
5,
4,
"Bedreiging" 
],
[
 "Mila",
4,
3,
"Bedreiging" 
] 
];
data.addColumn('string','Voor.en.achternaam');
data.addColumn('number','Waarschijnlijkheid');
data.addColumn('number','Gevolgen');
data.addColumn('string','Kans.of.bedreiging');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBubbleChartIDb2b49728fcb() {
var data = gvisDataBubbleChartIDb2b49728fcb();
var options = {};
options["title"] = "Wet- en Regelgeving wordt nog complexer en stringenter";
options["hAxis"] = {minValue:1, maxValue:5, title:"Waarschijnlijkheid"};
options["vAxis"] = {minValue:1, maxValue:5, title:"Gevolgen"};
options["width"] =    600;
options["height"] =    600;

    var chart = new google.visualization.BubbleChart(
    document.getElementById('BubbleChartIDb2b49728fcb')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBubbleChartIDb2b49728fcb);
})();
function displayChartBubbleChartIDb2b49728fcb() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBubbleChartIDb2b49728fcb"></script>
 
<!-- divChart -->
  
<div id="BubbleChartIDb2b49728fcb" 
  style="width: 600; height: 600;">
</div>

--- .class #slide3
## Step 1: Load Necessary Libraries

<style>
#slide3 {
  background-color:#99ccff;
}
</style>


```r
library(gsheet) # For reading data from Google Spreadsheets
library(googleVis) # For building interactive charts
```

--- .class #slide4
## Step 2: Read Data

<style>
#slide4 {
  background-color:#85e085;
}
</style>


```r
rawData <-
  gsheet2tbl(
    'https://docs.google.com/spreadsheets/d/...../edit?usp=sharing'
  )
```


```
## Observations: 58
## Variables: 6
## $ Tijdstempel        (chr) "18-4-2016 18:18:39", "20-4-2016 13:54:31",...
## $ Voor.en.achternaam (chr) "Liam", "Noah", "Ethan", "Mason", "Lucas", ...
## $ Waarschijnlijkheid (int) 5, 3, 4, 2, 3, 4, 2, 4, 4, 3, 3, 4, 4, 4, 4...
## $ Gevolgen           (int) 3, 4, 4, 4, 4, 4, 4, 5, 4, 5, 5, 4, 4, 4, 4...
## $ Kans.of.bedreiging (chr) "Bedreiging", "Bedreiging", "Bedreiging", "...
## $ Toelichting        (chr) "Banken hebben steeds meer toegang tot data...
```

--- .class #slide5
## Step 3: Restructure and Build

<style>
#slide5 {
  background-color:#ff99cc;
}
</style>


```r
# Change table into class data frame
rawData <- as.data.frame(rawData)

# Ordering of the coloring variable is necessary for logical color matching
newData <- rawData[order(rawData[,'Kans.of.bedreiging'], decreasing = TRUE),]

# Build the bubble chart
Bubble <- gvisBubbleChart(newData,
                          idvar="Voor.en.achternaam", 
                          xvar="Waarschijnlijkheid", yvar="Gevolgen",
                          colorvar="Kans.of.bedreiging",
                          options=list(
                           title="Wet- en Regelgeving wordt nog complexer 
                                  en stringenter",
                           hAxis='{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
                           vAxis='{minValue:1, maxValue:5, title:"Gevolgen"}',
                          width = 600,
                          height = 600))
```

--- .class #slide6
## Step 4: Plot The Chart

<style>
#slide6 {
  background-color:#6fdcdc;
}
</style>


```r
plot(Bubble)
```

<!-- BubbleChart generated in R 3.2.4 by googleVis 0.5.10 package -->
<!-- Sun May 22 07:07:35 2016 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataBubbleChartIDb2b22f76a59 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 "Aiden",
2,
4,
"Kans" 
],
[
 "Logan",
4,
5,
"Kans" 
],
[
 "Elijah",
3,
5,
"Kans" 
],
[
 "Daniel",
3,
3,
"Kans" 
],
[
 "Wyatt",
4,
2,
"Kans" 
],
[
 "Grayson",
2,
4,
"Kans" 
],
[
 "Harper",
1,
4,
"Kans" 
],
[
 "Amelia",
3,
3,
"Kans" 
],
[
 "Abigail",
3,
3,
"Kans" 
],
[
 "Evelyn",
4,
4,
"Kans" 
],
[
 "Scarlett",
4,
3,
"Kans" 
],
[
 "Aubrey",
4,
4,
"Kans" 
],
[
 "Addison",
3,
4,
"Kans" 
],
[
 "Liam",
5,
3,
"Bedreiging" 
],
[
 "Noah",
3,
4,
"Bedreiging" 
],
[
 "Ethan",
4,
4,
"Bedreiging" 
],
[
 "Mason",
2,
4,
"Bedreiging" 
],
[
 "Lucas",
3,
4,
"Bedreiging" 
],
[
 "Oliver",
4,
4,
"Bedreiging" 
],
[
 "James",
4,
4,
"Bedreiging" 
],
[
 "Benjamin",
3,
5,
"Bedreiging" 
],
[
 "Jacob",
4,
4,
"Bedreiging" 
],
[
 "Jackson",
4,
4,
"Bedreiging" 
],
[
 "Michael",
4,
4,
"Bedreiging" 
],
[
 "Jack",
4,
4,
"Bedreiging" 
],
[
 "Alexander",
2,
4,
"Bedreiging" 
],
[
 "William",
4,
4,
"Bedreiging" 
],
[
 "Carter",
4,
3,
"Bedreiging" 
],
[
 "Luke",
4,
4,
"Bedreiging" 
],
[
 "Henry",
4,
4,
"Bedreiging" 
],
[
 "Gabriel",
5,
5,
"Bedreiging" 
],
[
 "Owen",
2,
5,
"Bedreiging" 
],
[
 "Matthew",
4,
4,
"Bedreiging" 
],
[
 "Sebastian",
4,
4,
"Bedreiging" 
],
[
 "Ryan",
4,
4,
"Bedreiging" 
],
[
 "Emma",
2,
5,
"Bedreiging" 
],
[
 "Olivia",
3,
4,
"Bedreiging" 
],
[
 "Ava",
2,
2,
"Bedreiging" 
],
[
 "Sophia",
5,
4,
"Bedreiging" 
],
[
 "Isabella",
5,
4,
"Bedreiging" 
],
[
 "Mia",
3,
4,
"Bedreiging" 
],
[
 "Charlotte",
3,
4,
"Bedreiging" 
],
[
 "Emily",
4,
4,
"Bedreiging" 
],
[
 "Ella",
3,
4,
"Bedreiging" 
],
[
 "Madison",
2,
5,
"Bedreiging" 
],
[
 "Avery",
4,
4,
"Bedreiging" 
],
[
 "Lily",
3,
3,
"Bedreiging" 
],
[
 "Sofia",
4,
3,
"Bedreiging" 
],
[
 "Chloe",
4,
3,
"Bedreiging" 
],
[
 "Aria",
4,
3,
"Bedreiging" 
],
[
 "Riley",
4,
4,
"Bedreiging" 
],
[
 "Layla",
5,
5,
"Bedreiging" 
],
[
 "Hannah",
4,
5,
"Bedreiging" 
],
[
 "Ellie",
5,
5,
"Bedreiging" 
],
[
 "Elizabeth",
4,
4,
"Bedreiging" 
],
[
 "Zoe",
2,
2,
"Bedreiging" 
],
[
 "Victoria",
5,
4,
"Bedreiging" 
],
[
 "Mila",
4,
3,
"Bedreiging" 
] 
];
data.addColumn('string','Voor.en.achternaam');
data.addColumn('number','Waarschijnlijkheid');
data.addColumn('number','Gevolgen');
data.addColumn('string','Kans.of.bedreiging');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartBubbleChartIDb2b22f76a59() {
var data = gvisDataBubbleChartIDb2b22f76a59();
var options = {};
options["title"] = "Wet- en Regelgeving wordt nog complexer en stringenter";
options["hAxis"] = {minValue:1, maxValue:5, title:"Waarschijnlijkheid"};
options["vAxis"] = {minValue:1, maxValue:5, title:"Gevolgen"};
options["width"] =    600;
options["height"] =    600;

    var chart = new google.visualization.BubbleChart(
    document.getElementById('BubbleChartIDb2b22f76a59')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartBubbleChartIDb2b22f76a59);
})();
function displayChartBubbleChartIDb2b22f76a59() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartBubbleChartIDb2b22f76a59"></script>
 
<!-- divChart -->
  
<div id="BubbleChartIDb2b22f76a59" 
  style="width: 600; height: 600;">
</div>

--- .class #slide7
## Shiny App

<style>
#slide7 {
  background-color:#ffe066;
}
</style>

[Risk Map App](https://tenhove.shinyapps.io/Vis1/)

--- .class #slide8
## Step 1: Load Necessary Libraries and Run Data Script

<style>
#slide8 {
  background-color:#99ccff;
}
</style>


```r
library(shiny)
source("Data.R")
```


--- .class #slide9
## Step 2: Create User Interface

<style>
#slide9 {
  background-color:#79d2a6;
}
</style>


```r
ui <- shinyUI(fluidPage(
  titlePanel("Retail Banking Risk Mapping"),
 
  sidebarLayout(position = "left",

## Sidebar with checkboxes 
                sidebarPanel(checkboxGroupInput("checkGroup", 
                                                label = "Perceptie", 
                                                choices = list("Kans", 
                                                               "Bedreiging"),
                                                selected = c("Kans", "Bedreiging"))),
## Mainpanel with bubble chart
                mainPanel(h2("Risk Map"),
                          htmlOutput("maps"))
  )
))
```

--- .class #slide10
## Step 3.1: Define Server and Create Subsetted Data Frame

<style>
#slide10 {
  background-color:#ffbf80;
}
</style>


```r
server <- shinyServer(function(input, output) { ## Begin of server
  
## Subset the initial data frame by the values of the selected checkboxes
df <- reactive({
  newData[newData$Kans.of.bedreiging %in% input$checkGroup, c(2:5)]
  })
```

--- .class #slide11
## Step 3.2: Within Server Build Bubble Chart

<style>
#slide11 {
  background-color:#99b3ff;
}
</style>


```r
output$maps <-
    renderGvis({
      gvisBubbleChart(
        df(), idvar = "Voor.en.achternaam",
        xvar = "Waarschijnlijkheid", yvar = "Gevolgen",
        colorvar = "Kans.of.bedreiging",
        options = list(
          hAxis = '{minValue:1, maxValue:5, title:"Gevolgen"}',
          vAxis = '{minValue:1, maxValue:5, title:"Waarschijnlijkheid"}',
          width = 700,
          height = 700
        )
      )
    })
  }) ## End of server
```

--- .class #slide12
## Step 4: Run the App

<style>
#slide12 {
  background-color:#ff4da6;
}
</style>


```r
shinyApp(ui = ui, server = server)
```

--- .class #slide13
## A More Sophisticated Example

<style>
#slide13 {
  background-color:#99cc00;
}
</style>

[Sophisticated Risk Map App](https://tenhove.shinyapps.io/Survey/)
