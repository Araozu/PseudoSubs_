module.exports = {
  configureWebpack: {
    module: {
      rules: [
        { test: /\.coffee$/, loader: "coffee-loader" }
      ]
    }
  },

  pluginOptions: {
    express: {
      shouldServeApp: true,
      serverDir: './srv'
    }
  },

  baseUrl: undefined,
  outputDir: undefined,
  assetsDir: undefined,
  runtimeCompiler: undefined,
  productionSourceMap: false,
  parallel: undefined,
  css: undefined
};
