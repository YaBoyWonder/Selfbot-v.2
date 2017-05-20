class NitroModule extends BotModule
  init: =>
    @registerCommand 'nitro', { everyone: false }, (msg, args)->
       msg.channel.sendMessage "Invite"
      .then (m)=> m.edit "https://discordapp.com/oauth2/authorize?client_id=264097934293991435&scope=bot&permissions=600 <= Invite Link"

module.exports = NitroModule
