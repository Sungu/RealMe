class GamesController < ApplicationController
    def ready_page
    end
    
    def playing_page
      if current_user.current_stage ==nil
        current_user.current_stage=1
        current_user.save
        
        a = Illju.new
        a.user = current_user.id
        a.save
      end
      @story = Story.find_by(id: current_user.current_stage)
      @a=current_user.uid
    end
    
    def update
      story = Story.find_by(id: current_user.current_stage)
      
      if story.next_ok
        current_user.current_stage +=1
        current_user.save
      else
        if Response.where(target_id: current_user.id).count >= 3
          current_user.current_stage +=1
          current_user.save
        else
          flash[:info] = "친구의 답이 아직 덜 모였어요!"
        end
      end
      
      
      redirect_to :back
    end
    
    def update_by_id
      
      most_common_ans = Response.where(target_id: current_user.id, question_id: params[:question_id].to_i).pluck(:my_ans).group_by(&:itself).values.max_by(&:size).first
      
      if params[:my_ans].to_i == most_common_ans
        Response.create(user_id: current_user.id, question_id: params[:question_id].to_i, my_ans: params[:my_ans].to_i, target_id: current_user.id)
        current_user.current_stage = params[:next_id]
        current_user.save
        
        if current_user.illju ==nil
          a = Illju.new
          a.user_id=current_user.id
          a.illchi =1
          a.save
        else
          current_user.illju.illchi +=1
          current_user.illju.save
        end
        
      else
        flash[:info] = "친구들의 답은 "+most_common_ans.to_s+" 였어요."
        if current_user.illju ==nil
          a = Illju.new
          a.user_id=current_user.id
          a.illchi =-1
          a.save
        else
          current_user.illju.illchi -=1
          current_user.illju.save
        end
        
        Response.create(user_id: current_user.id, question_id: params[:question_id].to_i, my_ans: params[:my_ans].to_i, target_id: current_user.id)
        current_user.current_stage = params[:next_id]
        current_user.save
      end
      
      redirect_to :back
    end
end
