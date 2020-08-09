#!/bin/sh
/app/YACReaderLibraryServer create-library comics /comics &&
/app/YACReaderLibraryServer update-library /comics &&
/app/YACReaderLibraryServer start

