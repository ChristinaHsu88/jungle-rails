class ReviewsController < ApplicationController
    
    before_filter

    def create
        #create an instance
      review = Review.new(review_params)
        #store the session id in the review table. Params allow to access all the parameters passed in
      review.user_id = session[:user_id]
      review.product_id = params[:product_id]
      if review.save
        review.save
        redirect_to "/products/#{params[:product_id]}"
      else
        redirect_to "/products/#{params[:prouct_id]}"
      end
    end

    private
    #require(object), permit(the nested objects being passed in)
        def review_params
            params.require(:review).permit(:rating, :description)
        end
end
