# Variables for common values


$resourceGroup = "GhilliGroup"


$location = "westeurope"


$vmName = "Mersal"

# Create a user object


$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

# Create a resource group


New-AzureRmResourceGroup -Name $GhilliGroup -Location $location


# Create a virtual machine


New-AzureRmVM `
 -ResourceGroupName $resourceGroup `
 -Name $vmName `
 -Location $location `
 -ImageName "CentOS" `
 -VirtualNetworkName "TestVnet" `
 -SubnetName "mySubnet"

 `
 -SecurityGroupName "myNetworkSecurityGroup" `
 -PublicIpAddressName "myPublicIp"  `
 -Credential $cred

  `
 -OpenPorts 3389