Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme star

if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
}

Set-Alias -Name code -Value code-insiders.cmd
