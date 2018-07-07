# Variables for common values


$resourceGroup = "myResourceGroup"


$location = "westeurope"


$vmName = "LinuxVM"

# Create a user object
$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

# Create a resource group
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

# Create a virtual machine


New-AzureRmVM `
 -ResourceGroupName $resourceGroup `
-Name $vmName `
-Location $location `
-ImageName "RHEL" `
-VirtualNetworkName "LinuxVnet" `
-SubnetName "mySubnet" `
-SecurityGroupName "LinuxNetworkSecurityGroup" `
-PublicIpAddressName "LinuxPublicIp" `
-Credential $cred `
-OpenPorts 22