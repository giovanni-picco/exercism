const toLower = @import("std").ascii.toLower;

pub const NucleotideError = error{Invalid};

pub const Counts = struct {
    a: u32 = 0,
    c: u32 = 0,
    g: u32 = 0,
    t: u32 = 0,

    pub fn add(self: *Counts, c: u8) NucleotideError!void {
        switch (toLower(c)) {
            'a' => self.a += 1,
            'c' => self.c += 1,
            'g' => self.g += 1,
            't' => self.t += 1,
            else => return error.Invalid,
        }
    }
};

pub fn countNucleotides(s: []const u8) NucleotideError!Counts {
    var counts: Counts = .{};
    for (s) |value| {
        try counts.add(value);
    }

    return counts;
}
