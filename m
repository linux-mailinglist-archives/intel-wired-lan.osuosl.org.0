Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6DC8C3F17
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ADC58201C;
	Mon, 13 May 2024 10:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1bGy-SKL9Id; Mon, 13 May 2024 10:39:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42AF581000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596764;
	bh=5acAeOh8lLhE8enhu/jMER7VB9aKH7ubXhAepPG6QyY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UiulMqWGF/phlbmUgnPUJx7zGa1YQK+0WCs2vl4z0vbcDvr34ObL9s1oYnmqZXW9K
	 kC/IAmaJ5wZagqXTSXulmlbaIJNI/bKuji43UrJ9vkG2u+CB0DbL4pULJ3n63ctyx/
	 enPzci6umFe7NzM4kVmwG7CzswXL6oF1M5Vd2dF9+dOlxvrtKKAAxm7Z6n0n7ZjVVI
	 I4OYr/oK5tTPEtwxws//1r1Sc72kYtfzBQr6DOh3UEf/0pJZo2jBfvBBfeAa5qUB1E
	 O6vF0DtuTWnCCTq0BIR1mYwn2SOrtwOy/hkUcZcaUAMLuh4NJTGDnWW/zOnNA4OHwR
	 vdrTl9k0WtCvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42AF581000;
	Mon, 13 May 2024 10:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EDD31BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B56F6087C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vs1I8V60DISi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:39:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 393DF60765
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 393DF60765
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 393DF60765
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:39:20 +0000 (UTC)
X-CSE-ConnectionGUID: PF0vSB8aQiagspcrLgh6Jg==
X-CSE-MsgGUID: vZMPcmp7R1Gld3YQcmpb/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29039136"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29039136"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:39:18 -0700
X-CSE-ConnectionGUID: La7vmDcuRxWg3TWG8mvhdg==
X-CSE-MsgGUID: BjdCcZmkTfCuZkBZJA3emA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481793"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:39:12 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:10 +0530
Message-Id: <20240513103813.5666-10-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596760; x=1747132760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IseBVxj7TxLQvtRm4JaluePpwuEWyzQwD7jXVspSW8Q=;
 b=GpbjqcSA1oTJUsYB8iT4CzSgZY2sDfnmf1+KOKIOvT3REZNcN6j1IzNs
 aW+jZN5tGAYIDILdH7k+EG1bdcKKWuExv9vMEAMqwOZWg8AfCBG9XOMCA
 qSav92A0Ngnp8O3jclGbml4J4HHR0ClM7whKUv1I3ZpXCCpsJxU8Z/UMz
 qfzeHv7j051nHM02FuwY2HvAZeysPdyfY1zmjM6Q5EQJkTqSV5Drx/yNf
 5F6oxa1B7B/RyZ7b18d6+dSZVXdIZMHI/O0zggAPFtjdms5NWm/rxbzGl
 u4VFNs8jjO3XZ4drd5yeNcSbtGyAtA8+kLVB8Xay1S9NniHb+Tw+KvMgE
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GpbjqcSA
Subject: [Intel-wired-lan] [PATCH v8 09/12] timekeeping: Add function to
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

PPS (Pulse Per Second) generates a hardware pulse every second based on
CLOCK_REALTIME. This works fine when the pulse is generated in software
from a hrtimer callback function.

For hardware which generates the pulse by programming a timer it's
required to convert CLOCK_REALTIME to the underlying hardware clock.

The X86 Timed IO device is based on the Always Running Timer (ART),
which is the base clock of the TSC, which is usually the system
clocksource on X86.

The core code already has functionality to convert base clock timestamps
to system clocksource timestamps, but there is no support for converting
the other way around.

Provide the required functionality to support such devices in a generic
way to avoid code duplication in drivers:

	1) ktime_real_to_base_clock() to convert a CLOCK_REALTIME
	   timestamp to a base clock timestamp
	2) timekeeping_clocksource_has_base() to allow drivers to
	   validate that the system clocksource is based on a particular
	   clocksource ID.

Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 include/linux/timekeeping.h |  4 ++
 kernel/time/timekeeping.c   | 86 +++++++++++++++++++++++++++++++++++++
 2 files changed, 90 insertions(+)

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
index 92994450f268..326db459a2ea 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1229,6 +1229,64 @@ static bool convert_base_to_cs(struct system_counterval_t *scv)
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
+static bool convert_ns_to_cs(u64 *delta)
+{
+	struct tk_read_base *tkr = &tk_core.timekeeper.tkr_mono;
+
+	if (BITS_TO_BYTES(fls64(*delta) + tkr->shift) >= sizeof(*delta))
+		return false;
+
+	*delta = div_u64((*delta << tkr->shift) - tkr->xtime_nsec, tkr->mult);
+	return true;
+}
+
+/**
+ * ktime_real_to_base_clock() - Convert CLOCK_REALTIME timestamp to a base clock timestamp
+ * @treal:	CLOCK_REALTIME timestamp to convert
+ * @base_id:	base clocksource id
+ * @cycles:	pointer to store the converted base clock timestamp
+ *
+ * Converts a supplied, future realtime clock value to the corresponding base clock value.
+ *
+ * Return:  true if the conversion is successful, false otherwise.
+ */
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
+		if (!convert_ns_to_cs(&delta))
+			return false;
+		*cycles = tk->tkr_mono.cycle_last + delta;
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
@@ -1340,6 +1398,34 @@ int get_device_system_crosststamp(int (*get_time_fn)
 }
 EXPORT_SYMBOL_GPL(get_device_system_crosststamp);
 
+/**
+ * timekeeping_clocksource_has_base - Check whether the current clocksource
+ *     is based on given a base clock
+ * @id:		base clocksource ID
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

