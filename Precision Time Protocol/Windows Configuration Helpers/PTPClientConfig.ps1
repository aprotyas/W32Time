# Modify the following entry "10.10.10.10 10.10.10.11" as a space-separated list of your PTP grandmasters

reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_SZ /v PtpMasters /d "10.10.10.10 10.10.10.11" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v Enabled /d 1 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v InputProvider /d 1 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_SZ /v DllName /d "C:\windows\system32\ptpprov.dll" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v DelayPollInterval /d 0x3e80 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v AnnounceInterval /d 0x0fa0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v EnableMulticastRx /d 0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\PtpClient /t REG_DWORD /v UseE2ECorrection /d 1 /f


# Disable other input providers
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpClient /t REG_DWORD /v Enabled /d 0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\VMICTimeProvider /t REG_DWORD /v Enabled /d 0 /f
