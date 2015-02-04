class CategoriesController < ApplicationController
	def index
		@categories1 = Category.all.where(id: 1..15).shuffle
		@categories2 = Category.all.where(id: 16..30).shuffle
		@categories3 = Category.all.where(id: 31..45).shuffle
		@categories4 = Category.all.where(id: 46..60).shuffle
	end
end