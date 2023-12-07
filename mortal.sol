contract mortal {
     /*There is a separate type of variables for addresses*/
     address owner;

     /*This function is executed only once - when loading the contract into the blockchain
     Also called contract
     The owner variable will be assigned the value of the address of the sender of the contract, that is, your address */
     function mortal() { owner = msg.sender; }

     /*The selfdestruct function destroys the contract and sends all funds from the contract account to the address specified in the argument*/
     /*In Ethereum, any network participant can call any function
     Verifying the address will only allow you to destroy the contract*/
     function kill() { if (msg.sender == owner) selfdestruct(owner); }
}

/*The is operator is responsible for inheritance*/
/*Multiple inheritance of the form contract_1 is contract_2, contract_3 is possible*/
contract greeter is mortal {
     string greeting;

     /*In this case, when initializing the contract, you will need to specify an argument string
     In our case, this will be “Hello, world!”*/
     function greeter(string _greeting) public {
         greeting = _greeting;
     }

     // This function is responsible for returning "Hello, world!"
     function greet() constant returns (string) {
         return greeting;
     }
}
