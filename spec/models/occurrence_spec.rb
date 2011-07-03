require 'spec_helper'

describe Occurrence do
  should_belong_to :category
  should_validate_presence_of :name
  should_validate_presence_of :address
  should_validate_presence_of :city
  should_validate_presence_of :state
end
