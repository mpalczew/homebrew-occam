cask "occam" do
  version "1.4.2"
  sha256 "3e40b6ad726887aa6e24cbda8e5e07a532170b0409e1d3359be0903c61e8b6a3"

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
