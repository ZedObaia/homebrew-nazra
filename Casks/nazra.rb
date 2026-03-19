cask "nazra" do
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ZedObaia/stashviewer/releases/download/v1.0.0/Nazra_1.0.0_aarch64.dmg"
    sha256 "a827bc2a8b9c8354573705e0fc72472428970551c9b99a73b0d026f6fe0c55f1"
  else
    url "https://github.com/ZedObaia/stashviewer/releases/download/v1.0.0/Nazra_1.0.0_x64.dmg"
    sha256 "7e53ce813092a22fcc673406e38b8e7ca09047c9ff71573016fef4e05cdd9f01"
  end

  name "Nazra"
  desc "A visual Git explorer for stashes, diffs, and commits"
  homepage "https://github.com/ZedObaia/stashviewer"

  app "Nazra.app"

  zap trash: [
    "~/Library/Preferences/com.brilliminds.nazra.plist",
    "~/Library/Application Support/com.brilliminds.nazra",
  ]
end
