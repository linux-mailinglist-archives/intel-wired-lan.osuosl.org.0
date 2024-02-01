Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78D84575D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 13:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D63F3404CF;
	Thu,  1 Feb 2024 12:23:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D63F3404CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706790233;
	bh=R2F5McWR8GCWmWdXz2YP80CEC2QOT3Pte4WNJH0HUYk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SxAYRPGhGLNtMih3cLb9q2oVU9UXHWRORV1iJ9kUDHk/t0gAokdMDrkW+YPiqZwMH
	 Qdahg2KrYutsNz+I6slLKL6iBGERU9b3zdfcRpyaTbjKTqhdTUQawdu0w1XDndrDW3
	 for4atV5yj1DkyFTtL9Dsp18Ck5iJZMB12I7C2PUq6ggXmpTZhdeVS3fmVdPu652KR
	 zNEg58no1srPy3tRzVvhdllF9n93ISpUzbyATMXxLG4+0XzKkH/AlVTSySepLmQ11V
	 SMyVU9GiEslYkMGYzE8C/bwNiMpT7L764nLrolKIOtoQ3iqFh65nf+J5LIcciHnLmZ
	 cVptNk8h3qnqA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id syV9zRQFMKTi; Thu,  1 Feb 2024 12:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88EE740144;
	Thu,  1 Feb 2024 12:23:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88EE740144
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C10EC1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A2FB81882
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2FB81882
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhc8ZNyqtCmF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 12:23:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B0E68179D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 12:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B0E68179D
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3746882"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="3746882"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:23:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4499082"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa004.jf.intel.com with ESMTP; 01 Feb 2024 04:23:37 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  1 Feb 2024 13:21:57 +0100
Message-ID: <20240201122216.2634007-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790223; x=1738326223;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bxw9De2QeTuuO+3xX9DSiY/xghjHqConjbvU0/oyb6o=;
 b=Na9bktwGLCa0D+3qVSE/qkZmfN7gdlDBpiDSyzdfXN8HzkgTDZSHquS8
 rbPfIa6Agu2QdKFzg6gnHxlP9f8tHUVHq8A7iPfQPLA/29seMQ+5Rdu8v
 hD2xzkh5VbNXwnNM4agiZiRMCr76PD3BY67+86T5W8TTpj+tjfPLBInFN
 5AWuVrnO6UsbuTcgqbxHlWCkp4UXwjUrB10OcqPKXZUAWZSnUmFvAe0bk
 U6OzYbyMBLPkSGnrqL+hefY4C96zoh0b9H7BwY9qr0rU6ZN2SXwtQSmJj
 mvYnUAMimfOq6KbS5JVI9rUU+f4khVlEattJ/3igOh2oZy6JIvSHxuqa1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Na9bktwG
Subject: [Intel-wired-lan] [PATCH net-next v5 02/21] lib/test_bitmap: add
 tests for bitmap_{read, write}()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Yury Norov <yury.norov@gmail.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 dm-devel@redhat.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, ntfs3@lists.linux.dev, Jiri Pirko <jiri@resnulli.us>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Potapenko <glider@google.com>

Add basic tests ensuring that values can be added at arbitrary positions
of the bitmap, including those spanning into the adjacent unsigned
longs.

Two new performance tests, test_bitmap_read_perf() and
test_bitmap_write_perf(), can be used to assess future performance
improvements of bitmap_read() and bitmap_write():

[    0.431119][    T1] test_bitmap: Time spent in test_bitmap_read_perf:	615253
[    0.433197][    T1] test_bitmap: Time spent in test_bitmap_write_perf:	916313

(numbers from a Intel(R) Xeon(R) Gold 6154 CPU @ 3.00GHz machine running
QEMU).

Signed-off-by: Alexander Potapenko <glider@google.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Yury Norov <yury.norov@gmail.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 lib/test_bitmap.c | 179 ++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 172 insertions(+), 7 deletions(-)

diff --git a/lib/test_bitmap.c b/lib/test_bitmap.c
index 65f22c2578b0..46c015468077 100644
--- a/lib/test_bitmap.c
+++ b/lib/test_bitmap.c
@@ -60,18 +60,17 @@ static const unsigned long exp3_1_0[] __initconst = {
 };
 
 static bool __init
