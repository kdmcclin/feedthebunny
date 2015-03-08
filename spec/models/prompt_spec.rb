require 'rails_helper'

describe Prompt do
	it { should have_many(:categories) }
	it { should have_many(:prompt_categories) }
	it { should_not belong_to(:categories)}
end