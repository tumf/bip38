require 'helper'

describe Bip38,"VERSION" do
  it "must be {major}.{minor}.{patch}" do
    expect(Bip38::VERSION).to match(/\d+\.\d+\.\d+/)
  end
end

describe Bip38,"#encrypt" do
  context "WIF> 5KN7MzqK5wt2TP1fQCYyHBtDrXdJuXbUzm4A9rKAteGu3Qi5CVR" do
    wif = "5KN7MzqK5wt2TP1fQCYyHBtDrXdJuXbUzm4A9rKAteGu3Qi5CVR"
    passphrase = "TestingOneTwoThree"
    encrypted = "6PRVWUbkzzsbcVac2qwfssoUJAN1Xhrg6bNk8J7Nzm5H7kxEbn2Nh2ZoGg"
    it "returns encrypted key" do
      expect(Bip38.encrypt(wif,passphrase)).to eq(encrypted)
      expect(Bip38.decrypt(encrypted,passphrase)).to eq(wif)
    end
  end

  context "WIF> 5HtasZ6ofTHP6HCwTqTkLDuLQisYPah7aUnSKfC7h4hMUVw2gi5" do
    wif = "5HtasZ6ofTHP6HCwTqTkLDuLQisYPah7aUnSKfC7h4hMUVw2gi5"
    passphrase = "Satoshi"
    encrypted = "6PRNFFkZc2NZ6dJqFfhRoFNMR9Lnyj7dYGrzdgXXVMXcxoKTePPX1dWByq"
    it "returns encrypted key" do
      expect(Bip38.encrypt(wif,passphrase)).to eq(encrypted)
      expect(Bip38.decrypt(encrypted,passphrase)).to eq(wif)
    end
  end

  context "Compressed: WIF> L44B5gGEpqEDRS9vVPz7QT35jcBG2r3CZwSwQ4fCewXAhAhqGVpP" do
    wif = "5HtasZ6ofTHP6HCwTqTkLDuLQisYPah7aUnSKfC7h4hMUVw2gi5"
    passphrase = "TestingOneTwoThree"
    encrypted = "6PRNFFkZbB3P43UhHJG7uMx8bqRRd9dXRthYaKBXwbgVEGJdo8STW3AKcD"
    it "returns encrypted key" do
      expect(Bip38.encrypt(wif,passphrase)).to eq(encrypted)
      expect(Bip38.decrypt(encrypted,passphrase)).to eq(wif)
    end
  end

  context "Compressed: WIF> KwYgW8gcxj1JWJXhPSu4Fqwzfhp5Yfi42mdYmMa4XqK7NJxXUSK7" do
    wif = "5HtasZ6ofTHP6HCwTqTkLDuLQisYPah7aUnSKfC7h4hMUVw2gi5"
    passphrase = "Satoshi"
    encrypted = "6PRNFFkZc2NZ6dJqFfhRoFNMR9Lnyj7dYGrzdgXXVMXcxoKTePPX1dWByq"
    it "returns encrypted key" do
      expect(Bip38.encrypt(wif,passphrase)).to eq(encrypted)
      expect(Bip38.decrypt(encrypted,passphrase)).to eq(wif)
    end
  end
end
