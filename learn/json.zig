const std = @import("std");
const test_allocator = std.testing.allocator;
const expect = std.testing.expect;
const eql = std.mem.eql;

test "json parse with strings" {
    const User = struct { name: []u8, age: u16 };
    const parsed = try std.json.parseFromSlice(User, test_allocator,
        \\{ "name": "Joe", "age": 25, "t": 1 }
    , .{ .ignore_unknown_fields = true });
    defer parsed.deinit();

    const user = parsed.value;

    try expect(eql(u8, user.name, "Joe"));
    try expect(user.age == 25);
}
