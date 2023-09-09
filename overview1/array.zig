const std = @import("std");
pub fn main() void {
    const a = [_]i32{ 1, 2, 3 };
    const end: usize = 53;
    const b = a[1..end];
    std.debug.assert(b.len == 2);
}
