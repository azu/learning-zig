const std = @import("std");
pub fn main() void {
    if (std.mem.eql(u8, "GET", "GET") or std.mem.eql(u8, "POST", "POST")) {
        std.log.info("equal\n", .{});
    } else {
        std.log.info("not equal\n", .{});
    }
}
