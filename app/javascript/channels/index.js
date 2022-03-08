// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// AOS.init();

// You can also pass an optional settings object
// below listed default settings
AOS.init({
  duration: 2500,
});
