const { webpackConfig, merge } = require('shakapacker')
const customConfig = {
    resolve: {
        extensions: ['.css', '.sass', '.scss']
    }
}

module.exports = merge(webpackConfig, customConfig)
