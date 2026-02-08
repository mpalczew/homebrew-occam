cask "occam" do
  version "1.2.2"
  sha256 "fbe4499f819aeb8247e4ceb48acb0a12fcc21e3a6bc92417c01fa967b15c0f21"

  url "https://github.com/mpalczew/occam/releases/download/v#{version}/Occam-#{version}-universal.zip"
  name "Occam"
  desc "Minimalist macOS app launcher"
  homepage "https://github.com/mpalczew/occam"

  depends_on macos: ">= :ventura"

  app "Occam.app"

  zap trash: [
    "~/Library/Preferences/com.occam.launcher.plist",
  ]
end
