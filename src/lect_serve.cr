require "json"
require "http/client"

class LectServe
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.lectserve.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_lectionary(day : String = "today") : JSON::Any
    JSON.parse(@http_client.get("/#{day}", headers: @headers).body)
  end

  def get_lectionary_by_date(date : String) : JSON::Any
    JSON.parse(@http_client.get("/date/#{date}", headers: @headers).body)
  end
end
