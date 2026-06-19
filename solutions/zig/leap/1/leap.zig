pub fn isLeapYear(year: u32) bool {
    const divBy4 = year % 4 == 0;
    const divBy100 = year % 100 == 0;
    const divBy400 = year % 400 == 0;

    return divBy4 and !divBy100 or divBy400;
}
