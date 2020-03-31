import subprocess
from .base import Base as BaseSource
from ..kind.base import Base as BaseKind

def run_command(commands, cwd, encoding='utf-8'):
    try:
        p = subprocess.run(commands,
                           cwd=cwd,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError:
        return []

    return p.stdout.decode(encoding).split('\n')



class Source(BaseSource):

    def __init__(self, vim):
        super().__init__(vim)
        self.vim = vim
        self.name = 'tmuxsessions'
        self.kind = TmuxSessionKind(vim)

    def gather_candidates(self, context):
        command = ['tmux', 'list-sessions']
        condidates = []
        lines = run_command(command, '.')
        self.vim.out_write('gathering candidates')
        for line in lines:
            condidates.append({ 'word': line.split(':')[0] })

        return condidates

class TmuxSessionKind(BaseKind):
    def __init__(self, vim):
        super().__init__(vim)
        self.vim = vim
        self.name = 'tmux_session'
        self.default_action = 'switch_client'

    def action_switch_client(self, context):
        target = context['targets'][0]
        session = target['word']
        run_command(['tmux', 'switch-client', '-t', session], '.')
        # self.vim.command('echom "' + session + '"')
