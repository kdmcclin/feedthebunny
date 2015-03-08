require 'rails_helper'

describe Category do
	it { should have_many(:prompts) }
	it { should have_many(:prompt_categories) }
	it { should_not belong_to(:prompts) }
end