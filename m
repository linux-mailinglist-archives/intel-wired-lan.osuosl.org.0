Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F9987FE57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 14:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F25540117;
	Tue, 19 Mar 2024 13:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgP1e610fryM; Tue, 19 Mar 2024 13:13:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7007E40066
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710854000;
	bh=6E80ZpuWIg+HxKZlZooftTU9t/zI4vN4tK9nOCGDDK8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KrukGqnH8mo8xVxMLBYYllja9bB3o9F9iIFypBLtgUHAcb0oPw7Mw3saZFRO3VtTl
	 1QaFPdxVKXdsfJzpiQcTqZgH6whWXo3suzSPQ86gLGTZ3QwSG2yBUdcm9w3e3JFJmO
	 ZpG9t+82niIxspZ2PbpnghPfHXaH56rXvHpt7FEVmtqbgMdx/jw19f4m9TdLAK+x1S
	 ySRqm6OCUqaogsJudQFR28NftACE2KmPyyI/vd4wKxxysBIyrj4/ozMXE3IdJeTSYC
	 tOXmck9uJPSpbdOpVdZh89xjbymESSb+EJMbfiTFVdEvWH9Una7GL5KKSeBLCkXCLU
	 CkEZ86WPNxXiw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7007E40066;
	Tue, 19 Mar 2024 13:13:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00BA21BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA77B40327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Th93BYVBvdg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 13:13:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD20240192
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD20240192
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD20240192
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:13:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5842911"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5842911"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 06:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44883186"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2024 06:06:02 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 19 Mar 2024 18:35:38 +0530
Message-Id: <20240319130547.4195-3-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710853997; x=1742389997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f4BFmpOnOflQZ26qIp5VZktFRxTUYvqOxJjovMonJwY=;
 b=dXWqrdFD1n0IPPf3pxObKEURgdfD5xLPcbNuCJgiKFf7rqPmK/T2Hp7d
 McF98WD/UZrHTQ7fHvL2IcwqrsF6MM+0BsETy5E5htjlapM0KlrWCDQBF
 jl79oieSYIrqcBzv96HLX7mSt64daYAWiVp+SWfQMElQrR392xPx+GLVh
 /z30lInohry4Z4vk8JM6Ld9yBw/iOPpStyOZoZ1BZTtDl9YyE3jeR9Y2r
 xNywsAROn8ylO/s7TXp5eII40h/xaLfMOzjdZVLn3NRS5gyjA+wVXOiP2
 QBZ3nJkI2o52q05xDPoRTjv+fqLNIBdaqPLf9NsLymYmhA1JGCYPU36mq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dXWqrdFD
Subject: [Intel-wired-lan] [PATCH v5 02/11] timekeeping: Add function to
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

PPS(Pulse Per Second) generates signals in realtime, but Timed IO
hardware understands time in base clock reference. Add an interface,
ktime_real_to_base_clock() to convert realtime to base clock.

Convert the base clock to the system clock using convert_base_to_cs() in
get_device_system_crosststamp().

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
 include/linux/timekeeping.h |   6 +++
 kernel/time/timekeeping.c   | 105 +++++++++++++++++++++++++++++++++++-
 2 files changed, 109 insertions(+), 2 deletions(-)

diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index 7e50cbd97f86..1b2a4a37bf93 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -275,12 +275,18 @@ struct system_device_crosststamp {
  *		timekeeping code to verify comparability of two cycle values.
  *		The default ID, CSID_GENERIC, does not identify a specific
  *		clocksource.
+ * @nsecs:	@cycles is in nanoseconds.
  */
 struct system_counterval_t {
 	u64			cycles;
 	enum clocksource_ids	cs_id;
+	bool			nsecs;
 };
 
+extern bool ktime_real_to_base_clock(ktime_t treal,
+				     enum clocksource_ids base_id, u64 *cycles);
+extern bool timekeeping_clocksource_has_base(enum clocksource_ids id);
+
 /*
  * Get cross timestamp between system clock and device clock
  */
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index b58dffc58a8f..78836c7712dd 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1193,6 +1193,82 @@ static bool timestamp_in_interval(u64 start, u64 end, u64 ts)
 	return false;
 }
 
+static bool convert_clock(u64 *val, u32 numerator, u32 denominator)
+{
+	u64 rem, res;
+
+	if (!numerator || !denominator)
+		return false;
+
+	res = div64_u64_rem(*val, denominator, &rem) * numerator;
+	*val = res + div_u64(rem * numerator, denominator);
+	return true;
+}
+
+static bool convert_base_to_cs(struct system_counterval_t *scv)
+{
+	struct clocksource *cs = tk_core.timekeeper.tkr_mono.clock;
+	struct clocksource_base *base = cs->base;
+	u32 num, den;
+
+	/* The timestamp was taken from the time keeper clock source */
+	if (cs->id == scv->cs_id)
+		return true;
+
+	/* Check whether cs_id matches the base clock */
+	if (!base || base->id != scv->cs_id)
+		return false;
+
+	num = scv->nsecs ? cs->freq_khz : base->numerator;
+	den = scv->nsecs ? USEC_PER_SEC : base->denominator;
+
+	convert_clock(&scv->cycles, num, den);
+	scv->cycles += base->offset;
+	return true;
+}
+
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
+		delta = (u64)treal - tk->tkr_mono.base_real;
+		if (delta > tk->tkr_mono.clock->max_idle_ns)
+			return false;
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
@@ -1238,8 +1314,7 @@ int get_device_system_crosststamp(int (*get_time_fn)
 		 * system counter value is the same as for the currently
 		 * installed timekeeper clocksource
 		 */
-		if (system_counterval.cs_id == CSID_GENERIC ||
-		    tk->tkr_mono.clock->id != system_counterval.cs_id)
+		if (!convert_base_to_cs(&system_counterval))
 			return -ENODEV;
 		cycles = system_counterval.cycles;
 
@@ -1304,6 +1379,32 @@ int get_device_system_crosststamp(int (*get_time_fn)
 }
 EXPORT_SYMBOL_GPL(get_device_system_crosststamp);
 
+/**
+ * timekeeping_clocksource_has_base - Check whether the current clocksource
+ *	has a base clock
+ * @id:		The clocksource ID to check for
+ *
+ * Note:	The return value is a snapshot which can become invalid right
+ *	after the function returns.
+ *
+ * Return:	true if the timekeeper clocksource has a base clock with @id,
+ *	false otherwise
+ */
+bool timekeeping_clocksource_has_base(enum clocksource_ids id)
+{
+	unsigned int seq;
+	bool ret;
+
+	do {
+		seq = read_seqcount_begin(&tk_core.seq);
+		ret = tk_core.timekeeper.tkr_mono.clock->base ?
+		tk_core.timekeeper.tkr_mono.clock->base->id == id : false;
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

