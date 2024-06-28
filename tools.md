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

## Use Cast

```shell
cast --to-base 0x716f6 dec
# 464630
```

## Never Use Any Env

`cast wallet import` Import a private key into an encrypted keystore.

[cast wallet import](https://book.getfoundry.sh/reference/cast/cast-wallet)

```shell
 cast wallet import defaultKey --interactive
```

this command will show:

```shell
Enter private key:
Enter password: 
"defaultKey" keystore was saved successfully. Address: 0xf39f...
```

```shell
cast wallet list
# defaultKey (Local)
```

```shell
forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url http://127.0.0.1:8545 --account defaultKey --sender 0x6C1FD22c1D8023B52eA6bdCA68E2C061249cACE7 --broadcast -vvvv
```

[REC-2335](https://eips.ethereum.org/EIPS/eip-2335)
