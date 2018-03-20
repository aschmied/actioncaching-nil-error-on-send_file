# README

This app demonstrates an [ActionCaching crash](https://github.com/rails/actionpack-action_caching/issues/57) attempting to use `caches_action` on an action that sends a file using `send_file`. To reproduce:

1. Clone this repo
1. `bundle install`
1. `ruby bin\rails server`
1. Navigate to "http://localhost:3000/files.zip"
