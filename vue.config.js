const { defineConfig } = require('@vue/cli-service')
const PugPlugin = require('pug-plugin');


module.exports = defineConfig({
    transpileDependencies: true,

    configureWebpack: {
        module: {
            rules: [
                
                {
                    test: /\.coffee$/,
                    loader: "coffee-loader"
                }
            ]
        }
    }
})
