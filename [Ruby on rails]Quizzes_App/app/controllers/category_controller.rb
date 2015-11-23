class CategoryController < ApplicationController
	def home
		
	end
	def new
		
	end
	def create
		@data_category= {
			:name 	=> 	params[:name],
			:slug	=>	params[:slug],
			:icon	=> 	params[:icon]
		}
		@category= Categories.new(@data_category)
		if @category.save
			redirect_to "/category/new", :notice => "Add category success !"
		else
			redirect_to "/category/new", :notice => "Errors !"	 
		end
	end
	def edit
		@cate_id= params[:cate_id]
  		@cate_slug= params[:slug]
  		@data_cate= Categories.find(@cate_id)
	end
	def update
		@cate_id= params[:cate_id]
		@cate_slug= params[:cate_slug]
		@data_cate={
			:name		=> params[:name],
			:slug 		=> params[:slug],
			:icon		=> params[:icon]
		}
		@category= Categories.find(@cate_id)
		if @category.update(@data_cate)
			redirect_to "/category/edit/"+@cate_id+"/"+@cate_slug, :notice => "Edit category success !"
		else
			redirect_to "/category/edit/"+@cate_id+"/"+@cate_slug, :notice => "Errors !"
		end
	end
	def del
		#delete category
		Categories.find(params[:cate_id]).delete
		redirect_to "/admin/home"
	end
end
