class QsshAT1_0 < Formula
    desc "qssh - QuickSSH streamlines server management for IT pros and developers, eliminating the need to remember multiple IP addresses and hostnames by providing easy access to a list of servers. "
    homepage "https://github.com/josephillips85/qssh/"
    url "https://github.com/josephillips85/qssh/archive/refs/tags/1.0.tar.gz"
    sha256 "d89802e374ec90ae3b6fa1017215cd6d04735c6b24d3e17a07c162b0832769fb"
    license "GPL-3.0-or-later"
  
    uses_from_macos "gcc"
    uses_from_macos "ssh"
  
    def install
      system "gcc qssh.c parser.c -o qssh"
      bin.install "qssh"
      
    end
  
    test do

      system "#{bin}/qssh", "version"
    end
  end