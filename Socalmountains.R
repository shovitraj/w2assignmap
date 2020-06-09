library(leaflet)
peaks <- c("Mt.Whitney", "Mt. San Gorgonio", "Mt. San Jacianto", "San Bernardino Peak", "Mt. San Antonio (aka Baldy)")
elevation <- c(14505, 11503, 10833, 10649, 10069)
pe <- paste(peaks,",", elevation, "feet")

socalLongLat <- data.frame(
        lat = c(36.5784973, 34.0995742, 33.8144612, 34.1244534, 34.2646853),
        lng = c(-118.3097696, -116.8334641, -116.696693, -116.9119811,  -117.722961 ))




leaflet(data=socalLongLat) %>%
        addTiles() %>%
        addMarkers(popup=pe)


library(leaflet)
hiked_mountains <- leaflet() %>%
        addTiles()%>%   
        addMarkers(lat=36.5784973, lng=-118.3097696, 
                   popup="Mt. Whitney")%>%
        addMarkers(lat=34.0995742,lng=-116.8334641, 
                   popup="Mt. San Gorgonio") %>%
        addMarkers(lat=33.8144612,lng=-116,696,693, 
                   popup="Mt. San Jacianto") %>%
        addMarkers(lat=34.1244534,lng=-116.9119811, 
                   popup="San Bernardino Peak") %>%
        addMarkers(lat=34.2646853,lng=-117.722961, 
                   popup="Mt. San Antonio (aka Mt. Baldy") 

hiked_mountains
