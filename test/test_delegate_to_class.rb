require 'helper'
require 'delegate_to_class'

class Foo
  include DelegateToClass

  def self.things
    %w(chair park computer)
  end

end

class TestDelegateToClass < Test::Unit::TestCase

  def test_delegate_to_class
    a = Foo.new
    assert !a.methods.include?("things")
    assert a.things == %w(chair park computer)
    assert Foo.things == %w(chair park computer)
  end

end
