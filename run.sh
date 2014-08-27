#!/bin/bash

dx build -f .
dx run ftp_fetcher -i ftp_url=hgdownload.cse.ucsc.edu/goldenPath/danRer7/liftOver/ --destination /ftp_fetcher_output
