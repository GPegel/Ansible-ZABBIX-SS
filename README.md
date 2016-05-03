# Ansible-ZABBIX-SS
Ansible Playbook for creating a Zabbix Server on a Single Server

Zabbix Version used = 3.0.2

Tested on CentOS 7

Before you start!!! Do not forget to change the passwords in "environments/production/group_vars/all" to your own needs.

When this playbook is finished without any errors, Zabbix will be available at http://server.ip.address/zabbix

Please do not forget to enable the Zabbix Agent via "Configuration" -> "Hosts" -> "Status". Change 'disabled' to 'enabled'.
