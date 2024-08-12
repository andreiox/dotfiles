vim.filetype.add({
  pattern = {
    ['.*_config.edn.base'] = 'clojure',
    ['.*_config.json.base'] = 'json',
  },
})
