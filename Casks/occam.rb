cask "occam" do
  version "1.4.4"
  sha256 "259c136d4dad35ec28909be5d7cf5a1e9507854f2aed4bad02b6eb4d4088d85d"

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
