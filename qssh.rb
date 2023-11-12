class Qssh < Formula
    desc "qssh - QuickSSH streamlines server management for IT pros and developers, eliminating the need to remember multiple IP addresses and hostnames by providing easy access to a list of servers. "
    homepage "https://github.com/josephillips85/qssh/"
    url "https://github.com/josephillips85/qssh/archive/refs/tags/1.1.tar.gz"
    sha256 "a9ee5891e81d3f58b4a526e7941c6a669f053ff9524361a2f59d746d32fa9a54"
    license "GPL-3.0-or-later"
  
    uses_from_macos "gcc"
    uses_from_macos "ssh"
  
    def install
      system "gcc qssh.c parser.c autocomplete.c -o qssh"
      bin.install "qssh"
      
    end
  
    test do

      system "#{bin}/qssh", "version"
    end
  end