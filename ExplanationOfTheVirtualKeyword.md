# Explanation Of The Virtual Keyword

In Solidity, the virtual keyword is used to indicate that a function can be overridden by derived (child) contracts. This is part of Solidity's support for inheritance and polymorphism, which allows you to create a base contract with functions that can be customized in child contracts.

Here's a simple breakdown of how it works:

1. Base Contract: The contract that defines a function with the virtual keyword. This function can be overridden by any contract that inherits from this base contract.
2. Derived Contract: The contract that inherits from the base contract and overrides the virtual function. The overriding function must use the override keyword.

## Example

Let's look at an example to understand this better:

### Base Contract

```solidity
pragma solidity ^0.8.19;

contract BaseContract {
    function sayHello() public virtual returns (string memory) {
        return "Hello from BaseContract";
    }
}
```

In BaseContract, the sayHello function is marked as virtual, meaning it can be overridden by derived contracts.

### Derived Contract

```solidity
pragma solidity ^0.8.19;

import "./BaseContract.sol";

contract DerivedContract is BaseContract {
    function sayHello() public override returns (string memory) {
        return "Hello from DerivedContract";
    }
}
```

- In DerivedContract, the sayHello function overrides the virtual function from BaseContract.
- The override keyword indicates that this function replaces the base contract's version.

## How It Works

1. When you call sayHello on an instance of BaseContract, it returns "Hello from BaseContract".
2. When you call sayHello on an instance of DerivedContract, it returns "Hello from DerivedContract".

This allows for flexibility and extensibility in contract design. You can define default behavior in a base contract and allow derived contracts to customize that behavior as needed.
