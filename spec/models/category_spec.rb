require 'rails_helper'

describe Category do
	it { should have_many(:prompts) }
	it { should have_many(:prompt_categories) }
end