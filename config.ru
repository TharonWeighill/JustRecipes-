require "./config/environment"
use Rack::MethodOverride
use ApplicationController
use SessionsController
use Users_Controller
use Recipes_Controller





run ApplicationController