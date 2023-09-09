const std = @import("std");
pub fn main() !void {
    if (std.mem.eql(u8, "GET", "GET") or std.mem.eql(u8, "POST", "POST")) {
        std.log.info("equal\n", .{});
    } else {
        std.log.info("not equal\n", .{});
    }

    const retAnn = anniversaryName(1);
    _ = retAnn;
    return error.OK;
}

fn anniversaryName(years_married: u16) []const u8 {
    switch (years_married) {
        1 => return "paper",
        2 => return "cotton",
        3 => return "leather",
        4 => return "flower",
        5 => return "wood",
        6 => return "sugar",
        // defaultcase
        else => return "default",
    }
}
