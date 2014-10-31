module Puppet::Parser::Functions
    newfunction(:uuid, :type => :rvalue, :doc => <<-EOS
Returns random uuid.
EOS
    ) do |args|
        return SecureRandom.uuid
    end
end
