require './app'
require './middlewares/cf_backend'

use ConnectFour::CFBackend

run ConnectFour::App
