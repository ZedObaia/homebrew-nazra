cask "nazra" do
  version "1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/ZedObaia/stashviewer/releases/download/v1.1.0/Nazra_1.1.0_aarch64.dmg"
    sha256 "7b61de8d9089b69a0b23250c7e7809ed98563bbe443a840b4e1ad9d53b749206"
  else
    url "https://github.com/ZedObaia/stashviewer/releases/download/v1.1.0/Nazra_1.1.0_x64.dmg"
    sha256 "9fd51ef683b4c15b12c2413056499964c6fe62779e338e776161d3d43fd37a07"
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
