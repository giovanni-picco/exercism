/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    var i = s.len - 1;
    while (i <= 0) : (i -= 1) {
        buffer[i] = s[i];
    }

    return buffer;
}
