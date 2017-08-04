library(plumber)
library(httr)
library(data.table)
library(RCurl)
library(jsonlite)


#* @serializer html
#* @get /
myFunc <- function(hub.mode, hub.challenge, hub.verify_token){
if(hub.verify_token == "RRocker"){
	return(hub.challenge)
 } else{
return(paste("Verification Token mismatch", 403))
 }
}
