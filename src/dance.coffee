# Description:
#   make your bot dance! inspired from http://bash.org/?4281
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   DANCE - Make your bot do a jig
#
# Author:
#   jjasghar

dance = [
  ":D|-<",
  ":D/-<",
  ":D\-<",
  ":D>-<"
]

module.exports = (robot) ->
  robot.hear /dance\b/, (msg) ->
    msg.send msg.random dance

  robot.hear /DANCE\b/, (msg) ->
    for move in dance
      msg.send move
