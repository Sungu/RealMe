class AnswerFriendController < ApplicationController
    def select_friend
    end
    
    def friend_res
      @friend_id = params[:friend_id]
      @story_list = Story.all
    end
    
    def update_by_friend
      Response.create(user_id: current_user.id, question_id: params[:question_id].to_i, my_ans: params[:my_ans].to_i, target_id: params[:target_id].to_i)
      redirect_to :back, friend_id: params[:target_id].to_i, notice: "질문에 답하셨습니다."
    end
end
