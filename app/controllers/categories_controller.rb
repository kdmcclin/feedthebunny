class CategoriesController < ApplicationController
	def index
		@categories1 = Category.all.where(id: 1..8)
		@categories2 = Category.all.where(id: 9..16)
		@categories3 = Category.all.where(id: 17..24)
		@categories4 = Category.all.where(id: 25..32)
	end
end