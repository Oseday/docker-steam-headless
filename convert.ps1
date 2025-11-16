# Using unix2dos to convert line endings from Unix (LF) to Windows (CRLF) for all objects in the current directory and its subdirectories
Get-ChildItem -Recurse | ForEach-Object {
	if (-not $_.PSIsContainer) {
		dos2unix $_.FullName
	}
}