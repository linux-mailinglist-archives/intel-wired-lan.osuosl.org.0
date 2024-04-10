Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB1B89F133
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:49:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81B2760874;
	Wed, 10 Apr 2024 11:49:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OQ080FE04DfB; Wed, 10 Apr 2024 11:49:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEF31607A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749739;
	bh=qqARHk2WguAUiGGNiLAOcO+eYgMNuurEx3FgaySGd4o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pzwjse089qz7sW6ze0iFNp3pQ0+0SLr0OukmYlke+4wjzF89wZvVDcQR/6bCQcaBZ
	 wvbwv4CXAa24XB3UM+//pqvRWsXh64RaicMPf5s4qOE1Rv2/fHmQFszqfxAM1Z8lyu
	 hjbCqlt3cF7IpIsXCy7yQtw0uSef4Skc+l2O8r16Hu+nsnRL7OV25AChezeT2AbKmS
	 JzUVVxQj9wybQUQzencfzcPQaO9inQk8PtXb8d5/C7+LKdkSSy8Lp3fcASrsrCXfmp
	 Iiuk2EC9f+9VNc64Hu4A0cpKe9evhRYQliRM+zz6pqf0oW5m4lWHSqYpxecM4s0/Jl
	 16Gq6f2wZ91iA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEF31607A4;
	Wed, 10 Apr 2024 11:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FA091BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BD9E6085C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFi7h0Jx4HlE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:48:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 73890607A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73890607A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 73890607A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:48:57 +0000 (UTC)
X-CSE-ConnectionGUID: fswpUR6TQw+uRWIEhWajgw==
X-CSE-MsgGUID: C+Cq5IXVS/WOj9XKYNHEKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11944093"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11944093"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:48:57 -0700
X-CSE-ConnectionGUID: 5eO4LQXMSMS/z8NslE3o6Q==
X-CSE-MsgGUID: YwiGu1tXQbSKHJ70gI9tpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="43769250"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa002.fm.intel.com with ESMTP; 10 Apr 2024 04:48:50 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed, 10 Apr 2024 17:18:20 +0530
Message-Id: <20240410114828.25581-4-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749738; x=1744285738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7puByggnPgimteIXX6YsrxV9KWGylqST0xNcu2gGPvg=;
 b=OmsAGaTQeQjkaT1PaXMsDN9mzKtbdO610u+K+5XJaQqBCqdj9k7fmR3W
 KSYA+zP4BXMW6ODBWCgj94LrWKnWzPU05nZgLddkTU/BCU12I1Same8xh
 Uj+y8c3wfCVryqqC+9Q7t0Iix5Px4zi8413/b0+qJ/Q+BZs8yjM9lQSz9
 1hGFZU/Ou+R8ziCzHIdfRq3Z3qAre6uQa4dA9trvWx0spDomDwGYrK+2A
 DIu7bHfeeKUdl+m4ux2s3lAszepLzaKqZ3UHeDY4tlzDGtmkeOrf7vj9+
 7JLvM1ThuLfrPJOY554SX1ev33YRTx4wWE2cx9ruv0ydKsQLGWnLjYUif
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OmsAGaTQ
Subject: [Intel-wired-lan] [PATCH v6 03/11] igc: remove convert_art_to_tsc()
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

From: Thomas Gleixner <tglx@linutronix.de>

Remove convert_art_to_tsc() function call, Pass system clock cycles and
clocksource ID as input to get_device_system_crosststamp().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 885faaa7b9de..39656489d73e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -901,7 +901,11 @@ static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
 {
 #if IS_ENABLED(CONFIG_X86_TSC) && !defined(CONFIG_UML)
-	return convert_art_ns_to_tsc(tstamp);
+	return (struct system_counterval_t) {
+		.cs_id		= CSID_X86_ART,
+		.cycles		= tstamp,
+		.use_nsecs	= true,
+	};
 #else
 	return (struct system_counterval_t) { };
 #endif
-- 
2.35.3

