#!/bin/bash

compass compile -s compressed
git add -p
git commit
git put
