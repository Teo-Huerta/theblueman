$regvalue = Get-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service -Name AllowAutoConfig

if($regvalue.AllowAutoConfig -ne 0){
    Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service -Name AllowAutoConfig -Value 0
}


