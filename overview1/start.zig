const std = @import("std");
pub const User = struct {
    name: []const u8,
    age: u8,
};
pub fn main() void {
    const user = User{
        .name = "John",
        .age = 20,
    };

    std.debug.print("User name: {s}, age: {d}\n", .{ user.name, user.age });
}
