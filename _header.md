# OpenTelekomCloud VPC Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md) [![Notice](https://img.shields.io/badge/notice-copyright-blue.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![OpenTofu Registry](https://img.shields.io/badge/opentofu-registry-yellow.svg)](https://search.opentofu.org/module/CloudAstro/vpc/opentelekomcloud/)

This module is designed to manage Virtual Private Clouds (VPCs) within OpenTelekomCloud (OTC). It provides flexible configuration options for VPC creation, including CIDR settings, secondary CIDR blocks, tagging, and customizable timeouts for create and delete operations.

# Features

- **VPC Management**: Automates the creation and management of VPCs in OpenTelekomCloud.
- **Custom CIDR Configuration**: Supports primary and secondary CIDR block assignment.
- **Tagging Support**: Allows adding metadata tags to VPC resources.
- **Timeout Control**: Enables specifying custom create and delete operation timeouts through dynamic configuration.

# Example Usage

This example demonstrates how to provision a VPC with optional secondary CIDR blocks and custom timeout settings:
