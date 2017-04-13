require('coffeescript/register')
const os = require('os');
const path = require('path');
const FocaBotCore = require('focabot-core');

const selfBot = new FocaBotCore({
  name:       'SelfBot v.2',
  selfBot:    true,

  prefix:     'self.',
  token:      ":V",
  waifuTag:   '', // danbooru tag

  modulePath: path.join(__dirname, 'modules/'),
});

selfBot.modules.load(['ping', 'danbooru', 'image', 'msgs', 'ping', 'poll', 'seal', 'statics', 'status']);

selfBot.establishConnection();

console.log(`--- Started (${new Date()}) ---`);
