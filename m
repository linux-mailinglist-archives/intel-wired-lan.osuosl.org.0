Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C38A98B6D5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72E2981F1A;
	Tue, 30 Apr 2024 08:52:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y7Drfe-gCM2O; Tue, 30 Apr 2024 08:52:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0179681F16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467172;
	bh=cZjS3jm5uBDSQJdCby3SKXmA5TV8BCCMJanwCavI1ns=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=44BOAFyTVMKQ1HgjBKkesMXaP4QDdVCG1VdGkjQOsZ97lqrHxFMM3v7bEIlSmJhAo
	 8uxAmVX/uAttpAx/dZl798k1NklH5abKgHTrFPNT76R+NV1B3bpbav3jqXyk1ZJEim
	 eyxsEDhOKJeyaG5bNNBDzPeUa08eR7sbNHY/Tqtr6ZKXnsxHDWSFZsTxCEcElCkowG
	 bq9sg17fmWTP06cdvu8XZqZi5Zm/rU5pIrZhOlcbV+3gklF7lzGNcdxITAO3mCCECY
	 JPWFBXtg4wciIuAUd//BuDL4cXAweFzQ3BdgIsoF0EuW/O+oLlIqbhFhoiplhTqrry
	 EAVBiH4kOK2eg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0179681F16;
	Tue, 30 Apr 2024 08:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A5E21BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1661441077
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HiWUKLoV3DFP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:52:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 37B62405D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 37B62405D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 37B62405D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:52:48 +0000 (UTC)
X-CSE-ConnectionGUID: PcAWxFh6TCm1/D9HdKPDSg==
X-CSE-MsgGUID: oeFbMpOuQ2C0Nj6UwGkNEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311303"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311303"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:52:47 -0700
X-CSE-ConnectionGUID: JadGGwvnS2K25tJ0pgSFxw==
X-CSE-MsgGUID: ZhuHLKuIQUKHcSUlO9TIPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891494"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:52:40 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:15 +0530
Message-Id: <20240430085225.18086-3-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467169; x=1746003169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y5adxHXLHL8NZQh0tAHT3KFv1sn+kvC5uRh0rbKSfoQ=;
 b=Le8uFp4Tosu0eYGKqVjnA0FGa3QtDilRefZJGPhbCtu1kT11MFCYbcpd
 4gMMz7eyGgbQ477Gu37pLEyj8m2EGCZoJlNFaEEkCzwQkdXZPtZkSF8zX
 hctH2PA7ZE9+3sBPt4Tui+9pdHL3hYYlHjzWG+NaHdNwaJM1oImWlC6n8
 UxUEmbHNpSmv3uInaDlbbvXZxcggGbklnZ55Rhe+zVvl03ELJW5EBSXJP
 7qZcVFjK9p4fFrnM8PxjijmfJpc0umlPnv61FlgKXvfK6pMkQUQSdEPP6
 0Rixgjp5q4yA+wfjifRihVH9SEB07QDZCQ7E9wWgtd7OXBHXcHQbsgQoL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Le8uFp4T
Subject: [Intel-wired-lan] [PATCH v7 02/12] x86/tsc: Update tsc/art values
 in the base clock structure
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

Add clocksource ID for x86 ART (Always Running Timer). The newly added
clocksource ID and conversion parameters are used to convert time in a
clocksource domain to base clock and vice versa.

Earlier code used architecture specific macros for the conversion, now
core code added hardware agnostic functions to convert the timestamp
using base clocksource structure. Update the base clock structure (ART)
for system clock based on TSC.

Co-developed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Co-developed-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Christopher S. Hall <christopher.s.hall@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 arch/x86/kernel/tsc.c           | 42 +++++++++++++++++++--------------
 include/linux/clocksource_ids.h |  1 +
 2 files changed, 25 insertions(+), 18 deletions(-)

diff --git a/arch/x86/kernel/tsc.c b/arch/x86/kernel/tsc.c
index 5a69a49acc96..45bf2f6d0ffa 100644
--- a/arch/x86/kernel/tsc.c
+++ b/arch/x86/kernel/tsc.c
@@ -50,9 +50,9 @@ int tsc_clocksource_reliable;
 
 static int __read_mostly tsc_force_recalibrate;
 
