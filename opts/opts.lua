
require 'paths'

-- Train 1 day and gives 82 perplexity.
local params = {
  batch_size=20,
  seq_length=35,
  vocab_size=10000,
  layers=3,
  rnn_size=1500,
  dropout=0.65,
  init_weight=0.04,
  init_gamma = 0.1,
  lr=1,
  decay=1.15,
  max_epoch=14,
  max_max_epoch=55,
  max_grad_norm=10,
  bn_rnn = 'bn',
  optim = 'adam',
  optim_alpha = 0.9,
  optim_beta = 0.999,
  optim_epsilon = 1e-8,
}

local checkpoint_path = string.format(
  'PTB_word_bs%03d_seq_len%03d_%s_lstm_lay%02d_hid%d_drop%f_init_weight%f_init_gamma%f_lr%f_decay_every%d_seed%f_vocab10000_max_gradNorm%d',
  params.batch_size, params.seq_length, 
  params.bn_rnn, params.layers, params.rnn_size, params.dropout, 
  params.init_weight, params.init_gamma,
  params.lr, params.max_epoch, params.decay, params.max_grad_norm)
params.checkpoint_path = checkpoint_path

print(string.format('
  checkpoint_path: %s', params.checkpoint_path))

return params
