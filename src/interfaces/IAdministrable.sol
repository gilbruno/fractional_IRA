// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

/**
 * @title IAdministrable
 * @dev IAdministrable interface
 **/


interface IAdministrable {

    function addAdmin(address account) external;
    function removeAdmin(address account) external;
    function isAdmin(address account) external view returns (bool);

    event AdminAdded(address indexed administrator);
    event AdminRemoved(address indexed administrator);

}
