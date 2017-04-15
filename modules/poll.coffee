options = ['🇦','🇧', '🇨','🇩','🇪','🇫','🇬','🇭','🇮','🇯','🇰','🇱','🇲','🇳','🇴']
class PollModule extends BotModule
  init: =>
    { @permissions } = @engine

    @registerCommand 'poll', {argSeparator: '|'}, (msg, args)=>
      return msg.reply 'Too many answers!!.' if args.length > 16
      return msg.reply 'You may only use 2 answers.' if args.length < 3
      poll =
        question: args[0]
        answers: args.slice(1)
      embed =
        color: 0xF9EDEA
        title: poll.question
        description: ''
      for answer,i in poll.answers
        embed.description += "#{options[i]} - #{answer}\n"
      msg.channel.sendMessage("#{msg.author.mention} started a poll: ", false, embed)
      .then (m)=>
        for i in [0..poll.answers.length-1]
          m.addReaction(options[i])
module.exports = PollModule
