##### files/fish tree

- ``cli`` dir is the basedir and will be sync on all hosts
- ``desktop`` dir will be sync only on desktop hosts.
- If you want to configure something for a specific host, use this snippets in *fish* script:
```
if test "$hostname" = "host1" 
    set -x key "value"
end
```

```
fish
├── cli
│   ├── conf.d      # Default config dir
│   ├── config.fish # Default config file
│   └── functions   # Default functions dir
└── desktop
    ├── conf.d      # Desktop hosts config dir
    └── functions   # Desktop hosts functions dir
```
