class GithubModule extends BotModule
  init: =>
    @registerCommand 'github', { everyone: true }, (msg, args)->
      msg.channel.sendMessage "Github"
      .then (m)=> m.edit "https://github.com/YaBoyWonder <= Github Source"

module.exports = GithubModule
