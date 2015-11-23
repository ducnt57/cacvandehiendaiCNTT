class PagesController < ApplicationController
  	def home
  		
  	end
  
  	def contact
  	
  	end

  	def subject
  		@cate_id= params[:cate_id]
  		@slug= params[:slug]
  		@cate= Categories.find(params[:cate_id])
  		@quiz= Quizzes.where(cate_id: params[:cate_id]).order("RAND()").limit(5)		
  	end
    
    def checkanswer
      @thongbao=""
      @tongdiem=0
      @errors={}
      @kq={}
      if session[:user_id_abc123]
        #lay dap an ma nguoi dung da tra loi + id
        @id_cau_hoi_1= params[:id_quizzes_1]
        @quizzes_1= Quizzes.find(@id_cau_hoi_1)
        @nd_cau_tra_loi_1= params[:choice_quiz_1]
        @id_cau_hoi_2= params[:id_quizzes_2]
        @quizzes_2= Quizzes.find(@id_cau_hoi_2)
        @nd_cau_tra_loi_2= params[:choice_quiz_2]
        @id_cau_hoi_3= params[:id_quizzes_3]
        @quizzes_3= Quizzes.find(@id_cau_hoi_3)
        @nd_cau_tra_loi_3= params[:choice_quiz_3]
        @id_cau_hoi_4= params[:id_quizzes_4]
        @quizzes_4= Quizzes.find(@id_cau_hoi_4)
        @nd_cau_tra_loi_4= params[:choice_quiz_4]
        @id_cau_hoi_5= params[:id_quizzes_5]
        @quizzes_5= Quizzes.find(@id_cau_hoi_5)
        @nd_cau_tra_loi_5= params[:choice_quiz_5]
        #so sanh voi dap an trong CSDL roi tinh diem va thong bao ket qua
        if @nd_cau_tra_loi_1.nil?
          @errors["question 1"]= "You have not answered question 1"
        else
          if @nd_cau_tra_loi_1==@quizzes_1.is_correct
            @tongdiem+=1
            @kq["Question 1"]= "T"
          else
            @kq["Question 1"]= "F"
          end
        end
        if @nd_cau_tra_loi_2.nil?
          @errors["question 2"]= "You have not answered question 2"
        else
          if @nd_cau_tra_loi_2==@quizzes_2.is_correct
            @tongdiem+=1
            @kq["Question 2"]= "T"
          else
            @kq["Question 2"]= "F"
          end
        end
        if @nd_cau_tra_loi_3.nil?
          @errors["question 3"]= "You have not answered question 3"
        else
          if @nd_cau_tra_loi_3==@quizzes_3.is_correct
            @tongdiem+=1
            @kq["Question 3"]= "T"
          else
            @kq["Question 3"]= "F"
          end
        end
        if @nd_cau_tra_loi_4.nil?
          @errors["question 4"]= "You have not answered question 4"
        else
          if @nd_cau_tra_loi_4==@quizzes_4.is_correct
            @tongdiem+=1
            @kq["Question 4"]= "T"
          else
            @kq["Question 4"]= "F"
          end
        end
        if @nd_cau_tra_loi_5.nil?
          @errors["question 5"]= "You have not answered question 5"
        else
          if @nd_cau_tra_loi_5==@quizzes_5.is_correct
            @tongdiem+=1
            @kq["Question 5"]= "T"
          else
            @kq["Question 5"]= "F"
          end     
        end  
        
        
        @user= User.find(session[:user_id_abc123])
        @score_old= @user.score
        @score_new=0;
        @score_new= @score_old+@tongdiem
        @user.update({"score" => @score_new})
            

      else 
        @thongbao= "You are not logged in !"
      end
    end
end
