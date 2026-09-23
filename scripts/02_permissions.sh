#!/bin/bash -ex

cd "/workspaces/debian/lab0"
chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/kitchen
chmod 750 claude_monet/kitchen/hot_station
chmod u=rw,g=r,o= claude_monet/kitchen/hot_station/hot_report
chmod 640 claude_monet/kitchen/hot_station/senya_check
chmod u=rwx,g=rx,o= claude_monet/kitchen/cold_room
chmod 644 claude_monet/kitchen/cold_room/fridge_temperature
chmod u=rw,g=r,o= claude_monet/kitchen/cold_room/fish_check
chmod 750 claude_monet/sanitation
chmod u=rw,g=r,o= claude_monet/sanitation/inspection_act
chmod 640 claude_monet/sanitation/violations
chmod u=rwx,g=rx,o= claude_monet/cleaning
chmod 644 claude_monet/cleaning/cleaning_schedule
chmod 755 claude_monet/hall
chmod u=rw,g=r,o=r claude_monet/hall/waiter_note
chmod u=rwx,g=rx,o= claude_monet/office
chmod 640 claude_monet/office/vika_response
chmod u=rw,g=r,o= inspector_arrival
ls -lR
