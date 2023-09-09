const std = @import("std");
const User = @import("./start.zig").User;
pub fn main() void {
    var user = User{ .name = "Bob", .age = 20 };
    std.debug.print("Hello, {s}, you are {d} years old.\n", .{ user.name, user.age });
}
