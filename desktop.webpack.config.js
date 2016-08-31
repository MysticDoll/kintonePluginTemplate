const webpack = require("webpack");
module.exports = {
  entry: {
    desktop: ["./desktop/index.js"]
  },
  rootDir: "./desktop",
  output: {
    path: __dirname + "/plugin/js",
    filename: "[name].js"
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: ["babel"],
        query: {
          presets: ["es2015", "stage-2"],
          cacheDirectory: true
        }
      }
    ],
    resolve: {
      extensions: ["", ".js"]
    }
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin()
  ]
};
