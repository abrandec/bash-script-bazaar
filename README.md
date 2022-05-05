# Bash Script Bazaar
No need to haggle, tis free


## Dir
```
src
└─ createBootable — "Create a bootable drive from an ISO"
```

## Development

**Setup**
```
chmod +x FILENAME.sh

```
**To use anywhere**
```
1. export PATH=$PATH:~/$dir
2. source ~/.zshrc || ~/.bashrc || ~/.etc
3. FILENAME.sh

```

**Using**

## createBootable.sh
Create a bootable drive from an ISO

###### Requires sudo
```
Commands:
-p, -path        | ISO file path
-d, -destination | destination drive
-h, -help        | HELP
lsblk            | List all available drives,
                 | run seperately in terminal
```

## License

AGPL-3.0-only

## Disclaimer

_These scripts are being provided as is. No guarantee, representation or warranty is being made, express or implied.  They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions or loss of transmitted information. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._
