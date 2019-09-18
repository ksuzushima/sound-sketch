const path = require('path')

const modules = {
  rules: [
    {
      test: /\.(js|jsx)$/,
      exclude: /node_modules/,
      use: {
        loader: 'babel-loader'
      }
    }
  ]
}

const config = {
  mode: 'production',
  entry: path.resolve(__dirname, 'assets/src/entry.js'),
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'assets/public')
  },
  module: modules
}

module.exports = config