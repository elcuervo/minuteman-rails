require_relative "./test_helper"

describe Minuteman::Rails do
  it "should be configurable" do
    Minuteman::Rails.configure do |c|
      c.silent = true

      assert c.kind_of?(Minuteman::Rails::Configuration)
    end

    assert Minuteman::Rails.analytics.kind_of?(Minuteman)
    assert Minuteman::Rails.configuration.silent
  end
end
