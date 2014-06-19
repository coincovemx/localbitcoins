module LocalBitcoins
  module Escrows
    # Get a list of the token owner's releaseable escrows 
    # NOTE: This endpoint is not documented so it may or may not work
    def escrows
      oauth_request(:get, '/api/escrows/')
    end

    # Release an escrow
    # id - the contact number
    # NOTE: LocalBitcoins documentation calls this the "escrow_id",
    # it is actually just the contact number the escrow is associated with
    def escrow_release(id)
      oauth_request(:post, "/api/escrow_release/#{id}/")
    end
  end
end
