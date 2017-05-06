alias psr2='phpcs --colors -n --standard=psr2'
alias psr2diff='phpcs --colors -n --standard=psr2 --report=diff'

_phpcs() {
    _arguments -s -w \
        '(-)'{-h,--help}'[Prints a usage information]' \
        '--basepath=[A path to strip from the front of file paths inside reports]:base path:_files -/' \
        '--cache[Cache results between runs]' \
        '--colors[Use colors in output]' \
        '--config-delete' \
        '--config-set' \
        '--config-show' \
        '--encoding=[The encoding of the files being checked (default is utf-8)]' \
        '--error-severity=[The minimum severity required to display an error]' \
        '--exclude=[A comma separated list of sniff codes to exclude from checking]' \
        '--extensions=[A comma separated list of file extensions to check]' \
        '--generator=[Uses either the "HTML", "Markdown" or "Text" generator]:generator:("HTML" "Markdown" "Text")' \
        '--help[Print a help message]' \
        '--ignore-annotations[Ignore all @codingStandard annotations in code comments]' \
        '--ignore=[A comma separated list of patterns to ignore files and directories]' \
        '--no-cache[Do not cache results between runs (this is the default)]' \
        '--no-colors[Do not use colors in output (this is the default)]' \
        '--parallel=[How many files should be checked simultaneously (default is 1)]' \
        '--report-file=[Write the report to the specified file path]:report file:_files -/' \
        '--report-width=[How many columns wide screen reports should be printed]:report width:("auto")' \
        '--report=[The report type]:report:("full" "xml" "checkstyle" "csv" "json" "junit" "emacs" "source" "summary" "diff" "svnblame" "gitblame" "hgblame" "notifysend")' \
        '--runtime-set' \
        '--severity=[The minimum severity required to display an error or warning]' \
        '--sniffs=[A comma separated list of sniff codes to include for checking]' \
        '--standard=[The name or path of the coding standard to use]:standard:("psr1" "psr2" "pear")' \
        '--stdin-path=[If processing STDIN, the file path that STDIN will be processed as]:stdin path:_files -/' \
        '--tab-width=[The number of spaces each tab represents]' \
        '--version[Print version information]' \
        '--warning-severity=[The minimum severity required to display a warning]' \
        '-a[Run interactively]' \
        '-d[Sets a php.ini value]' \
        '-e[Explain a standard by showing the sniffs it includes]' \
        '-i[Show a list of installed coding standards]' \
        '-l[Local directory only, no recursion]' \
        '-m[Stop error messages from being recorded]' \
        '-n[Do not print warnings (shortcut for --warning-severity=0)]' \
        '-p[Show progress of the run]' \
        '-q[Quiet mode; disables progress and verbose output]' \
        '-s[Show sniff codes in all reports]' \
        '-v[Print processed files]' \
        '-vv[Print ruleset and token output]' \
        '-vvv[Print sniff processing information]' \
        '-w[Print both warnings and errors (this is the default)]' \
        '*:file:_files -/' && return 0
}

compdef _phpcs phpcs
compdef _phpcs phpcs.phar
