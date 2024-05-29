// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;


interface ISuppliable {
  function isSupplier(address _supplier) external view returns (bool);
  function addSupplier(address _supplier) external;
  function removeSupplier(address _supplier) external;

  event SupplierAdded(address indexed supplier);
  event SupplierRemoved(address indexed supplier);
}
