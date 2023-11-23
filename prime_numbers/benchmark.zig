const std = @import("std");

fn getPrimes7ManualEstimation(n: i32, res: **i32, count: *i32) !void {
    if (n < 2) return;

    if (n == 2) {
        (*res)[0] = 2;
        *count = 1;
        return;
    }

    const allocator = std.heap.page_allocator;
    var s = try allocator.alloc(i32, n / 2);
    var size = 0;

    var i: i32 = 3;
    while (i < n + 1) {
        s[size] = i;
        size += 1;
        i += 2;
    }

    const mroot = std.math.sqrt(f64(n));
    var half = size;
    i = 0;
    var m: i32 = 3;

    while (m <= mroot) {
        if (s[i] != 0) {
            var j = (m * m - 3) / 2;
            s[j] = 0;
            while (j < half) {
                s[j] = 0;
                j += m;
            }
        }
        i += 1;
        m = 2 * i + 3;
    }

    (*res)[0] = 2;
    *count = 1;

    i = 0;
    while (i < half) {
        if (s[i] != 0) {
            (*res)[*count] = s[i];
            *count += 1;
        }
        i += 1;
    }

    allocator.free(s);
}

fn getPrimes7FixedEstimation(n: i32, res: **i32, count: *i32) !void {
    if (n < 2) return;

    if (n == 2) {
        (*res)[0] = 2;
        *count = 1;
        return;
    }

    const allocator = std.heap.page_allocator;
    var max_primes = n / i32(std.math.log(f64(n)) - 1.08366);
    *res = try allocator.alloc(i32, max_primes);
    var s = try allocator.alloc(i32, n / 2);
    var size = 0;

    var i: i32 = 3;
    while (i < n + 1) {
        s[size] = i;
        size += 1;
        i += 2;
    }

    const mroot = std.math.sqrt(f64(n));
    var half = size;
    i = 0;
    var m: i32 = 3;

    while (m <= mroot) {
        if (s[i] != 0) {
            var j = (m * m - 3) / 2;
            s[j] = 0;
            while (j < half) {
                s[j] = 0;
                j += m;
            }
        }
        i += 1;
        m = 2 * i + 3;
    }

    (*res)[0] = 2;
    *count = 1;

    i = 0;
    while (i < half) {
        if (s[i] != 0) {
            (*res)[*count] = s[i];
            *count += 1;
        }
        i += 1;
    }

    allocator.free(s);
}

fn withManualEstimation() void {
    const start = std.time.milliTimestamp();

    var i: i32 = 0;
    while (i < 10) {
        const allocator = std.heap.page_allocator;
        var res = allocator.alloc(i32, 664579) catch return;
        var count: i32 = 0;

        getPrimes7ManualEstimation(10000000, &res, &count) catch return;
        std.debug.print("Found {} prime numbers (withManualEstimation).\n", .{count});

        allocator.free(res);
        i += 1;
    }

    const dif = std.time.milliTimestamp() - start;
    std.debug.print("Execution time: {} milliseconds (withManualEstimation).\n", .{dif});
}

fn withFixedEstimation() void {
    const start = std.time.milliTimestamp();

    var i: i32 = 0;
    while (i < 10) {
        const allocator = std.heap.page_allocator;
        var res: ?*i32 = null;
        var count: i32 = 0;

        getPrimes7FixedEstimation(10000000, &res, &count) catch return;
        std.debug.print("Found {} prime numbers (withFixedEstimation).\n", .{count});
        allocator.free(res.?);
        i += 1;
    }

    const dif = std.time.milliTimestamp() - start;
    std.debug.print("Execution time: {} milliseconds (withFixedEstimation).\n", .{dif});
}

pub fn main() void {
    withFixedEstimation();
    std.debug.print("\n\n---\n\n", .{});
    std.time.sleep(std.time.seconds(5));
    withManualEstimation();
}
