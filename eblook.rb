# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Eblook < Formula
  desc "eblook 1.6.1+media"
  homepage "http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
  url "http://ikazuhiro.s206.xrea.com/filemgmt/visit.php/196"
  sha256 "ebd5886176c2d52aea9077ef441af06b9181bda2ac4395def55ff305c288094e"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules", "--with-ebu-conf=/usr/local/etc/ebu.conf"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test eblook`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
