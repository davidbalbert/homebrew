require 'formula'

class Peg < Formula
  url 'http://piumarta.com/software/peg/peg-0.1.7.tar.gz'
  homepage 'http://piumarta.com/software/peg/'
  md5 'e68a7b8d9ae11275242e84abd86c3258'

  def install
    system "make all"
    bin.install %w[peg leg]
    man1.install gzip("peg.1")
  end
end
