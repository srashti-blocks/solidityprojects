// SPDX-Linence-Identifier : MIT
pragma solitidy ^0.8.0;
contract SecureBank {
     uint loan = 20000;
     address public owner;
     mapping(address => uint) private balances;
     constructo() { 
         owner = msg.sender;
      }
      modifier onlyOwner() {
          require(msg.sender ==owner,"only owner can do that");
          _;
      }
      function deposite() external payable {
            balances[msg.sender] +=msg.value;
            }
       function withdraw(uint amount) external {
            require(balances[msg.sender]>= amount,"insufficient fund");
            balances[msg.sender] -= amount;
            payable (msg.sender).transfer(amount);
            }
        function checkMyBalance() external view onlyOwner returns(uint) {
            return balance[msg.sender];
            }
        function getBankBalances() external view onlyOwner returns(uint) {
            return address(this).balance;
            }
        function takeLoan(uint amount) external pure returns(uint) {
               require(balances[msg.sender]>= amount,"take loan ");
               balances[msg.sender] += amount;
               loan -= amount;
               return loan;
               }
          
