pragma solidity 0.8.18;

contract Own_Token {

    // public variables here
    string public tokenName = 'USD coin';
    string public tokenAbbrv = 'USDC';
    uint public total_supply = 0;

    // mapping variable here
    mapping(address => uint) public balances;
  
    // mint function
    function mint_Func (address _address, uint _value) public {
        total_supply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn_Func (address _address, uint _value) public {
        if(balances[_address] >= _value) {
            total_supply -= _value;
            balances[_address] -= _value;
    }
        }
       
}
