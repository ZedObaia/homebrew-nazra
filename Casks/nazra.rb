cask "nazra" do
  version "1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/ZedObaia/nazra/releases/download/v1.1.0/Nazra_1.0.0_aarch64.dmg"
    sha256 "6a6599e8963357ab58739eded40a54ee4444032d22c5db292b3d2bc1e2008235"
  else
    url "https://github.com/ZedObaia/nazra/releases/download/v1.1.0/Nazra_1.0.0_x64.dmg"
    sha256 "c07ac3324a209ac4da31ec0f7e9269e4d89f62e43a6e9064ac2a706b16c8ff7c"
  end

  name "Nazra"
  desc "A visual Git explorer for stashes, diffs, and commits"
  homepage "https://github.com/ZedObaia/nazra"

  app "Nazra.app"

  zap trash: [
    "~/Library/Preferences/com.brilliminds.nazra.plist",
    "~/Library/Application Support/com.brilliminds.nazra",
  ]
end
