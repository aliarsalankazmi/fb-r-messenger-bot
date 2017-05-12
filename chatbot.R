library(plumber)
library(httr)
library(data.table)
library(RCurl)


#* @get /
myFunc <- function(hub.mode, hub.challenge, hub.verify_token){
if(hub.verify_token == "RRocker"){
	finalVal <- c(hub.challenge, "OK")
	return(hub.challenge)
 } else{
return(paste("Verification Token mismatch", 403))
 }
}

