const ascii = @import("std").ascii;

pub fn isIsogram(str: []const u8) bool {
    var result: [26]bool = .{false} ** 26;

    for (str) |char| {
        if (!ascii.isAscii(char) or !ascii.isAlphabetic(char)) continue;
        const index = ascii.toLower(char) - 'a';

        if (result[index]) {
            return false;
        } else {
            result[index] = true;
        }
    }

    return true;
}