-__check_eq_uint(const char *srcfile, unsigned int line,
-		const unsigned int exp_uint, unsigned int x)
+__check_eq_ulong(const char *srcfile, unsigned int line,
+		 const unsigned long exp_ulong, unsigned long x)
 {
-	if (exp_uint != x) {
-		pr_err("[%s:%u] expected %u, got %u\n",
-			srcfile, line, exp_uint, x);
+	if (exp_ulong != x) {
+		pr_err("[%s:%u] expected %lu, got %lu\n",
+			srcfile, line, exp_ulong, x);
 		return false;
 	}
 	return true;
 }
 
-
 static bool __init
 __check_eq_bitmap(const char *srcfile, unsigned int line,
 		  const unsigned long *exp_bmap, const unsigned long *bmap,
@@ -185,7 +184,8 @@ __check_eq_str(const char *srcfile, unsigned int line,
 		result;							\
 	})
 
-#define expect_eq_uint(...)		__expect_eq(uint, ##__VA_ARGS__)
+#define expect_eq_ulong(...)		__expect_eq(ulong, ##__VA_ARGS__)
+#define expect_eq_uint(x, y)		expect_eq_ulong((unsigned int)(x), (unsigned int)(y))
 #define expect_eq_bitmap(...)		__expect_eq(bitmap, ##__VA_ARGS__)
 #define expect_eq_pbl(...)		__expect_eq(pbl, ##__VA_ARGS__)
 #define expect_eq_u32_array(...)	__expect_eq(u32_array, ##__VA_ARGS__)
@@ -1245,6 +1245,168 @@ static void __init test_bitmap_const_eval(void)
 	BUILD_BUG_ON(~var != ~BIT(25));
 }
 
