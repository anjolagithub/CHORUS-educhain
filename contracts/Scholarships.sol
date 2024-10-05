// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Scholarship {
    struct Applicant {
        address applicantAddress;
        string name;
        uint256 amountRequested;
        bool isApproved;
    }

    mapping(address => Applicant) public applicants;

    function applyForScholarship(string memory name, uint256 amount) public {
        applicants[msg.sender] = Applicant(msg.sender, name, amount, false);
    }

    function approve(address applicantAddress) public {
        applicants[applicantAddress].isApproved = true;
    }
}