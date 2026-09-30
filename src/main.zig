const std = @import("std");
const gent_script = @import("gent_script");


pub fn main(init: std.process.Init) !void {
    const stdout = std.Io.File.stdout();
    defer stdout.close(init.io);

    const num_args = init.minimal.args.vector.len;

    if(num_args > 2) {
        try stdout.writeStreamingAll(init.io, "Usage: gent_script [script]\n");
    } else if (num_args == 2) {
        gent_script.run(init.io, init.minimal.args.vector[1].toSlice());
    }

}