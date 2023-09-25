class Qssh < Formula
    desc "QuickSSH"
    homepage "https://github.com/josephillips85/qssh/"
    url "https://github.com/josephillips85/qssh/archive/refs/tags/1.0.tar.gz"
    sha256 "d89802e374ec90ae3b6fa1017215cd6d04735c6b24d3e17a07c162b0832769fb"
    license ""
  
    uses_from_macos "gcc"
  
    def install
      system "gcc qssh.c parser.c -o qssh"
      bin.install "qssh"
      
    end
  
    test do

      system "#{bin}/qssh", "version"
    end
  end