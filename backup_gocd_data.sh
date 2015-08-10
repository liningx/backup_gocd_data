#!/bin/bash
#back up gocd server data

backdir=/backup/

filename=$(date +%Y-%m-%d).tar
go_backfile=$backdir/go.$filename
godb_backfile=$backdir/godb.$filename
artifact_backfile=$backdir/goartifact.$filename

cd /etc/
tar -cvp -f $go_backfile go

cd /var/lib/go-server
tar -cvp -f $godb_backfile db

cd /var/lib/go-server
tar -cvp -f $artifact_backfile artifacts
