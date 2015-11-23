class QuizzesController < ApplicationController
  	def home
  	end

  	def new
  		
  	end

  	def create
      # du lieu insert vao bang quizzes
  		@data_quiz= {
        :cate_id      => params[:category], 
        :quiz_slug    => params[:quiz_slug], 
        :quiz_content => params[:quiz_content], 
        :is_correct   => params[:is_correct]
      }
  		@quiz = Quizzes.new(@data_quiz)
  		if @quiz.save
        # lay ra quiz_id cua cau hoi vua them
  			@find_quiz = Quizzes.where(quiz_content: params[:quiz_content]).first
        # dap an A
  			@quiz_id_ppp= @find_quiz.quiz_id
  			@data_choice_a= {
                          :quiz_id        => @quiz_id_ppp, 
                          :choice_title   => "A", 
                          :choice_content => params[:choice_content_A]
                        }
  			@choice_a= Choices.new(@data_choice_a)
        # dap an B
  			@data_choice_b= {
                          :quiz_id        => @quiz_id_ppp, 
                          :choice_title   => "B", 
                          :choice_content => params[:choice_content_B]
                        }
  			@choice_b= Choices.new(@data_choice_b)
        # dap an C
  			@data_choice_c= {
                          :quiz_id        => @quiz_id_ppp, 
                          :choice_title   => "C", 
                          :choice_content => params[:choice_content_C]
                        }
  			@choice_c= Choices.new(@data_choice_c)
        # dap an D
  			@data_choice_d= {
                          :quiz_id        => @quiz_id_ppp, 
                          :choice_title   => "D", 
                          :choice_content => params[:choice_content_D]
                        }
  			@choice_d= Choices.new(@data_choice_d)
        # insert vao CSDL
  			@choice_a.save
  			@choice_b.save
  			@choice_c.save
  			@choice_d.save
        
  			redirect_to "/quizzes/new", :notice => "Add quizzes success !"
  		else
  			redirect_to "/quizzes/new", :notice => "Error !"
  		end
  		  	
  	end

  	def edit
  		@quiz_id= params[:quiz_id]
  		@quiz_slug= params[:quiz_slug]
  		@data_quiz= Quizzes.find(@quiz_id)
  		@data_choice= Choices.where(quiz_id: @quiz_id)
  	end
  	def update
  		# lay quiz_id va chon vao cau hoi muon sua 
      @quiz_id= params[:quiz_id]
      @quizzes= Quizzes.find(@quiz_id)
      # sua thong tin cua cau hoi 

      @data_quiz= {
        :cate_id      => params[:category], 
        :quiz_slug    => params[:quiz_slug], 
        :quiz_content => params[:quiz_content], 
        :is_correct   => params[:is_correct]
      }
      if @quizzes.update(@data_quiz)
        #dap an A
        @choice_a= Choices.find(params[:choice_id_A])
        @data_choice_a= {:choice_content => params[:choice_content_A]} 
        @choice_a.update(@data_choice_a)
        #dap an B
        @choice_b= Choices.find(params[:choice_id_B])
        @data_choice_b= {:choice_content => params[:choice_content_B]} 
        @choice_b.update(@data_choice_b)
        #dap an C
        @choice_c= Choices.find(params[:choice_id_C])
        @data_choice_c= {:choice_content => params[:choice_content_C]} 
        @choice_c.update(@data_choice_c)
        #dap an D
        @choice_d= Choices.find(params[:choice_id_D])
        @data_choice_d= {:choice_content => params[:choice_content_D]} 
        @choice_d.update(@data_choice_d)

        redirect_to "/quizzes/edit/"+@quiz_id+"/"+@quizzes.quiz_slug, :notice => "Edit quizzes success !"
      else
        redirect_to "/quizzes/edit/"+@quiz_id+"/"+@quizzes.quiz_slug, :notice => "Error !"
      end	 		
  	end
    def del
      Quizzes.find(params[:quiz_id]).destroy
      redirect_to "/admin/home"
    end
end
