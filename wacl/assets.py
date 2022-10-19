from pathlib import Path

from clld.web.assets import environment

import wacl


environment.append_path(
    Path(wacl.__file__).parent.joinpath('static').as_posix(),
    url='/wacl:static/')
environment.load_path = list(reversed(environment.load_path))
