require 'rails_helper'

describe Prompt do
	it { should have_many (:categories) }
	it { should have_many (:prompt_categories) }
end