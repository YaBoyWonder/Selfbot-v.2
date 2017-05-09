class GithubModule extends BotModule
  init: =>
    @registerCommand 'github', { everyone: false }, (msg, args)->
      msg.channel.sendMessage "Github"
      .then (m)=> m.edit "https://github.com/YaBoyWonder <= Github Source"
       
     @registerCommand 'githubb', { everyone: true }, (msg, args)->
      msg.channel.sendMessage "Github"
      .then (m)=> m.edit "https://github.com/YaBoyWonder/Selfbot-v.2"

module.exports = GithubModule
