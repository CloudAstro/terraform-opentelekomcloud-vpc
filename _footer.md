## 🌐 Additional Information  

This module provides a flexible way to manage Virtual Private Clouds (VPCs) within OpenTelekomCloud, supporting key network features such as multiple CIDR blocks, resource tagging, and customizable operation timeouts. It is designed to be used for both standalone VPC deployments and as a foundation for larger network architectures.

## 📚 Resources

- [Terraform OpenTelekomCloud VPC Resource](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs/resources/vpc_v1)  
- [OpenTelekomCloud VPC Overview](https://docs.otc.t-systems.com/vpc/)  
- [Terraform OpenTelekomCloud Provider](https://registry.terraform.io/providers/opentelekomcloud/opentelekomcloud/latest/docs)  

## ⚠️ Notes  

- Ensure CIDR blocks do not overlap with existing networks to prevent IP conflicts.  
- Secondary CIDR blocks are optional but must be planned carefully for future scalability.  
- Tagging can greatly simplify resource management and cost allocation across your cloud environment.  
- Be aware of region-specific VPC limitations and quotas in OpenTelekomCloud when designing your architecture.

## 🧾 License  

This module is released under the **Apache 2.0 License**. See the [LICENSE](./LICENSE) file for full details.
