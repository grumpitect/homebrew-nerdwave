cask "nerdwave" do
  version "1.7.3"
  sha256 "71955bbd88b9ae3fbd6dab24162af2bf1763da77f400d1a49dd2676013ee395d"

  url "https://github.com/grumpitect/nerdwave/releases/download/v#{version}/Nerdwave-#{version}.zip"
  name "Nerdwave"
  desc "Menu bar background music player for streamers"
  homepage "https://github.com/grumpitect/nerdwave"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Nerdwave.app"

  uninstall quit: "com.nerdative.nerdwave"

  zap trash: [
    "~/Library/Application Support/Nerdwave",
    "~/Library/Preferences/com.nerdative.nerdwave.plist",
  ]

  caveats <<~EOS
    Nerdwave is free and not notarized by Apple. The first time you open it, macOS will say it
    can't verify the developer: open System Settings > Privacy & Security and click "Open Anyway".
    You only need to do this once.
  EOS
end
