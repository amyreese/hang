// Copyright (c) 2009 John Reese
//
// Behold my ability to make an infinite
// loop that doesn't eat up resources.

#include <unistd.h>

int main( int argc, char* argv[] ) {
	while( 1 ) {
		sleep( 3600 ); // wait up to an hour at a time
	}

	return 0;
}

