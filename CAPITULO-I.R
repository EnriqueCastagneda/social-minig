# load the package
library(twitteR) # Cargamos la libreria twitteR que nos permite extraer datos de la API.

# set the credentials
CONSUMER_SECRET <- "XXXXXXXX" # Copiamos la consumer secret de la app creada
CONSUMER_KEY <- "XXXXXX" # Copiamos la consumer secret de la app creada

# connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET)

# set twitter user
twitterUser <- getUser("jack")

# extract a few sample tweets from this user's timeline
tweets <- userTimeline(twitterUser, n = 10)

# display attributes and function of tweet object
tweets[[1]]$getClass()

# display favorite count
tweets[[1]]$favoriteCount


