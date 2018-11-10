require "formula"

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  version "8.0.13"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-#{version}.tar.gz"
  sha256 "99501fbc74b4cb80cd75a4d06c38b662be01bfd39c409efa3c747ec83216329b"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end
end
