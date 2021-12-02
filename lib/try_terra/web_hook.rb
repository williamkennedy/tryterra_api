module TryTerra
  class WebHook
    attr_reader :key, :signature_header, :data

    def initialize(key:, signature_header:, data:)
      @key = key
      @signature_header = signature_header
      @data = data
    end

    def valid?
      t, header_signature = @signature_header.split(",").map { |kv| kv.split("=")[1] }
      timestamped_payload = "#{t}.#{@data}"
      signature = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new("sha256"), @key, timestamped_payload)
      signature == header_signature
    end
  end
end
