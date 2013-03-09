request = require('request')

class GetURI
  onErr: (message) ->
    message = message.toString()
    return (
      title:  "Error"
      text: message
      html: "<b>" + message + "</b>"
      error: true
    )

  fetch: (uri, callbackFn) ->
    return @onErr("No URI specified") unless uri?

    request(uri, (error, response, body) =>
      if error?
        callbackFn @onErr(error)
      else if response.statusCode != 200
        callbackFn @onErr("Could not grab URI: Status #{response.statusCode}")
      else
        callbackFn body
    )

module.exports = GetURI
