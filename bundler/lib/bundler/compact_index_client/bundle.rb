#!/usr/bin/env ruby
ENV["BUNDLER_VERSION"] = ENV["AFTER"] ? "system" : File.read("Gemfile.lock")[/BUNDLED WITH\n  (.+?)\n/m, 1]
path = ENV["AFTER"] ? "/Users/jacklynma/side-projects/rubygems/bundler/exe/bundle" : "/Users/jacklynma/.rubies/ruby-3.2.2/bin/bundle"

if !ENV["BUNDLER_SETUP"].nil?
  load path
else
  require "heap-profiler"
  HeapProfiler.report("heap-prof.#{ENV["AFTER"] ? "after" : "before"}") do
    require "rubygems"
    load path
  end
end