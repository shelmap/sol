
This repository contains a simple Ethereum smart contract written in Solidity. The contract consists of two parts: mortal and greeter.

## mortal Contract
The `mortal` contract provides basic functionality for contract destruction. It has the following features:

- __Constructor (`mortal()`)__: Initializes the contract by setting the owner variable to the address of the contract deployer.
- __Function (`kill()`)__: Allows the owner of the contract to self-destruct it, sending any remaining funds to the owner's address.

## greeter Contract
The `greeter` contract inherits from the `mortal` contract and introduces a basic greeting functionality. Key features include:

- __Constructor (`greeter(string _greeting)`)__: Initializes the contract with a specified greeting message.
- __Function (`greet()`)__: Returns the stored greeting message.
Usage
To use these contracts, you need to deploy them on the Ethereum blockchain using a development environment or online platform like Remix. Follow these steps:

Deploy the mortal contract first.
Deploy the greeter contract, specifying the initial greeting message during deployment.
Once deployed, you can interact with the contracts using Ethereum transactions.

Note
Be cautious when using the kill() function, as it permanently destroys the contract.
