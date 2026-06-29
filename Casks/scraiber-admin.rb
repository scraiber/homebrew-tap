cask "scraiber-admin" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://get.scraiber.com/admin/mac/ScraiberAdmin_#{version}_universal.dmg",
      verified: "get.scraiber.com/admin/mac/"
  name "Scraiber Admin"
  desc "Native desktop client for Scraiber Admin"
  homepage "https://admin.scraiber.com/"

  # version + sha256 are bumped by the admin tauri-desktop CI on each release.
  auto_updates true
  depends_on macos: :big_sur

  app "Scraiber Admin.app"

  zap trash: [
    "~/Library/Application Support/com.scraiber.admin",
    "~/Library/Caches/com.scraiber.admin",
    "~/Library/WebKit/com.scraiber.admin",
  ]
end
