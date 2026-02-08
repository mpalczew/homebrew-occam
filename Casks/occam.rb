cask "occam" do
  version "1.3.0"
  sha256 "049e96dd19ee211327ff7ad4bcb6a47c1d30fb51629c0c7e82309f4dbb9f839e"

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
