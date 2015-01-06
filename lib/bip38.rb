class Bip38
  require 'bitcoin'

  def self.encrypt(private_key, passphrase)
    Bitcoin::Key.from_base58(private_key).to_bip38(passphrase)
  end

  def self.decrypt(encrypted_private_key, passphrase)
    Bitcoin::Key.from_bip38(encrypted_private_key, passphrase).to_base58
  end
end
