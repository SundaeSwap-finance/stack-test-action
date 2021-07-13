# Stack Test Action

This action executes the stack tests for the provided project. To shorten the test time, many libraries common to the
Cardano ecosystem have been pre-installed.

## Example usage

```yaml
on: [ push ]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Stack Test
    steps:
      - name: execute stack tests
        id: test
        uses: SundaeSwap-finance/stack-test-action@v1
```
