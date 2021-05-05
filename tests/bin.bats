#!/usr/bin/env bats

@test "dotfiles" {
	run dotfiles
	[[ $output =~ "Usage" ]]
}

@test "is-executable" {
	run is-executable ls
	[ "$status" -eq 0 ]
}

@test "is-executable (false)" {
	run is-executable nonexistent
	[ "$status" -eq 1 ]
}

@test "combine-files creates a myTestFilesCombined" {
	run combine-files myTestFile $DOTFILES_DIR/tests/dir3 myTestFilesCombined
	[ -f $DOTFILES_DIR/tests/dir3/myTestFilesCombined ]
}

@test "combine-files should return expected content" {
	run combine-files myTestFile $DOTFILES_DIR/tests/dir3 myTestFilesCombined
	ACTUAL=$(cat $DOTFILES_DIR/tests/dir3/myTestFilesCombined)
	EXPECTED="firstsecond"
	[ "$ACTUAL" = "$EXPECTED" ]
}