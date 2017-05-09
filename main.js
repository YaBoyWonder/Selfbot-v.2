require('coffeescript/register')
const os = require('os');
const path = require('path');
const FocaBotCore = require('focabot-core');

const selfBot = new FocaBotCore({
  name:       'SelfBot v.2',
  selfBot:    true,
  prefix:     's.',
  token:      ":V",
  
  modulePath: path.join(__dirname, './modules'),
});

selfBot.modules.load(['ping', 'status, poll, info, msgs']);

selfBot.establishConnection();

console.log(`--- Started (${new Date()}) ---`);
