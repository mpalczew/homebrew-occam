cask "occam" do
  version "1.4.1"
  sha256 "1e94abc975361680908df2fa328353854af38e1e484c8eb21f7183df6d9df4ad"

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
