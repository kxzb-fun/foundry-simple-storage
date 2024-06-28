# Interactive Command

## Ganache

```shell
forge create SimpleStorage --rpc-url http://127.0.0.1:7545 --interactive
```

## Anvil

```shell
forge create SimpleStorage --interactive
# or
forge create SimpleStorage --rpc-url http://127.0.0.1:8545 --interactive
```

## Clear Bash History

```shell
history -c
```

## Broadcast

```shell
# step1
anvil
# step2
forge script script/DeploySimpleStorage.s.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key <your-private-key>
```
