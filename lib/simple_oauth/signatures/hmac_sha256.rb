module Signatures
  class HMAC_SHA256
    include Base

    protected

    def digest(secret, base)
      OpenSSL::HMAC.digest(OpenSSL::Digest::SHA256.new, secret, base)
    end
  end
end
