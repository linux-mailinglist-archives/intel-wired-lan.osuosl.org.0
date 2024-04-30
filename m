Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 055118B6D68
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 10:53:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01E581F1A;
	Tue, 30 Apr 2024 08:53:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kkYJxRevZ87P; Tue, 30 Apr 2024 08:53:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5C4281EE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714467214;
	bh=ZWKSxVp3g6FEjhFzqkaVaCjjN5LOOivC34XYpajGkYQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W8qDiSifg6eAZ/fSSPsaS8DLJ1nPzfqSp/x9lopfDevsEqPVSPMbGKcOMOZ+IItlf
	 CP/ilMA8RQ4qZTZWZrL9z9bOXj0MZ9kBCFIvelMFtY0OgsMsP4qvlBQkensNzmad8D
	 4szQlvFHJbZdvA1HYulFWJXFcnXFz6XrBwgIIqyqScw9JC6mMjDIp/xUVo1ubHRO+A
	 +Myd50WOKcszVOs6S5RxN9Cmao3+i6+gNLARkf98+/urWXeBSr5xIij25TrOpLfNll
	 UhOgyxiDrq4F6kGdA18cyNJz/cXi/ttw7Re8cQINlSpojQT4RlfQckQ3797d1C6TuB
	 YIsAqVzT42kxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5C4281EE6;
	Tue, 30 Apr 2024 08:53:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2091A1BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C813400C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j6-DwzsJQtDJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 08:53:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CFC7400C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CFC7400C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CFC7400C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 08:53:29 +0000 (UTC)
X-CSE-ConnectionGUID: Trul9KuvQ92MouxeQxUazQ==
X-CSE-MsgGUID: 8eCA1q/+SvO0f6DfHLamgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="21311470"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="21311470"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 01:53:29 -0700
X-CSE-ConnectionGUID: Jko3nYQ8QSeVsLQiem3bRA==
X-CSE-MsgGUID: HpNmxEhERTCWGv8ZE4lPCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26891657"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by orviesa007.jf.intel.com with ESMTP; 30 Apr 2024 01:53:22 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Apr 2024 14:22:21 +0530
Message-Id: <20240430085225.18086-9-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714467210; x=1746003210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KlV5CDUrB1wYm3hhtjGk3UkaNzeKBnXpOQYydmU3iM4=;
 b=Oj2O6Sv4FRmdBr0Tx0ZRaP511VTu/MxitNYpwB9CXLtAI30cUXLAESVM
 wESV/k92cvydLXGyec05n2eo9ZS2mNqZNuS6aluS3mLfPH0Nica1CnN9Y
 Qjt3nYwgIBh+/DgLPrdF8iXXT14Oub1w+vhQJGpwgQ1hQF6Zw6sxYfGXe
 2XBWGdQECesLJIMn3mT+B5D6SFT55lEr4CqbetZXGAWOAgRydVl0gmLtC
 l4mXwKd8Y0Y+wWHFa3kqtKhWYyW2j8Po8ftsCIQxGqBemv4TZjnfswH9I
 H25bKahPggmI87fRV3F2DIR/J3mMrH2HVOXLcdBQW2Iz2pP9bPDt4OLEB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oj2O6Sv4
Subject: [Intel-wired-lan] [PATCH v7 08/12] x86/tsc: Remove art to tsc
 conversion functions which are obsolete
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

The convert_art_to_tsc() and convert_art_ns_to_tsc() interfaces are no
longer required. This conversion is internally done in
get_device_system_crosststamp() using convert_base_to_cs().

Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 arch/x86/include/asm/tsc.h |  3 --
 arch/x86/kernel/tsc.c      | 60 --------------------------------------
 2 files changed, 63 deletions(-)

diff --git a/arch/x86/include/asm/tsc.h b/arch/x86/include/asm/tsc.h
index 405efb3e4996..94408a784c8e 100644
--- a/arch/x86/include/asm/tsc.h
+++ b/arch/x86/include/asm/tsc.h
@@ -28,9 +28,6 @@ static inline cycles_t get_cycles(void)
 }
 #define get_cycles get_cycles
 
-extern struct system_counterval_t convert_art_to_tsc(u64 art);
-extern struct system_counterval_t convert_art_ns_to_tsc(u64 art_ns);
-
 extern void tsc_early_init(void);
 extern void tsc_init(void);
 extern void mark_tsc_unstable(char *reason);
diff --git a/arch/x86/kernel/tsc.c b/arch/x86/kernel/tsc.c
index 45bf2f6d0ffa..5f0bd441ed4d 100644
--- a/arch/x86/kernel/tsc.c
+++ b/arch/x86/kernel/tsc.c
@@ -1297,66 +1297,6 @@ int unsynchronized_tsc(void)
 	return 0;
 }
 
-/*
- * Convert ART to TSC given numerator/denominator found in detect_art()
- */
-struct system_counterval_t convert_art_to_tsc(u64 art)
-{
-	u64 tmp, res, rem;
-
-	rem = do_div(art, art_base_clk.denominator);
-
-	res = art * art_base_clk.numerator;
-	tmp = rem * art_base_clk.numerator;
-
-	do_div(tmp, art_base_clk.denominator);
-	res += tmp + art_base_clk.offset;
-
-	return (struct system_counterval_t) {
-		.cs_id	= have_art ? CSID_X86_TSC : CSID_GENERIC,
-		.cycles	= res,
-	};
-}
-EXPORT_SYMBOL(convert_art_to_tsc);
-
-/**
- * convert_art_ns_to_tsc() - Convert ART in nanoseconds to TSC.
- * @art_ns: ART (Always Running Timer) in unit of nanoseconds
- *
- * PTM requires all timestamps to be in units of nanoseconds. When user
- * software requests a cross-timestamp, this function converts system timestamp
- * to TSC.
- *
- * This is valid when CPU feature flag X86_FEATURE_TSC_KNOWN_FREQ is set
- * indicating the tsc_khz is derived from CPUID[15H]. Drivers should check
- * that this flag is set before conversion to TSC is attempted.
- *
- * Return:
- * struct system_counterval_t - system counter value with the ID of the
- *	corresponding clocksource:
- *	cycles:		System counter value
- *	cs_id:		The clocksource ID for validating comparability
- */
-
-struct system_counterval_t convert_art_ns_to_tsc(u64 art_ns)
-{
-	u64 tmp, res, rem;
-
-	rem = do_div(art_ns, USEC_PER_SEC);
-
-	res = art_ns * tsc_khz;
-	tmp = rem * tsc_khz;
-
-	do_div(tmp, USEC_PER_SEC);
-	res += tmp;
-
-	return (struct system_counterval_t) {
-		.cs_id	= have_art ? CSID_X86_TSC : CSID_GENERIC,
-		.cycles	= res,
-	};
-}
-EXPORT_SYMBOL(convert_art_ns_to_tsc);
-
 static void tsc_refine_calibration_work(struct work_struct *work);
 static DECLARE_DELAYED_WORK(tsc_irqwork, tsc_refine_calibration_work);
 /**
-- 
2.35.3

