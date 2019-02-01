class User < ApplicationRecord
  devise  :database_authenticatable,
          :jwt_authenticatable,
          jwt_revocation_strategy: JwtBlacklist
  attr_reader :token

  def jwt_payload
    {}
  end

  def on_jwt_dispatch(token, payload)
    @token = token
  end

end
