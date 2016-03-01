require 'rails_helper'

describe PromptCategory, type: :model do 
	it { should belong_to(:category) }
	it { should belong_to(:prompt) }
	it { should_not have_many(:prompts) }
end