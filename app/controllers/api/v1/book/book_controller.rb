class Api::V1::BookController < ApplicationController
    def index
      render @books = Book.all
    end
end
