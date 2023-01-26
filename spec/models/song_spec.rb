require 'rails_helper'

describe Song do
    it { should belong_to(:album)}
    it { should validate_presence_of(:name) }
end