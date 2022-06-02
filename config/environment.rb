# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

const {environment} = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    jquery: 'jquery/src/jquery',
  })
)

module.exports = environment