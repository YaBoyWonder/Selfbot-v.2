class GithubModule extends BotModule
  init: =>
    @registerCommand 'github', { everyone: true }, (msg, args)->
      sd = new Date(msg.timestamp).getTime()
      msg.channel.sendMessage "Github"
      .then (m)=> m.edit "https://github.com/YaBoyWonder <= Github Source"

module.exports = GithubModule
