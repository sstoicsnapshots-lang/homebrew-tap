class Pears < Formula
  desc "A full-width taskbar for macOS rendered in Liquid Glass"
  homepage "https://github.com/sstoicsnapshots-lang/Pears"
  url "https://github.com/sstoicsnapshots-lang/Pears/releases/download/v1.0.0/Pears.dmg"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  
  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)*)$/i)
    strategy :github_latest
  end

  app "Pears"

  zap trash: [
    "~/Library/Preferences/com.pears.app.plist",
    "~/Library/Preferences/com.pears*",
    "~/Library/Application Support/Pears"
  ]
end
