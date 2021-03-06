import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application.css"
import "../css/tailwindcss.css"

Rails.start()
ActiveStorage.start()
require('jquery')
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// ...
//= require rails-ujs
//= require turbolinks
//= require swiper/swiper-bundle.js
//= require swiper.js
