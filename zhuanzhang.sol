pragma solidity ^0.8.10;

contract TransAccount{
    string public _string = "reward";
    uint256 public bal;   //显示合约的余额
    uint public scorea;
    uint public scoreb;

    //DR向合约转账
    function constract_get_money() public payable {

    }

    //获取合约余额
    function get_constract_balance() public {
        bal = address(this).balance;
    }
    //账户地址
    address addra = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address addrb = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;  //第二个账户
    address addrc = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;  //第三个账户
    

    //得分情况，a，b表示分数，根据分数比例来转账。 由于solidity不支持小数，
    //所以这里用分数来表示，a如果是2表示a地址能分到1/2，一次类推。
    function get_score(uint a, uint b) public {
        scorea = a;
        scoreb = b;
    }

    //合约转给用户(DP)，transfer谁调用就是给谁转钱。
    function trans() public {
        payable(addrb).transfer(bal * 1/scorea);
        payable(addrc).transfer(bal * 1/scoreb);
    }
}