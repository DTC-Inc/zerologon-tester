# Run tester
$dcname=[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.Name.split('.')[0]
$dcip=[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().PdcRoleOwner.IPAddress
echo "[*] DC: $dcip ($dcname)"
cd $psScriptRoot\bin
.\zerologon_tester.exe $dcname $dcip