class Iptvs < Formula
  desc "The Modern, Native IPTV Experience for macOS"
  homepage "https://github.com/sstoicsnapshots-lang/IptvS"
  url "https://github.com/sstoicsnapshots-lang/IptvS/releases/download/iptvS/iptvS.0.5.dmg"
  sha256 "f5e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "0.5"
  
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)*)$/i)
    strategy :github_latest
  end

  app "IptvS"

  zap trash: [
    "~/Library/Preferences/com.iptvs.app.plist",
    "~/Library/Preferences/com.iptvs*",
    "~/Library/Application Support/IptvS"
  ]
end
