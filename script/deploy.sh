#!/bin/bash

compass compile -s compressed --force
git add -p
git commit
git put
