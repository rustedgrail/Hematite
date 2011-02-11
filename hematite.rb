#!/bin/env ruby

class Hematite

  def initialize file
    File.open(file, "r") do |input|
      File.open(file.gsub(".hm", ".rb"), "w") do |output|
        input.each do |line|
          output.write line.gsub("putStrLn", "puts")
        end
      end
    end
  end

end


ARGV.each do |arg|
  Hematite.new arg
end

