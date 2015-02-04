class CategoriesController < ApplicationController
	def index
		@categories1 = Category.all.where(id: 1..15)
		@categories2 = Category.all.where(id: 16..30)
		@categories3 = Category.all.where(id: 31..45)
		@categories4 = Category.all.where(id: 46..60)
	end
end