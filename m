Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C32958C3F0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 12:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C0DE8105C;
	Mon, 13 May 2024 10:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kf5mT201QjbW; Mon, 13 May 2024 10:38:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9D5280F97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715596731;
	bh=ctccFuzOIHSR6wxuV6SotfOznbxPKQQaMU06/bru3UA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5aUkaYe/YHdxbXWybZRMFh72yRDtoaBSzBGoEquza0QQxV9EvkFPOv/uQdNnmdzIz
	 /7XCLXFkhXfkns3Ls26oBxGwZFMBmRjMseAE7QP4jyBL7qDzr9LlRTaOHF88LFCo22
	 xLvpy9+YZtkYJr11mzdM8BqGSIGCr29QzEPddCRmR4ihq+dy9Qo93UBhVf7NO2L9WY
	 ANG3h6d/eHDVydJ8anNFAucXgF8EoXjbMhv1bW56KpeEjvMiS4ks1U1vQtidJFflNa
	 uzWG7cOP2BCF8Im8KtdPQOkdUSicCDjk49d3RRZl22CnTxjN4H5s8KEG312hOvNvMH
	 zoh0SRs8qkxfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9D5280F97;
	Mon, 13 May 2024 10:38:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 319E71BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2BB6760765
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bOBHJPQvg-2U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 10:38:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 79F1660764
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79F1660764
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79F1660764
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 10:38:48 +0000 (UTC)
X-CSE-ConnectionGUID: Wuu0ggYzRmOiyYzU3ZaMIQ==
X-CSE-MsgGUID: LEoqHmzwQvGsWLnP5SE/mg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29038998"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="29038998"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 03:38:46 -0700
X-CSE-ConnectionGUID: ffHlNrxyRwOrL7MFQJm/9w==
X-CSE-MsgGUID: 1qZZ6hJaRCCuZyQIRuokXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61481729"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 13 May 2024 03:38:40 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Mon, 13 May 2024 16:08:05 +0530
Message-Id: <20240513103813.5666-5-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715596728; x=1747132728;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E24oiqBr9fZRW5QO8Q7Dp8xrmLM7n8Eet5142z/yLlA=;
 b=e2qplgASQEO6FR9rfA+OZwNUMh6X8iomoRepewXvLwOeFO5PgVorPH3w
 pSqtG/Dp8zdAIcwLEbon0TuVPl6q6Kl4sPLAOEVrMOV1CqzTk0No5djk2
 jfSK0OU+b7YX1SDw3+0uK6wG1GHJlyCOVaqba3k4RWNPrZv+F75JdoPP7
 BBzU5yPRFEr9BLo2+vnF1T45Y8UwdCYvqg5csUmZXVqwD6xJA30TXZelT
 VDFtANUN0BtDzvpBAZ6Fs/oUj0BE1/Ntx0pGAM7USUTknS0AFR6Z0pUb4
 2CvS0Tkur2XavH9po1vRpShPSuM4CfJOjV1RS0wovQimNwPOCGpyx4L+N
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e2qplgAS
Subject: [Intel-wired-lan] [PATCH v8 04/12] igc: remove
 convert_art_ns_to_tsc()
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

The core code provides a mechanism to convert the ART base clock to the
corresponding TSC value without requiring an architecture specific
function.

All what is required is to store the ART clocksoure ID and the cycles
value in the provided system_counterval structure.

Replace the direct conversion via convert_art_ns_to_tsc() by filling in
the required data.

No functional change intended.

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

