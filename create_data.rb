require File.expand_path(File.dirname(__FILE__) + "/blueprints")
require 'dir_extension'
Dir.require_all 'northwind'

Sham.reset
Sham.name { (1..10).map { ('a'..'z').to_a.rand }.join }
puts Sham.name