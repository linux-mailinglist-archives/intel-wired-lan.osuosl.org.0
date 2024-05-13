Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D39788C3F06
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84EB483365;
	Mon, 13 May 2024 10:38:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCA9rkm-7wXG; Mon, 13 May 2024 10:38:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8717483268
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596713;
	bh=gVPjCxE17wwioZO+J6NTvWxDrz9NEE524RafPW3/vKc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IAs/bCqxhOUlNJ0vAu9eDgCRUHRAQEYNiEQXzaej30UBoYH6k/ysQmCRjLxIzmNDE
	 hzM1qSW0xeCN4fvUYF+ewnPY1sDFEYAYLtYmzKbnhvSVmdN6TsE23sUnUlnUY9YD6B
	 pp4Fqv6aQbBX3dc3bLkgvCPU+3phMZ6AeE/YKYRW8hJeMk0Q87ieTwSt94T/B8JnfJ
	 5q+gQABmUhKu404Uzqib1AD4BjcCfpPl+jx3ly/sbIc89AAfb0SiEiwjviURC9rncM
	 ai6UpqoQuTykiIs2rxqLujtFEfc7jx1SBgbVfKOq/Ro5SnAM9A51RUtIJfzs2GW4lQ
	 W/Fr4yeNcxQdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8717483268;
	Mon, 13 May 2024 10:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5751BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98D6860880
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2ZJIJ9rj9Y4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:38:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7ECC6087C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7ECC6087C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7ECC6087C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:29 +0000 (UTC)
X-CSE-ConnectionGUID: kp4HzSTwRWWkbz3h8WZ5QA==
X-CSE-MsgGUID: sSbf2dFiQmCQfWwGzhqxzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29038875"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29038875"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:27 -0700
X-CSE-ConnectionGUID: 5SXcqXPNRZOJJ/yAAKqLpA==
X-CSE-MsgGUID: v0sYACCoRqKLe2eBPIE8iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481699"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:38:20 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:02 +0530
Message-Id: <20240513103813.5666-2-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596709; x=1747132709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7G4eSCDfpVxftfhKiGN17VIsixny1njY40VIbJ98TVA=;
 b=fc1YiLWWyExVdn0mtxVgbifntNsLB88tPuNXm5Lw/IxXRZLPdE2hky9s
 0O0SfoSYfvX9bxJN0QJ2DFxfwJpCvm/Zf8wb5/K4AZykStJbld4VlqnpC
 9UwLMPq31hmsAlDxovHBIN6tr0IXq7AvXj0cNVQ9E+80PbwkR1VVmJJGF
 AYCWvD8ZNpAoDcwOQSUkfLjJ4SdcDuTaFtx0LV/oW96YyCVQ2bIXs1C31
 aX6Ovb4aNbic3LsT/qN/tlz7pVAJcTMHjMo2zXC0wi0SuJDAu+NOLYbzx
 /iSkFLZPvD3ZQCbonHF8SdWf0eAnnxK5/BsP1Xgh7bY2jAVj2gG2e7/rk
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fc1YiLWW
Subject: [Intel-wired-lan] [PATCH v8 01/12] timekeeping: Add base clock
 properties in clocksource structure
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

Add base clock hardware abstraction in clocksource structure.

Provide generic functionality in convert_base_to_cs() to convert base
clock timestamps to system clocksource without requiring architecture
specific parameters.

This is intended to replace convert_art_to_tsc() and
convert_art_ns_to_tsc() functions which are specific to convert ART
(Always Running Timer) time to the corresponding TSC value.

Add the infrastructure in get_device_system_crosststamp().

Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 include/linux/clocksource.h | 27 ++++++++++++++++++++++++++
 include/linux/timekeeping.h |  2 ++
 kernel/time/timekeeping.c   | 38 ++++++++++++++++++++++++++++++++++++-
 3 files changed, 66 insertions(+), 1 deletion(-)

diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index 0ad8b550bb4b..d35b677b08fe 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -21,6 +21,7 @@
 #include <asm/div64.h>
 #include <asm/io.h>
 
