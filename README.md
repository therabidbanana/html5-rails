Html5 Rails
=========================

Rewrite of compass-html5-boilerplate that does just the haml bits, but in slim.

To use, add "html5-slim-rails" to you gem file, bundle install, then run:

     $ rails g html5:install

The boilerplate includes example code to fall back to local jquery, if you need it.
Make sure jquery is available if you use this option. (Included by jquery-rails,
but by default only if the asset pipeline is available.)
