require "./config/environment"
use Rack::MethodOverride
use ApplicationController
use Users_Controller
use SessionsController
use Recipes_Controller





run ApplicationController