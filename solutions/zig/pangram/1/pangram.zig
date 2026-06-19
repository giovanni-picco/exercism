const ascii = @import("std").ascii;

pub fn isPangram(str: []const u8) bool {
    // not enought letters
    if (str.len < 26) return false;

    var result: u32 = 0;

    for (str) |c| {
        // check if it is a valid char
        if (!ascii.isAscii(c)) continue;
        if (!ascii.isAlphabetic(c)) continue;

        // update the result
        result |= @as(u32, 1) << @truncate(ascii.toLower(c) - 'a');
    }

    return result == 0x3FFFFFF;
}
