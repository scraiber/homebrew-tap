cask "scraiber" do
  version "1.0.0"
  sha256 "bdd689e9fb7a16887fe871942798e7c0a503f017aa47788ba8ad12a043e1ef3e"

  url "https://get.scraiber.com/scraiber/mac/Scraiber_#{version}_universal.dmg",
      verified: "get.scraiber.com/scraiber/mac/"
  name "Scraiber"
  desc "Native desktop client for Scraiber"
  homepage "https://app.scraiber.com/"

  # The app updates itself via the backend /frontend_version/ check, so Homebrew
  # should not try to manage upgrades of an already-installed copy.
  auto_updates true
  depends_on macos: :big_sur

  app "Scraiber.app"

  zap trash: [
    "~/Library/Application Support/com.scraiber.client",
    "~/Library/Caches/com.scraiber.client",
    "~/Library/WebKit/com.scraiber.client",
  ]
end
