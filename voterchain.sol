
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VoteChain {

    struct Candidate {
        uint256 id;
        string name;
        string description;
        uint256 voteCount;
    }

    Candidate[] private candidates;

    mapping(address => bool) public hasVoted;

    uint256 public totalVotes;

    address public owner;

    event VoteCast(
        address indexed voter,
        uint256 indexed candidateId,
        uint256 timestamp
    );

    constructor() {
        owner = msg.sender;

        candidates.push(Candidate(
            0,
            "Alex Morgan",
            "Innovation & Technology",
            0
        ));

        candidates.push(Candidate(
            1,
            "Sarah Chen",
            "Community & Sustainability",
            0
        ));

        candidates.push(Candidate(
            2,
            "Jordan Lee",
            "Education & Research",
            0
        ));
    }

    function vote(uint256 candidateId) external {
        require(!hasVoted[msg.sender], "Already voted");

        require(
            candidateId < candidates.length,
            "Invalid candidate"
        );

        hasVoted[msg.sender] = true;

        candidates[candidateId].voteCount++;

        totalVotes++;

        emit VoteCast(
            msg.sender,
            candidateId,
            block.timestamp
        );
    }

    function getCandidate(uint256 candidateId)
        external
        view
        returns (
            uint256,
            string memory,
            string memory,
            uint256
        )
    {
        require(
            candidateId < candidates.length,
            "Invalid candidate"
        );

        Candidate memory c = candidates[candidateId];

        return (
            c.id,
            c.name,
            c.description,
            c.voteCount
        );
    }

    function getCandidateCount()
        external
        view
        returns (uint256)
    {
        return candidates.length;
    }

    function getResults()
        external
        view
        returns (uint256[] memory)
    {
        uint256[] memory results =
            new uint256[](candidates.length);

        for (uint256 i = 0; i < candidates.length; i++) {
            results[i] = candidates[i].voteCount;
        }

        return results;
    }

    function getVotingStatus(address voter)
        external
        view
        returns (bool)
    {
        return hasVoted[voter];
    }
}
