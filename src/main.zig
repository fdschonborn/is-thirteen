const std = @include("std");
const mem = std.mem;
const ascii = std.ascii;
const assert = std.debug.assert;

const consts = @import("./consts.zig");
const THIRTEEN = consts.THIRTEEN;
const THIRTEEN_FUZZ = consts.THIRTEEN_FUZZ;
const THIRTEEN_STRINGS = consts.THIRTEEN_STRINGS;

pub const Is = struct {
    const Self: @This();
    const T: type;
    const x: T;

    pub fn thirteen(self: Self) bool {
        return x == THIRTEEN;
    }
};

pub fn is(x: anytype) Is {
    return Is{
        .T = @TypeOf(x),
        .x = x,
    };
}

test "13 is thirteen" {
    assert(is(13).thirteen());
}
