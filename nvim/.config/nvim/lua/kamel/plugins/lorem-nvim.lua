return {
  'derektata/lorem.nvim',
  keys = {
    { '<leader>li', ':LoremIpsum words 50<CR>', mode = 'n', desc = 'Insert 50 Lorem Ipsum words' }
  },
  config = function()
    require('lorem').opts {
      sentenceLength = "medium",
      comma_chance = 0.2,
      max_commas_per_sentence = 2,
    }
  end
}
