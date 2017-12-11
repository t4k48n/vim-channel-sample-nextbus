# vim-channel-sample-nextbus

Sample of vim channel which communicates bus times with server

# Build

```
$ make
```

# How to Use

+ First, load the vim script file via `:source client.vim`.
+ `:BusInit` launches a server.
+ `:Bus` queries a next bus arrival time to the server.
+ `:BusQuit` quits the server.
