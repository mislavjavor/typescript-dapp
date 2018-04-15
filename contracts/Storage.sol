pragma solidity 0.4.21;


contract Storage {

    bytes32[] private _messages;

    function addMessage(bytes32 message) public {
        _messages.push(message);
    }

    function removeMessage(uint position) public {
        require(_messages[position].length > 0);
        delete _messages[position];
    }

    function getMessage(uint position) public view returns (bytes32) {
        require(_messages[position].length > 0);
        return _messages[position];
    }

}
