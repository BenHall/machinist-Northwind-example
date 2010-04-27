require File.expand_path(File.dirname(__FILE__) + "/blueprints")
require 'faker'
require 'dir_extension'
Dir.require_all 'northwind'

Sham.reset
Sham.name { (1..10).map { ('a'..'z').to_a.rand }.join }
puts Sham.name

Sham.define do
  title { Faker::Lorem.words(5).join(' ') }
  name  { Faker::Name.name }
  body  { Faker::Lorem.paragraphs(3).join("\n\n") }
end

puts Sham.title