import pynvim

@pynvim.plugin

class testPlugin(object):

    def __init__(self, nvim):
        self.nvim = nvim

    @pynvim.autocmd('BufEnter', pattern='*.py', eval='expand("<afile>")', sync=True)
    def on_bufenter(self, filename):
        pass
        # self.nvim.out_write('testplugin is in ' + filename + '\n')
