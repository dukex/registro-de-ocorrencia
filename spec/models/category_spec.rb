require 'spec_helper'

describe Category do
  should_validate_presence_of :name
  should_have_many :occurrences
end
