require "formula"

class Jpipe < Formula

    homepage "https://github.com/ace-design/jpipe"

    url "https://github.com/ace-design/jpipe/releases/download/0.2.0/jpipe-0.2.0.tar.gz"
    sha256 "8cb6e431e63d0cf43f8e6d6f9cece4facecec0dcd71b293819e7fa1ec36a6a77"

    depends_on "graphviz"
    depends_on "openjdk@21"


    def install
        inreplace "jpipe", "@@PREFIX@@", "#{prefix}"
        prefix.install "jpipe.jar"
        bin.install "jpipe"
    end
end

