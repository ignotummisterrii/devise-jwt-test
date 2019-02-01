class HomeController < ApplicationController
  def index
  end

  def test
    render json: {
      params: params.to_json
    }
  end

end
