
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Komoot_Bob < Formula
  desc ""
  homepage ""
  license ""
#  head "https://github.com/komoot/bob-the-module-maker.git"
  url "https://github.com/komoot/bob-the-module-maker.git",
    using:    :git,
    tag:      "0.1"

  # depends_on "cmake" => :build

  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/bob'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test bob`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end