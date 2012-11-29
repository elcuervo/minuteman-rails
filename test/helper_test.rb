require_relative "./test_helper"
require "minuteman/rails/helper"

describe Minuteman::Rails::Helper do
  include Minuteman::Rails::Helper

  it "should be able to track a given event" do
    track("test:event", 1)

    assert_equal ["test:event"], events
    assert analytics.month("test:event").include?(1)
  end
end
