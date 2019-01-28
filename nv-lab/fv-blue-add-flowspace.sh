#!/bin/bash
fvctl -n add-flowspace bfs1 1 1 in_port=1,nw_src=10.0.0.1,nw_dst=10.0.0.2 blue=7
fvctl -n add-flowspace bfs2 1 1 in_port=2,nw_src=10.0.0.2,nw_dst=10.0.0.1 blue=7
fvctl -n add-flowspace bfs3 2 1 in_port=2,nw_src=10.0.0.1,nw_dst=10.0.0.2 blue=7
fvctl -n add-flowspace bfs4 2 1 in_port=1,nw_src=10.0.0.2,nw_dst=10.0.0.1 blue=7
