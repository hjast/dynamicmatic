# DynamicMatic

DynamicMatic is a tiny [Sinatra](http://sinatrarb.com) extension
that integrates Sinatra with [StaticMatic](http://staticmatic.rubyforge.org).
The idea is to allow most of your site to be static
while having a few dynamic pages that can use the StaticMatic layouts and partials.

## Setup

Your Sinatra and StaticMatic apps live side-by-side.
The StaticMatic `site` directory is used as the directory for Sinatra's public files,
and the `src` directory contains the source for the static pages
and the layouts that are shared between StaticMatic and Sinatra.
Otherwise the standard Sinatra directories are used.

If the Sinatra `:root` option is changed,
DynamicMatic will respect that and set the StaticMatic paths appropriately.

## How it Works

The static pages and stylesheets in the StaticMatic `src` directory
are compiled when the application is started and served statically.
Any dynamic Sinatra pages can make use of the StaticMatic layouts and helpers,
but are rendered dynamically on each request.

## Layouts

StaticMatic layouts are made available as normal Sinatra templates.
For example, if you have `src/layouts/application.haml` and `src/layouts/help.haml`,
`application.haml` will be used as the `:application` template,
and `help.haml` will be used as the `:help` template.
`application.haml` will *also* be used for the default layout for Sinatra pages.

## Helpers

All the StaticMatic helpers, including those for partial-rendering,
are available in Sinatra views.
The reverse is not true;
Sinatra helpers are generally not available for StaticMatic pages,
since they are rendered statically.

Sinatra helpers are, however, available for StaticMatic layouts
**but only when they're being used for dynamic views**.
It's not safe to rely on them being there,
although you can check for their existence with `defined?`
and call them if they're there.
