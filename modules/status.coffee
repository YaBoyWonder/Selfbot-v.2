request = require 'request'

class StatusModule extends BotModule
  init:=>
   @registerCommand 'setstatus', { allowDM: true }, (msg, status)=>
      @bot.User.setStatus(status.toLowerCase())
      msg.channel.sendMessage 'Status has been changed!'
      
module.exports = StatusModule