+struct clocksource_base;
 struct clocksource;
 struct module;
 
@@ -50,6 +51,7 @@ struct module;
  *			multiplication
  * @name:		Pointer to clocksource name
  * @list:		List head for registration (internal)
+ * @freq_khz:		Clocksource frequency in khz.
  * @rating:		Rating value for selection (higher is better)
  *			To avoid rating inflation the following
  *			list should give you a guide as to how
@@ -70,6 +72,8 @@ struct module;
  *			validate the clocksource from which the snapshot was
  *			taken.
  * @flags:		Flags describing special properties
+ * @base:		Hardware abstraction for clock on which a clocksource
+ *			is based
  * @enable:		Optional function to enable the clocksource
  * @disable:		Optional function to disable the clocksource
  * @suspend:		Optional suspend function for the clocksource
@@ -107,10 +111,12 @@ struct clocksource {
 	u64			max_cycles;
 	const char		*name;
 	struct list_head	list;
+	u32			freq_khz;
 	int			rating;
 	enum clocksource_ids	id;
 	enum vdso_clock_mode	vdso_clock_mode;
 	unsigned long		flags;
+	struct clocksource_base *base;
 
 	int			(*enable)(struct clocksource *cs);
 	void			(*disable)(struct clocksource *cs);
@@ -306,4 +312,25 @@ static inline unsigned int clocksource_get_max_watchdog_retry(void)
 
 void clocksource_verify_percpu(struct clocksource *cs);
 
+/**
+ * struct clocksource_base - hardware abstraction for clock on which a clocksource
+ *			is based
+ * @id:			Defaults to CSID_GENERIC. The id value is used for conversion
+ *			functions which require that the current clocksource is based
+ *			on a clocksource_base with a particular ID in certain snapshot
+ *			functions to allow callers to validate the clocksource from
+ *			which the snapshot was taken.
+ * @freq_khz:		Nominal frequency of the base clock in kHz
+ * @offset:		Offset between the base clock and the clocksource
+ * @numerator:		Numerator of the clock ratio between base clock and the clocksource
+ * @denominator:	Denominator of the clock ratio between base clock and the clocksource
+ */
+struct clocksource_base {
+	enum clocksource_ids	id;
+	u32			freq_khz;
+	u64			offset;
+	u32			numerator;
+	u32			denominator;
+};
+
 #endif /* _LINUX_CLOCKSOURCE_H */
diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index 0ea7823b7f31..b2ee182d891e 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -310,10 +310,12 @@ struct system_device_crosststamp {
  *		timekeeping code to verify comparability of two cycle values.
  *		The default ID, CSID_GENERIC, does not identify a specific
  *		clocksource.
+ * @use_nsecs:	@cycles is in nanoseconds.
  */
 struct system_counterval_t {
 	u64			cycles;
 	enum clocksource_ids	cs_id;
+	bool			use_nsecs;
 };
 
 /*
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index b58dffc58a8f..92994450f268 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1193,6 +1193,42 @@ static bool timestamp_in_interval(u64 start, u64 end, u64 ts)
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
+	num = scv->use_nsecs ? cs->freq_khz : base->numerator;
+	den = scv->use_nsecs ? USEC_PER_SEC : base->denominator;
+
+	if (!convert_clock(&scv->cycles, num, den))
+		return false;
+
+	scv->cycles += base->offset;
+	return true;
+}
+
 /**
  * get_device_system_crosststamp - Synchronously capture system/device timestamp
  * @get_time_fn:	Callback to get simultaneous device time and
@@ -1239,7 +1275,7 @@ int get_device_system_crosststamp(int (*get_time_fn)
 		 * installed timekeeper clocksource
 		 */
 		if (system_counterval.cs_id == CSID_GENERIC ||
-		    tk->tkr_mono.clock->id != system_counterval.cs_id)
+		    !convert_base_to_cs(&system_counterval))
 			return -ENODEV;
 		cycles = system_counterval.cycles;
 
-- 
2.35.3

