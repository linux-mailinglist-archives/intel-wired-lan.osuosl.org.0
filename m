Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 713EB84C4A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:09:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E50761381;
	Wed,  7 Feb 2024 06:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uCMhvmu3Efj; Wed,  7 Feb 2024 06:09:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23AA56136A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286160;
	bh=4SBcGPc9tr3dbMY79fPc40S7s9qN1/TGJml+OZxbuo4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z9hiHfFbRIAeL9+qcK2k1Vwq4cvGTutzd5W0VdLouGJuA35jzv77+KKz0pg6H7INS
	 mjahUcBn/OEN1DxM3YreOkyS8C+L6KYhMcafWRPJ2pNy/qniZD348sZZI9xZ4c7F2l
	 xmvkwOsgxel60+6siBiqZejbsTmLqwLEa7tJvTFenVkkChCQDNwmNRhVgkpq69/pnW
	 yUbtcLPQY8fjaOqpBAOz0AkT1qTZUz0uXGuyh8bgPysewMAs7jrXdnHnHfC11G4DgL
	 Sf1O7ALnlg4+j1BjQ7caQMRimlJir82MDpjFxwfdqye8dEQEQ9F9LnbI/B/5XsET7v
	 Onwl+lo1vK7CA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23AA56136A;
	Wed,  7 Feb 2024 06:09:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B35551BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A004041E7A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iwlW7mxXmNc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:09:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBE1841E47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBE1841E47
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBE1841E47
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:09:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436053964"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436053964"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849731"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:09:09 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:45 +0530
Message-Id: <20240207060854.6524-3-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286156; x=1738822156;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ime50F3RKb2m1VV+ZMtTLz8M9K+YfMpKUU6CJBgWeTE=;
 b=kzONTKUOi+Z17NPfYeq6Ad+PbLvIwjVnkHGn0EeWUnmaOi61sczXeW8x
 yIREfTbK86/U2Pw4xxkUAJ4E8fFdd9xAM/RqXYozWC0LVpKxU9XwT8ajs
 4xJykyw3B5Y6s9ZwqNAkgmDF0T6ch9dWMAkcZf+sqqTaAIR65IJJjtPZH
 b/lJ5ULfOtVhQiZ4Wy5BhGiHCANegp6UchHL/yolCQq2Wb9F2rsV1LZiK
 GhJIgWYygLnQVYwFDcvdBSL0VOymx7KaAD4c2Gb1OexAIK6YyMKugPko/
 Gm0F8zEbGTlhznUVpz4rW/SYRGpjQHurg9JFzjNZ20ENxBW3qwtvrs3rv
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kzONTKUO
Subject: [Intel-wired-lan] [PATCH v4 02/11] timekeeping: Add function to
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
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

Introduce an interface, ktime_real_to_base_clock() to convert realtime
to base clock.

Convert the base clock to the system clock using convert_base_to_cs() in
get_device_system_crosststamp().

Add the helper function timekeeping_clocksource_has_base(), to check
whether the current clocksource has the same base clock.

Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 include/linux/timekeeping.h |   6 ++
 kernel/time/timekeeping.c   | 112 +++++++++++++++++++++++++++++++++++-
 2 files changed, 116 insertions(+), 2 deletions(-)

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
index 0ff065c5d25b..e68ecd77ee34 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1191,6 +1191,89 @@ static bool cycle_between(u64 before, u64 test, u64 after)
 	return false;
 }
 
+static bool convert_clock(u64 *val, u32 numerator, u32 denominator)
+{
+	u64 rem, res;
+
+	if (numerator == 0 || denominator == 0)
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
+
+	/* The timestamp was taken from the time keeper clock source */
+	if (cs->id == scv->cs_id)
+		return true;
+
+	/* Check whether cs_id matches the base clock */
+	if (!base || base->id != scv->cs_id)
+		return false;
+
+	/* Avoid conversion to a less precise clock */
+	if (scv->nsecs && cs->freq_khz != 0 && base->freq_khz < cs->freq_khz) {
+		if (!convert_clock(&scv->cycles, cs->freq_khz, USEC_PER_SEC))
+			return false;
+	} else {
+		if (scv->nsecs) {
+			if (!convert_clock(&scv->cycles, base->freq_khz, USEC_PER_SEC))
+				return false;
+		}
+		if (!convert_clock(&scv->cycles, base->numerator, base->denominator))
+			return false;
+	}
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
@@ -1236,8 +1319,7 @@ int get_device_system_crosststamp(int (*get_time_fn)
 		 * system counter value is the same as for the currently
 		 * installed timekeeper clocksource
 		 */
-		if (system_counterval.cs_id == CSID_GENERIC ||
-		    tk->tkr_mono.clock->id != system_counterval.cs_id)
+		if (!convert_base_to_cs(&system_counterval))
 			return -ENODEV;
 		cycles = system_counterval.cycles;
 
@@ -1304,6 +1386,32 @@ int get_device_system_crosststamp(int (*get_time_fn)
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

