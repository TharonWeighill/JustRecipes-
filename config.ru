require "./config/environment"
use Rack::MethodOverride


use Comments_Controller
use Ingredients_Controller
use Recipes_Controller
use Users_Controller




run ApplicationController

