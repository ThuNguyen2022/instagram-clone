# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 3.1.2

* Rails version: 7.x

* Option 1: rails new my_all -j esbuild --css bootstrap

* Option 2: 

* Step 1:
  `bundle add cssbundling-rails`
  `./bin/rails css:install:bootstrap`
* Nav: https://getbootstrap.com/docs/5.2/components/navbar/

* Step 2: 
  `bundle add jsbundling-rails`
  `./bin/rails javascript:install:esbuild`

* Step 3: In application.js change import "controllers" to import "./controllers"

* Because we have some code left over from import maps, which conflicts with how the jsbundling-rails gem works.

* Step 4:
  `yarn add @hotwired/turbo-rails`
  `yarn add @hotwired/stimulus`

* In app/javascript/controllers/index.js(remove content) change `import { application } from "controllers/application"` to `import { application } from "./application";`

* Step 5: In application.html.erb remove ` <%= javascript_importmap_tags %>`

* Step 6: app/assets/config/manifest.js remove 
  `//= link_tree ../../javascript .js`
  `//= link_tree ../../../vendor/javascript .js`

* Step 8: run `./bin/dev`
# bootstrap_rails
