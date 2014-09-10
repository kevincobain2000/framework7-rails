# WIP

# Framework7rails

Gem for Framework7 which is a Full Featured HTML Framework For Building iOS Apps
See http://www.idangero.us/framework7/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'framework7rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install framework7rails

## Integrating framework7rails with rails

Demo App: http://framework7rails-demo.herokuapp.com/

GemFile

```ruby
gem 'framework7rails'
```

application.js

```
//= require framework7
```

application.css

```
*= require framework7
```

app/assets/javascripts/myapp.js

```
$(document).ready(function() {
    var $$ = Dom7;
    var myApp = new Framework7();   
    var myApp = new Framework7({
        pushState: true,
        swipePanel: 'left',
        // ... other parameters
    });
});
```


application.html.erb

```
<!DOCTYPE html>
<html>
<head>

  <title>Framework7railsDemo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/framework7rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
