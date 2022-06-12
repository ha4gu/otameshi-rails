const { webpackConfig, merge } = require('shakapacker')
const customConfig = {
    resolve: {
        extensions: ['.css', '.sass', '.scss']
    },

    // RailsAdmin由来のwarningを抑制
    // 参考: https://stackoverflow.com/questions/68928352/webpack-suppressing-warnings-from-a-specific-file
    ignoreWarnings: [
        {
            file: /app\/javascript\/stylesheets\/rails_admin.scss$/,
            message: /^Deprecation Using \/ for division outside of calc/,
        },
        (warning, compilation) => true
    ],
}

module.exports = merge(webpackConfig, customConfig)
