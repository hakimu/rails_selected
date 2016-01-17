require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "the truth" do
  	x = 2
  	assert_equal 1 + 1, x
  end

  test "speak" do
  	#response = Contact.speak
  	assert_equal Contact.speak, "Hi!!"
  end
end
