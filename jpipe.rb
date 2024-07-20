require "formula"

class Jpipe < Formula

    homepage "https://github.com/ace-design/jpipe"

    url "https://github.com/ace-design/jpipe/releases/download/0.2.0/jpipe-0.2.0.tar.gz"
    sha256 "8dfec2de4a224d00981824384f469c6ca0fb332511d51f14e4b6b7a6fdc859c8"

    depends_on "graphviz"
    depends_on "openjdk"


    def install
        inreplace "jpipe", "@@PREFIX@@", "#{prefix}"
        prefix.install "jpipe.jar"
        bin.install "jpipe"
    end
end

