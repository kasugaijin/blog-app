// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// import * as bootstrap from "bootstrap" 
// this line was stopping the 'delete' button from working

import Rails from "@rails/ujs";
Rails.start();