class Api::V1::BooksController < ApplicationController
    def index
      render json: Book.all
    end
    def create
      book = Book.new(post_params)

      if book.save
        render json: {status:'SUCCESS',message:'Created'}
      else 
        render json: {status:'Fail',message:'Not yet'}
      end
    end
    private
    def post_params
      params.require(:data).permit(:入力日,:書籍名,:洋書,:種別,:分類内通番,:寄贈,:ラベル出力済フラグ,:購入価格,:id)
    end
end
