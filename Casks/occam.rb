cask "occam" do
  version "1.4.5"
  sha256 "9c15d5d4bc5d5a3bc63cd84e645d91f5b28304426b38f0ccb67387b911bd3650"

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
