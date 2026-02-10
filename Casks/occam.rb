cask "occam" do
  version "1.4.3"
  sha256 "c5d5d18fc1f236336dcb7c73a585ec58696c5d7cc3fabab7abf40b0cc430c6ac"

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
