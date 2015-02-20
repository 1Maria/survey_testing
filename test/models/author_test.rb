require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
  end

  test "the truth" do
    assert true
    refute false
  end

  test "there are authors" do
    assert Author.count > 0
  end

  test "chris is chris" do
    assert_equal "Chris", authors(:chris).name
  end

  test "emails are unique" do
    bad_chris = Author.new(name: "Not Chris", email: "chris@awesome.com")
    refute bad_chris.save
  end
end
