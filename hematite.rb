class Hematite

  def initialize file
    File.open(file, "r") do |input|
      File.open("test.rb", "w") do |output|
        input.each do |line|
          output.write line
        end
      end
    end
  end

end
