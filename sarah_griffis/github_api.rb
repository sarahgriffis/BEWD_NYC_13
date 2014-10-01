require 'rest-client'
require 'json'
require 'pry'

username = 'sgriffis89'

puts "Enter your password for #{username}"
password = gets.strip

url = "https://#{username}:#{password}@api.github.com/repos/ga-students/BEWD_NYC_13/forks"

urlresponse = RestClient.get(url)

parsed_response = JSON.parse(urlresponse)


#name, avatar, url
##array of hases
#


myhash = parsed_response.map do |response|
  { name: response['owner']['login'],
    avatar_url: response['owner']['avatar_url'],
    html_url: response['owner']['html_url']
  }

end



html = '<html>
<head>
  <title>BEWD Forks</title>
</head>
<body>'

myhash.each do |fork|
  html << "<a href='#{fork[:html_url]}'>
            <img src='#{fork[:avatar_url]}' width='200' height='200' />
           </a>
           <h2> #{fork[:name]} </h2>
           <br><br>"
end

html << '</body>
</html>'



File.write('github.html', html)
system('open github.html')
