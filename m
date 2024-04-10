Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B93B89F13C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFCF26087A;
	Wed, 10 Apr 2024 11:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1dh0NG2ZZ2mn; Wed, 10 Apr 2024 11:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E9BC560880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749773;
	bh=a9KL4FFM6ot70rSYiEBryK6oaQwzLc+0vo9pmhWnNOU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f3J4o2vcM3UBtOUA5wwy+FvpSvcKkSNCc8xG8DCHp1XCOFCRzqtdfGsE8YN7bgMO7
	 2NW7Vo21ebBJhR+4zEeN0UGQWHpUrJP0QrqRrKavryWGwFvTWE4l55q438+e/yzyVz
	 JwWg3Wq1IwKsnJRGz9xs5aay2/t2SUY8DZEmFxjW7HfruGrSZh4MWPbNvBlf3YFTVp
	 MzOtoALDQl5grwjqRcw1X8JpFyq0Ld6O5Ml8F/vId5J/vayLdmKK4859SuaC9ibcaJ
	 nRjMSnm7+jEcT3dGlEITIZ4+14OD1ZsyRDmdKoWKM/0kzDNkar07TEboHOlAf2bLRW
	 2FAD1+ZKZCzMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9BC560880;
	Wed, 10 Apr 2024 11:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B9CF1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 759BA60876
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJo5igxWBhLn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:49:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 939DC60857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 939DC60857
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 939DC60857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:49:30 +0000 (UTC)
X-CSE-ConnectionGUID: DDqbljoSSAahNHjlbxf7hg==
X-CSE-MsgGUID: w144Tr0eQiGfL+qYNg510Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944181"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944181"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:49:30 -0700
X-CSE-ConnectionGUID: cv+Xk9N7SI+tpBWojhhwTg==
X-CSE-MsgGUID: h15+G8CxQD6pKKxlg/oWUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769286"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:49:23 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:25 +0530
Message-Id: <20240410114828.25581-9-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749771; x=1744285771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4yFG2epkMTZfSUzUaCaIYzcSlYJ6SfR0gapuEZJcQ7g=;
 b=kwJy9zN+umJPehcI6ikQLKQlh1ubK9tCNmqQDQvQg5IbYxBJeE6tHLxa
 kkFFKjhMeF9BzbbIqwcDEVJSKIsE4qcL9AONCR5X3mSetwikokck0h3Pn
 Jt8mDkSUs3P468fxLpgWykK+dpArINy6R5PMdcoDKZwnaaHX2u7JOTG+B
 glK8r5voh2V71Nt9p6XNqlPQB5tZfSI6Rm8rZLOHdO/0cmPCtFBqqOep1
 ZYXKt5FpCobmSUAAEnTuOzf1ys4slOjmGCBVe9Zy32HtAXURq8WbgEKgn
 S39QmZr3vtn3SKpaTN2TWw374EyZEn6YWnAFfGWaNf8lsGhuslsEUj7b0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kwJy9zN+
Subject: [Intel-wired-lan] [PATCH v6 08/11] timekeeping: Add function to
 convert realtime to base clock
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

PPS(Pulse Per Second) generates signals in realtime, but Timed IO
hardware understands time in base clock reference. Add an interface,
ktime_real_to_base_clock() to convert realtime to base clock.

Add the helper function timekeeping_clocksource_has_base(), to check
whether the current clocksource has the same base clock. This will be
used by Timed IO device to check if the base clock is X86_ART(Always
Running Timer).

Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 include/linux/timekeeping.h |  4 +++
 kernel/time/timekeeping.c   | 70 +++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+)

diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index b2ee182d891e..fc12a9ba2c88 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -318,6 +318,10 @@ struct system_counterval_t {
 	bool			use_nsecs;
 };
 
+extern bool ktime_real_to_base_clock(ktime_t treal,
+				     enum clocksource_ids base_id, u64 *cycles);
+extern bool timekeeping_clocksource_has_base(enum clocksource_ids id);
+
 /*
  * Get cross timestamp between system clock and device clock
  */
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index 2542cfefbdee..e4ecce722969 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1227,6 +1227,48 @@ static bool convert_base_to_cs(struct system_counterval_t *scv)
 	return true;
 }
 
+static bool convert_cs_to_base(u64 *cycles, enum clocksource_ids base_id)
+{
+	struct clocksource *cs = tk_core.timekeeper.tkr_mono.clock;
+	struct clocksource_base *base = cs->base;
+
+	/* Check whether base_id matches the base clock */
+	if (!base || base->id != base_id)
+		return false;
+
+	*cycles -= base->offset;
+	if (!convert_clock(cycles, base->denominator, base->numerator))
+		return false;
+	return true;
+}
+
+static u64 convert_ns_to_cs(u64 delta)
+{
+	struct tk_read_base *tkr = &tk_core.timekeeper.tkr_mono;
+
+	return div_u64((delta << tkr->shift) - tkr->xtime_nsec, tkr->mult);
+}
+
+bool ktime_real_to_base_clock(ktime_t treal, enum clocksource_ids base_id, u64 *cycles)
+{
+	struct timekeeper *tk = &tk_core.timekeeper;
+	unsigned int seq;
+	u64 delta;
+
+	do {
+		seq = read_seqcount_begin(&tk_core.seq);
+		if ((u64)treal < tk->tkr_mono.base_real)
+			return false;
+		delta = (u64)treal - tk->tkr_mono.base_real;
+		*cycles = tk->tkr_mono.cycle_last + convert_ns_to_cs(delta);
+		if (!convert_cs_to_base(cycles, base_id))
+			return false;
+	} while (read_seqcount_retry(&tk_core.seq, seq));
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(ktime_real_to_base_clock);
+
 /**
  * get_device_system_crosststamp - Synchronously capture system/device timestamp
  * @get_time_fn:	Callback to get simultaneous device time and
@@ -1337,6 +1379,34 @@ int get_device_system_crosststamp(int (*get_time_fn)
 }
 EXPORT_SYMBOL_GPL(get_device_system_crosststamp);
 
+/**
+ * timekeeping_clocksource_has_base - Check whether the current clocksource
+ *     has a base clock
+ * @id:		The clocksource ID to check for
+ *
+ * Note:	The return value is a snapshot which can become invalid right
+ *		after the function returns.
+ *
+ * Return:	true if the timekeeper clocksource has a base clock with @id,
+ *		false otherwise
+ */
+bool timekeeping_clocksource_has_base(enum clocksource_ids id)
+{
+	unsigned int seq;
+	bool ret;
+
+	do {
+		seq = read_seqcount_begin(&tk_core.seq);
+		if (tk_core.timekeeper.tkr_mono.clock->base)
+			ret = (tk_core.timekeeper.tkr_mono.clock->base->id == id);
+		else
+			ret = false;
+	} while (read_seqcount_retry(&tk_core.seq, seq));
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(timekeeping_clocksource_has_base);
+
 /**
  * do_settimeofday64 - Sets the time of day.
  * @ts:     pointer to the timespec64 variable containing the new time
-- 
2.35.3

