const std = @import("std");
pub const User = struct {
    powrt: u64 = 0,
    name: []const u8,

    pub fn init(name: []const u8) User {
        return .{
            .name = name,
            .powrt = 0,
        };
    }
};

pub fn main() void {
    var user = User.init("powrt");
    std.debug.print("Hello, world! {s}", .{user.name});
}
