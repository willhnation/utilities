# utilities
Helpful pieces of code that I've written

## fileDuplicator
A simple PowerShell script that creates multiple copies of a file. I use this often when performing large load tests.

### Usage
From PowerShell, run the following command

    PS> .fileDuplicator.ps1 "<sourceFile>" "<destinationFile>"

As you might expect, this will make a single copy of \<sourceFile\> into the file path specified in \<destinationFile\>, with a "0" appended to the destination file name.

If you want more than 1 copy, you can add a third parameter like so

    PS> .fileDuplicator.ps1 "<sourceFile>" "<destinationFile>" numFiles

### Troubleshooting
If this is your first time running a PowerShell script, you may get the following error.

> ... fileDuplicatorl.ps1 cannot be loaded because the execution of scripts is disabled on this system. Please see "get-help about_signing" for more details.

For a quick solution, you can right-click PowerShell on the icon tray and select "Run as Administrator". In the admin PowerShell console, run:

    PS>Set-ExecutionPolicy RemoteSigned

You should then be able to execute the script without having to restart PowerShell.

You can read more information about [PowerShell's Execution Policy here](https://technet.microsoft.com/library/hh847748.aspx)
