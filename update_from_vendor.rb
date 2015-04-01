#!/usr/bin/env ruby

if ARGV[0]
  VERSION_FRAMEWORK7 = ARGV[0]
else 
  VERSION_FRAMEWORK7 = "1.0.5"
end

puts "Updating Framework Version #{VERSION_FRAMEWORK7}"
puts "Downloading v#{VERSION_FRAMEWORK7} release framework7 release from https://github.com/nolimits4web/Framework7/archive/v#{VERSION_FRAMEWORK7}.tar.gz"
puts "\n\n\n"

system("wget https://github.com/nolimits4web/Framework7/archive/v#{VERSION_FRAMEWORK7}.tar.gz")

system("tar -zxf v#{VERSION_FRAMEWORK7}.tar.gz")

puts "Copying js files"

system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/js/* vendor/assets/javascripts/")
system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/js/* vendor/assets/javascripts/")


puts "Copying css files"
system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/css/* vendor/assets/stylesheets/")
system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/css/* vendor/assets/stylesheets/")

puts "Copying images"

system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/img/* vendor/assets/images/")

puts "Removing cloned vendor repository"

system("rm -rf Framework7-#{VERSION_FRAMEWORK7}")

puts "Finished.."
puts "You'll need to commit the changes. You should consider updating the change log and gem version number"
puts "next run install_local.sh"

puts "cleaning up downloaded tar"
system("rm v#{VERSION_FRAMEWORK7}.tar.gz")