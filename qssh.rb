class Qssh < Formula
    desc "QuickSSH"
    homepage "https://github.com/josephillips85/qssh/"
    url "https://github.com/josephillips85/qssh/archive/refs/tags/1.0.tar.gz"
    sha256 "d89802e374ec90ae3b6fa1017215cd6d04735c6b24d3e17a07c162b0832769fb"
    license ""
  
    uses_from_macos "gcc"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      system "gcc qssh.c `find . \( -iname '*.c' -not -name 'qssh.c' \)` -o qssh"
      bin.install "qssh"
      
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test qssh`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "#{bin}/quickssh", "version"
    end
  end