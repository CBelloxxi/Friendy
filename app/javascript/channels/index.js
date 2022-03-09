// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// AOS.init();

// You can also pass an optional settings object
// below listed default settings

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"
import AnimatedNumber from "stimulus-animated-number"

const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
application.register("animated-number", AnimatedNumber)
