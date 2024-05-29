// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {ISuppliable} from './interfaces/ISuppliable.sol';
import {IAdministrable} from './interfaces/IAdministrable.sol';
import {AccessControl} from "../lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

contract FractionArtWork is ISuppliable, IAdministrable, AccessControl {
    
    bytes32 public constant SUPPLIER_ROLE = keccak256("SUPPLIER");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN");

    function isSupplier(address _supplier) external view override returns (bool) {
        return hasRole(SUPPLIER_ROLE, _supplier);
    }

    function addSupplier(address _supplier) external override {
        grantRole(SUPPLIER_ROLE, _supplier);
        emit SupplierAdded(_supplier);
    }

    function removeSupplier(address _supplier) external override {
        revokeRole(SUPPLIER_ROLE, _supplier);
        emit SupplierRemoved(_supplier);
    }

    function addAdmin(address _admin) external override {
        grantRole(ADMIN_ROLE, _admin);
        emit AdminAdded(_admin);
    }

    function removeAdmin(address _admin) external override {
        revokeRole(ADMIN_ROLE, _admin);
        emit AdminRemoved(_admin);
    }

    function isAdmin(address account) external view override returns (bool)  {
        return hasRole(ADMIN_ROLE, account);
    }

}
