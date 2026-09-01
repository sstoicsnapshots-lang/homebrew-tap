# Homebrew Cask for iptvS
#
# Publish this file to a tap so people can:
#     brew tap sstoicsnapshots-lang/tap
#     brew install --cask iptvs
#
# Tap layout:  github.com/sstoicsnapshots-lang/homebrew-tap  ->  Casks/iptvs.rb
#
# When you cut a new release, bump `version` and `sha256`
# (shasum -a 256 "iptvS <version>.dmg") and keep the DMG attached to a
# release whose tag matches the one in `url` below.

cask "iptvs" do
  version "0.5"
  sha256 "96287fb7c7901f1565fc1742f2eb2ce5b9804b542950977fd19bc73360111caa"

  url "https://github.com/sstoicsnapshots-lang/IptvS/releases/download/iptvS/iptvS.#{version}.dmg",
      verified: "github.com/sstoicsnapshots-lang/IptvS/"
  name "iptvS"
  desc "Native macOS IPTV player for Live TV, Movies, Series and EPG"
  homepage "https://github.com/sstoicsnapshots-lang/IptvS"

  # No livecheck: releases share a single fixed tag ("iptvS"), so there is
  # no version to detect from the tag list. Bump this cask by hand.

  depends_on macos: ">= :ventura"

  app "iptvS.app"

  caveats <<~EOS
    iptvS is ad-hoc signed and not notarised. If macOS refuses to open it,
    clear the quarantine flag once:

      xattr -dr com.apple.quarantine "#{appdir}/iptvS.app"

    or install without quarantine in the first place:

      brew install --cask --no-quarantine iptvs
  EOS

  zap trash: [
    "~/Library/Containers/com.freestream.iptvs",
    "~/Library/Preferences/com.freestream.iptvs.plist",
    "~/Library/Caches/com.freestream.iptvs",
    "~/Library/HTTPStorages/com.freestream.iptvs",
    "~/Library/Saved Application State/com.freestream.iptvs.savedState",
  ]
end
