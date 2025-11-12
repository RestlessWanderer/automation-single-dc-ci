# dc1_fabric

## Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

## Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision | Serial Number |
| --- | ---- | ---- | ------------- | -------- | -------------------------- | ------------- |
| dc1_fabric | l2leaf | LEAF1A | 192.168.0.13/24 | vEOS | Provisioned | - |
| dc1_fabric | l2leaf | LEAF1B | 192.168.0.14/24 | vEOS | Provisioned | - |
| dc1_fabric | l2leaf | LEAF2A | 192.168.0.15/24 | vEOS | Provisioned | - |
| dc1_fabric | l2leaf | LEAF2B | 192.168.0.16/24 | vEOS | Provisioned | - |
| dc1_fabric | l3spine | SPINE1 | 192.168.0.11/24 | vEOS | Provisioned | - |
| dc1_fabric | l3spine | SPINE2 | 192.168.0.12/24 | vEOS | Provisioned | - |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

### Fabric Switches with inband Management IP

| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

## Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l2leaf | LEAF1A | Ethernet49 | l3spine | SPINE1 | Ethernet1 |
| l2leaf | LEAF1A | Ethernet50 | l3spine | SPINE2 | Ethernet1 |
| l2leaf | LEAF1A | Ethernet51 | mlag_peer | LEAF1B | Ethernet51 |
| l2leaf | LEAF1A | Ethernet52 | mlag_peer | LEAF1B | Ethernet52 |
| l2leaf | LEAF1B | Ethernet49 | l3spine | SPINE1 | Ethernet2 |
| l2leaf | LEAF1B | Ethernet50 | l3spine | SPINE2 | Ethernet2 |
| l2leaf | LEAF2A | Ethernet49 | l3spine | SPINE1 | Ethernet3 |
| l2leaf | LEAF2A | Ethernet50 | l3spine | SPINE2 | Ethernet3 |
| l2leaf | LEAF2A | Ethernet51 | mlag_peer | LEAF2B | Ethernet51 |
| l2leaf | LEAF2A | Ethernet52 | mlag_peer | LEAF2B | Ethernet52 |
| l2leaf | LEAF2B | Ethernet49 | l3spine | SPINE1 | Ethernet4 |
| l2leaf | LEAF2B | Ethernet50 | l3spine | SPINE2 | Ethernet4 |
| l3spine | SPINE1 | Ethernet97/1 | mlag_peer | SPINE2 | Ethernet97/1 |
| l3spine | SPINE1 | Ethernet98/1 | mlag_peer | SPINE2 | Ethernet98/1 |

## Fabric IP Allocation

### Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |

### Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |

### Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 10.252.1.0/24 | 256 | 2 | 0.79 % |

### Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| dc1_fabric | SPINE1 | 10.252.1.1/32 |
| dc1_fabric | SPINE2 | 10.252.1.2/32 |

### VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------------ | ------------------- | ------------------ | ------------------ |

### VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
