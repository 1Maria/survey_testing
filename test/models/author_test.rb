require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
  end

  test "the truth" do
    assert true
    refute false
  end

  test "emails are unique" do
    bad_chris = Author.new(name: "Not Chris", email: "chris@awesome.com")
    refute bad_chris.save
  end
end