-static u32 art_to_tsc_numerator;
-static u32 art_to_tsc_denominator;
-static u64 art_to_tsc_offset;
+static struct clocksource_base art_base_clk = {
+	.id    = CSID_X86_ART,
+};
 static bool have_art;
 
 struct cyc2ns {
@@ -1074,7 +1074,7 @@ core_initcall(cpufreq_register_tsc_scaling);
  */
 static void __init detect_art(void)
 {
-	unsigned int unused[2];
+	unsigned int unused;
 
 	if (boot_cpu_data.cpuid_level < ART_CPUID_LEAF)
 		return;
@@ -1089,13 +1089,14 @@ static void __init detect_art(void)
 	    tsc_async_resets)
 		return;
 
-	cpuid(ART_CPUID_LEAF, &art_to_tsc_denominator,
-	      &art_to_tsc_numerator, unused, unused+1);
+	cpuid(ART_CPUID_LEAF, &art_base_clk.denominator,
+	      &art_base_clk.numerator, &art_base_clk.freq_khz, &unused);
 
-	if (art_to_tsc_denominator < ART_MIN_DENOMINATOR)
+	art_base_clk.freq_khz /= KHZ;
+	if (art_base_clk.denominator < ART_MIN_DENOMINATOR)
 		return;
 
-	rdmsrl(MSR_IA32_TSC_ADJUST, art_to_tsc_offset);
+	rdmsrl(MSR_IA32_TSC_ADJUST, art_base_clk.offset);
 
 	/* Make this sticky over multiple CPU init calls */
 	setup_force_cpu_cap(X86_FEATURE_ART);
@@ -1303,13 +1304,13 @@ struct system_counterval_t convert_art_to_tsc(u64 art)
 {
 	u64 tmp, res, rem;
 
-	rem = do_div(art, art_to_tsc_denominator);
+	rem = do_div(art, art_base_clk.denominator);
 
-	res = art * art_to_tsc_numerator;
-	tmp = rem * art_to_tsc_numerator;
+	res = art * art_base_clk.numerator;
+	tmp = rem * art_base_clk.numerator;
 
-	do_div(tmp, art_to_tsc_denominator);
-	res += tmp + art_to_tsc_offset;
+	do_div(tmp, art_base_clk.denominator);
+	res += tmp + art_base_clk.offset;
 
 	return (struct system_counterval_t) {
 		.cs_id	= have_art ? CSID_X86_TSC : CSID_GENERIC,
@@ -1356,7 +1357,6 @@ struct system_counterval_t convert_art_ns_to_tsc(u64 art_ns)
 }
 EXPORT_SYMBOL(convert_art_ns_to_tsc);
 
-
 static void tsc_refine_calibration_work(struct work_struct *work);
 static DECLARE_DELAYED_WORK(tsc_irqwork, tsc_refine_calibration_work);
 /**
@@ -1458,8 +1458,10 @@ static void tsc_refine_calibration_work(struct work_struct *work)
 	if (tsc_unstable)
 		goto unreg;
 
-	if (boot_cpu_has(X86_FEATURE_ART))
+	if (boot_cpu_has(X86_FEATURE_ART)) {
 		have_art = true;
+		clocksource_tsc.base = &art_base_clk;
+	}
 	clocksource_register_khz(&clocksource_tsc, tsc_khz);
 unreg:
 	clocksource_unregister(&clocksource_tsc_early);
@@ -1484,8 +1486,10 @@ static int __init init_tsc_clocksource(void)
 	 * the refined calibration and directly register it as a clocksource.
 	 */
 	if (boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ)) {
-		if (boot_cpu_has(X86_FEATURE_ART))
+		if (boot_cpu_has(X86_FEATURE_ART)) {
 			have_art = true;
+			clocksource_tsc.base = &art_base_clk;
+		}
 		clocksource_register_khz(&clocksource_tsc, tsc_khz);
 		clocksource_unregister(&clocksource_tsc_early);
 
@@ -1509,10 +1513,12 @@ static bool __init determine_cpu_tsc_frequencies(bool early)
 
 	if (early) {
 		cpu_khz = x86_platform.calibrate_cpu();
-		if (tsc_early_khz)
+		if (tsc_early_khz) {
 			tsc_khz = tsc_early_khz;
-		else
+		} else {
 			tsc_khz = x86_platform.calibrate_tsc();
+			clocksource_tsc.freq_khz = tsc_khz;
+		}
 	} else {
 		/* We should not be here with non-native cpu calibration */
 		WARN_ON(x86_platform.calibrate_cpu != native_calibrate_cpu);
diff --git a/include/linux/clocksource_ids.h b/include/linux/clocksource_ids.h
index a4fa3436940c..2bb4d8c2f1b0 100644
--- a/include/linux/clocksource_ids.h
+++ b/include/linux/clocksource_ids.h
@@ -9,6 +9,7 @@ enum clocksource_ids {
 	CSID_X86_TSC_EARLY,
 	CSID_X86_TSC,
 	CSID_X86_KVM_CLK,
+	CSID_X86_ART,
 	CSID_MAX,
 };
 
-- 
2.35.3

