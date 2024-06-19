// public variables here
string public tokenName = "Khyati";
string public tokenAbbrevation = "No";
uint public totalSupply = 0; 

// mapping variable here
mapping(address => uint) public balance;

// mint function
function mint(address _address, uint _value) public{
    totalSupply += _value;
    balance[_address] += _value;
}

// burn function
function burn(address _address, uint _value) public{
    if(balance[_address]>= _value)
        totalSupply -=_value;
    balance[_address]-= _value;
}