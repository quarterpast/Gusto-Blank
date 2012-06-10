#!/usr/bin/env livescript
gusto = require \gusto
cluster = require \cluster
os = require \os

if cluster.isMaster
	for cpu of os.cpus! => cluster.fork!
else
	app = gusto.defaults!
	app.listen 8001