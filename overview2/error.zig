const std = @import("std");
const OpenError = error{
    AccessDenied,
    NotFound,
};
pub fn main() !void {
    errorReturn() catch |err| return err;
    // これの短縮が try errorReturn();
}

fn errorReturn() OpenError!void {
    return OpenError.AccessDenied;
}
