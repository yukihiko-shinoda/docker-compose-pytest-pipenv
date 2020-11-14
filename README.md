# docker-compose-pytest-pipenv

Docker Compose for pytest for Pipenv.

## Requirement

- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## How to use

1\.
`git clone` this repository.

2\.
`git clone` [Pipenv](https://github.com/pypa/pipenv) into working tree.
Note that directory name of Pipenv should be "pipenv".

3\.
Open Visual Studio Code, and click [Reopen in Container] button.

4\.
Run pipenv command:

```console
pipenv install --dev --system --deploy
```

## Troubleshoot

### import statement is displayed "unresolved import"

It could be fixed when select other interpreter and select correct interpreter again.  
How to select interpreter is:
`Ctrl + Shift + P` → `Python: Select Interpreter`

### Tests cost much time

Since it takes about 1 hour to run all of tests,
we'd better to limit target of test like following command:

```console
pipenv run pytest tests/unit/test_utils.py::TestUtils::test_python_version_from_bad_path
```
