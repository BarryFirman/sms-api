module Response

  def json_response(messages, status)
    render json: {
      messages: messages
    }, status: status
  end
end