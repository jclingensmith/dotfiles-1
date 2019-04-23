These scripts perform platform specific configuration only. They may may use of
`obtain` from `/etc/util.sh`.

These scripts are sourced automatically by `/provision.sh`.  To run them
manually, first source `/etc/util.sh` before sourcing the applicable script as
the current user. Sudo may be used inside scripts.

Script working directory is the root of the repository.

Script should be idempotent and not result in lost configuration.