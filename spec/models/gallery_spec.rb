require 'spec_helper'

describe Gallery do
  it {should belong_to(:venue)}
  it {should have_many(:gallery_image)}
end
