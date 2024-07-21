require "formula"

class Jpipe < Formula

    homepage "https://github.com/ace-design/jpipe"

    url "https://github.com/ace-design/jpipe/releases/download/0.2.0/jpipe-0.2.0.tar.gz"
    sha256 "dc87675c648e31f006bb09137da2e1ff8d3066be39b1d5a15a79615e18bbbe0b"

    depends_on "graphviz"
    depends_on "openjdk@21"


    def install
        inreplace "jpipe", "@@PREFIX@@", "#{prefix}"
        prefix.install "jpipe.jar"
        bin.install "jpipe"
    end
end