+/*
+ * Test bitmap should be big enough to include the cases when start is not in
+ * the first word, and start+nbits lands in the following word.
+ */
+#define TEST_BIT_LEN (1000)
+
+/*
+ * Helper function to test bitmap_write() overwriting the chosen byte pattern.
+ */
+static void __init test_bitmap_write_helper(const char *pattern)
+{
+	DECLARE_BITMAP(bitmap, TEST_BIT_LEN);
+	DECLARE_BITMAP(exp_bitmap, TEST_BIT_LEN);
+	DECLARE_BITMAP(pat_bitmap, TEST_BIT_LEN);
+	unsigned long w, r, bit;
+	int i, n, nbits;
+
+	/*
+	 * Only parse the pattern once and store the result in the intermediate
+	 * bitmap.
+	 */
+	bitmap_parselist(pattern, pat_bitmap, TEST_BIT_LEN);
+
+	/*
+	 * Check that writing a single bit does not accidentally touch the
+	 * adjacent bits.
+	 */
+	for (i = 0; i < TEST_BIT_LEN; i++) {
+		bitmap_copy(bitmap, pat_bitmap, TEST_BIT_LEN);
+		bitmap_copy(exp_bitmap, pat_bitmap, TEST_BIT_LEN);
+		for (bit = 0; bit <= 1; bit++) {
+			bitmap_write(bitmap, bit, i, 1);
+			__assign_bit(i, exp_bitmap, bit);
+			expect_eq_bitmap(exp_bitmap, bitmap,
+					 TEST_BIT_LEN);
+		}
+	}
+
+	/* Ensure writing 0 bits does not change anything. */
+	bitmap_copy(bitmap, pat_bitmap, TEST_BIT_LEN);
+	bitmap_copy(exp_bitmap, pat_bitmap, TEST_BIT_LEN);
+	for (i = 0; i < TEST_BIT_LEN; i++) {
+		bitmap_write(bitmap, ~0UL, i, 0);
+		expect_eq_bitmap(exp_bitmap, bitmap, TEST_BIT_LEN);
+	}
+
+	for (nbits = BITS_PER_LONG; nbits >= 1; nbits--) {
+		w = IS_ENABLED(CONFIG_64BIT) ? 0xdeadbeefdeadbeefUL
+					     : 0xdeadbeefUL;
+		w >>= (BITS_PER_LONG - nbits);
+		for (i = 0; i <= TEST_BIT_LEN - nbits; i++) {
+			bitmap_copy(bitmap, pat_bitmap, TEST_BIT_LEN);
+			bitmap_copy(exp_bitmap, pat_bitmap, TEST_BIT_LEN);
+			for (n = 0; n < nbits; n++)
+				__assign_bit(i + n, exp_bitmap, w & BIT(n));
+			bitmap_write(bitmap, w, i, nbits);
+			expect_eq_bitmap(exp_bitmap, bitmap, TEST_BIT_LEN);
+			r = bitmap_read(bitmap, i, nbits);
+			expect_eq_ulong(r, w);
+		}
+	}
+}
+
+static void __init test_bitmap_read_write(void)
+{
+	unsigned char *pattern[3] = {"", "all:1/2", "all"};
+	DECLARE_BITMAP(bitmap, TEST_BIT_LEN);
+	unsigned long zero_bits = 0, bits_per_long = BITS_PER_LONG;
+	unsigned long val;
+	int i, pi;
+
+	/*
+	 * Reading/writing zero bits should not crash the kernel.
+	 * READ_ONCE() prevents constant folding.
+	 */
+	bitmap_write(NULL, 0, 0, READ_ONCE(zero_bits));
+	/* Return value of bitmap_read() is undefined here. */
+	bitmap_read(NULL, 0, READ_ONCE(zero_bits));
+
+	/*
+	 * Reading/writing more than BITS_PER_LONG bits should not crash the
+	 * kernel. READ_ONCE() prevents constant folding.
+	 */
+	bitmap_write(NULL, 0, 0, READ_ONCE(bits_per_long) + 1);
+	/* Return value of bitmap_read() is undefined here. */
+	bitmap_read(NULL, 0, READ_ONCE(bits_per_long) + 1);
+
+	/*
+	 * Ensure that bitmap_read() reads the same value that was previously
+	 * written, and two consequent values are correctly merged.
+	 * The resulting bit pattern is asymmetric to rule out possible issues
+	 * with bit numeration order.
+	 */
+	for (i = 0; i < TEST_BIT_LEN - 7; i++) {
+		bitmap_zero(bitmap, TEST_BIT_LEN);
+
+		bitmap_write(bitmap, 0b10101UL, i, 5);
+		val = bitmap_read(bitmap, i, 5);
+		expect_eq_ulong(0b10101UL, val);
+
+		bitmap_write(bitmap, 0b101UL, i + 5, 3);
+		val = bitmap_read(bitmap, i + 5, 3);
+		expect_eq_ulong(0b101UL, val);
+
+		val = bitmap_read(bitmap, i, 8);
+		expect_eq_ulong(0b10110101UL, val);
+	}
+
+	for (pi = 0; pi < ARRAY_SIZE(pattern); pi++)
+		test_bitmap_write_helper(pattern[pi]);
+}
+
+static void __init test_bitmap_read_perf(void)
+{
+	DECLARE_BITMAP(bitmap, TEST_BIT_LEN);
+	unsigned int cnt, nbits, i;
+	unsigned long val;
+	ktime_t time;
+
+	bitmap_fill(bitmap, TEST_BIT_LEN);
+	time = ktime_get();
+	for (cnt = 0; cnt < 5; cnt++) {
+		for (nbits = 1; nbits <= BITS_PER_LONG; nbits++) {
+			for (i = 0; i < TEST_BIT_LEN; i++) {
+				if (i + nbits > TEST_BIT_LEN)
+					break;
+				/*
+				 * Prevent the compiler from optimizing away the
+				 * bitmap_read() by using its value.
+				 */
+				WRITE_ONCE(val, bitmap_read(bitmap, i, nbits));
+			}
+		}
+	}
+	time = ktime_get() - time;
+	pr_err("Time spent in %s:\t%llu\n", __func__, time);
+}
+
+static void __init test_bitmap_write_perf(void)
+{
+	DECLARE_BITMAP(bitmap, TEST_BIT_LEN);
+	unsigned int cnt, nbits, i;
+	unsigned long val = 0xfeedface;
+	ktime_t time;
+
+	bitmap_zero(bitmap, TEST_BIT_LEN);
+	time = ktime_get();
+	for (cnt = 0; cnt < 5; cnt++) {
+		for (nbits = 1; nbits <= BITS_PER_LONG; nbits++) {
+			for (i = 0; i < TEST_BIT_LEN; i++) {
+				if (i + nbits > TEST_BIT_LEN)
+					break;
+				bitmap_write(bitmap, val, i, nbits);
+			}
+		}
+	}
+	time = ktime_get() - time;
+	pr_err("Time spent in %s:\t%llu\n", __func__, time);
+}
+
+#undef TEST_BIT_LEN
+
 static void __init selftest(void)
 {
 	test_zero_clear();
@@ -1261,6 +1423,9 @@ static void __init selftest(void)
 	test_bitmap_cut();
 	test_bitmap_print_buf();
 	test_bitmap_const_eval();
+	test_bitmap_read_write();
+	test_bitmap_read_perf();
+	test_bitmap_write_perf();
 
 	test_find_nth_bit();
 	test_for_each_set_bit();
-- 
2.43.0

