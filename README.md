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

Demo App: heroku

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


## Contributing

1. Fork it ( https://github.com/[my-github-username]/framework7rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
