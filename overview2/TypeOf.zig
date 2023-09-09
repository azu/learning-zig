const std = @import("std");
pub fn main() void {
    const T = @TypeOf(3);
    std.debug.print("{any}\n", .{T});
}
