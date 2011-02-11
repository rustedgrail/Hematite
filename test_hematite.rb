require 'test/unit'
require 'hematite'

class TestHematite < Test::Unit::TestCase

  def test_read_file
    assert_nothing_raised do
      File.delete "test.rb" if File.exists? "test.rb"
      Hematite.new "test.hm"
      File.read "test.rb"
      assert_equal File.size("test.hm"), File.size("test.rb")
    end
  end

end
