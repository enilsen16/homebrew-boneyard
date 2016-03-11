class Frink < Formula
  desc "calculating tool and programming language"
  homepage "http://futureboy.us/frinkdocs/index.html"
  sha256 "ba606700ac498215cd39aaaab932314ea16b1c8bb873864687f6930979685814"
  head "http://futureboy.us/frinkjar/frink.jar"

  depends_on "rlwrap"

  def install
    prefix.install "frink.jar"

    # Add an executable shell-script
    (bin + "frink").write <<-EOF.undent
      #!/bin/sh
      rlwrap java -cp #{prefix}/frink.jar frink.parser.Frink \"$@\"
    EOF
  end
end
