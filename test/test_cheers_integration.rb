require_relative '../helper'

class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_a_name_with_no_vowels
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts "BRT"
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a... B
Give me a... R
Give me a... T
BRT's just GRAND!
EOS
    assert_equal expected_output, shell_output
  end

  def test_a_name_with_vowels
    shell_output = ""
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts "foo"
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a... F
Give me an... O
Give me an... O
FOO's just GRAND!
EOS
    assert_equal expected_output, shell_output
  end

end
