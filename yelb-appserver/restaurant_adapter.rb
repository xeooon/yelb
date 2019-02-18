require_relative 'modules/restaurant'

def restaurant_adapter(event:, context:)
    $yelbdbhost = ENV['yelbdbhost']
    $yelbdbport = 5432
    restaurantname = event['pathParameters']['restaurant']
    restaurantcount = restaurantsupdate(restaurantname)
    # use the return JSON command when you want the API Gateway to manage the http communication  
    # return JSON.parse(restaurancount)
    { statusCode: 200, body: restaurantcount }
end