require 'rails_helper'

describe PromptCategory do 
	it { should belong_to(:category) }
	it { should belong_to(:prompt) }
	it { should_not have_many(:prompts) }
end