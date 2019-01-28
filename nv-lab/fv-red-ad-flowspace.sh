#!/bin/bash
fvctl -n add-flowspace rfs1 2 1 in_port=1,nw_src=10.0.0.2,nw_dst=10.0.0.3 red=7
fvctl -n add-flowspace rfs2 2 1 in_port=3,nw_src=10.0.0.3,nw_dst=10.0.0.2 red=7
fvctl -n add-flowspace rfs3 3 1 in_port=1,nw_src=10.0.0.3,nw_dst=10.0.0.2 red=7
fvctl -n add-flowspace rfs4 3 1 in_port=2,nw_src=10.0.0.2,nw_dst=10.0.0.3 red=7
