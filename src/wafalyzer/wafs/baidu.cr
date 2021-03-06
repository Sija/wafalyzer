module Wafalyzer
  class Waf::Baidu < Waf
    register product: "Yunjiasu Web Application Firewall (Baidu)"

    PATTERN =
      Regex.union(
        /fh(l)?/i,
        /yunjiasu.nginx/i,
      )

    builder do
      matches_header %w(X-Server Server), PATTERN
    end
  end
end
