const std = @import("std");

fn addFive(x: u32) u32 {
    return x + 5;
}

test "function" {
    const y = addFive(0);
    try std.testing.expect(@TypeOf(y) == u32);
    try std.testing.expect(y == 5);
}
