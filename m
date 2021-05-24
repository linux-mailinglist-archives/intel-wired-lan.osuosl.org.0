Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C03138E0E0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 May 2021 08:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04CB6606E0;
	Mon, 24 May 2021 06:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmL7hLriliKX; Mon, 24 May 2021 06:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BB2060690;
	Mon, 24 May 2021 06:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A81571BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 06:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92C38606E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 06:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQgAANutjWDZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 May 2021 06:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA43C600C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 May 2021 06:09:06 +0000 (UTC)
IronPort-SDR: 6qwE/mMYHc7muHyM81Dlkgn8F4VoOND4DaLJi8WtO67lppSdyrTbrRVos4xPZTmOBnB0UTEYZH
 ndju9nuMmEmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="198804453"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="198804453"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2021 23:09:05 -0700
IronPort-SDR: FpC2UauNwxstrBmJOaE/kj31N3Brurgfp6pKNrtFa282Bqd3gAlnJCMZ7MIKfyZE8BMdry0alp
 +smve0T6RCNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="463540148"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga004.fm.intel.com with ESMTP; 23 May 2021 23:09:04 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	dvorax.fuxbrumer@linux.intel.com
Date: Mon, 24 May 2021 09:09:01 +0300
Message-Id: <20210524060901.3622163-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Indentation fixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Minor fix of indentation in igc_defines.h

Fixes: 87938851b6efb ("igc: enable auxiliary PHC functions for the i225")
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 8f6ba2b8d9e6..26a6ca004697 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -99,8 +99,8 @@
 #define IGC_CTRL_RFCE		0x08000000  /* Receive Flow Control enable */
 #define IGC_CTRL_TFCE		0x10000000  /* Transmit flow control enable */
 
-#define IGC_CTRL_SDP0_DIR 0x00400000	/* SDP0 Data direction */
-#define IGC_CTRL_SDP1_DIR 0x00800000	/* SDP1 Data direction */
+#define IGC_CTRL_SDP0_DIR	0x00400000  /* SDP0 Data direction */
+#define IGC_CTRL_SDP1_DIR	0x00800000  /* SDP1 Data direction */
 
 /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
 #define MAX_JUMBO_FRAME_SIZE	0x2600
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
