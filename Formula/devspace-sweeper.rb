class DevspaceSweeper < Formula
    desc "Tiny cross-platform CLI that finds and safely cleans dev junk"
    homepage "https://github.com/adwaitdeshpande/devspace-sweeper"
    version "0.1.2"
  
    on_macos do
      url "https://github.com/adwaitdeshpande/devspace-sweeper/releases/download/v0.1.0/devspace-sweeper-macos.tar.gz"
      sha256 "c314c49134888c09a0c13a14e08002164d7cb0ca841f511d4bf1c05630599721"
    end
  
    on_linux do
      url "https://github.com/adwaitdeshpande/devspace-sweeper/releases/download/v0.1.0/devspace-sweeper-linux.tar.gz"
      sha256 "58fa54a5c0816c371d84b676a07caa0222e3a3e8d70bbb1edffaae77f2c333b2"
    end
  
    def install
      bin.install "devspace-sweeper-macos" => "devspace-sweeper" if OS.mac?
      bin.install "devspace-sweeper-linux" => "devspace-sweeper" if OS.linux?
    end
  
    test do
      assert_match "devspace-sweeper", shell_output("#{bin}/devspace-sweeper --help")
    end
  end
  