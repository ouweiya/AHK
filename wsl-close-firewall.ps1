Get-NetFirewallInterfaceFilter -AssociatedNetFirewallRule (Get-NetFirewallRule -DisplayName 'WSL')|Set-NetFirewallInterfaceFilter -InterfaceAlias 'vEthernet (WSL)'
