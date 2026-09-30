const std = @import("std");

pub fn run(io: std.Io, file: []u8) !void {
    try std.Io.File.stdout().writeStreamingAll(io, file);
}

