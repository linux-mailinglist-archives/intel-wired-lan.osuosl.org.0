Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B576124917D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 01:41:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4194086CD7;
	Tue, 18 Aug 2020 23:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dn26r0gSu-La; Tue, 18 Aug 2020 23:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6556A86CE1;
	Tue, 18 Aug 2020 23:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC72C1BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6F9F8709D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQjK4Y1ykqDR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19488855EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 23:41:27 +0000 (UTC)
IronPort-SDR: 4ZUQt30FQHBJ8sdRC7MHCz0s5ZoX/TgH/Y9KmxM66qpI1Q2At/GYNRGisqDXvvr1x2/r832ILj
 jB2JLRKOUyQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="216546508"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="216546508"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 16:41:26 -0700
IronPort-SDR: pkUYE4Xao0sAQbv1hQspf02tKa46m8yiKj8gF0R4Cp0ozAI4OkZpcg3bU4eobPe4VF8Ck6Jl5r
 cUz8r2SLrCYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; d="scan'208";a="371059518"
Received: from jrperren-desk4.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.63.39])
 by orsmga001.jf.intel.com with ESMTP; 18 Aug 2020 16:41:25 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Aug 2020 16:40:01 -0700
Message-Id: <20200818234002.3057510-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 1/2] igc: Fix wrong timestamp
 latency numbers
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes from v1:
  - Added Fixes tag

The previous timestamping latency numbers were obtained by
interpolating the i210 numbers with the i225 crystal clock value. That
calculation was wrong.

Use the correct values from real measurements.

Fixes: 81b055205e8b ("igc: Add support for RX timestamping")
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 3070dfdb7eb4..2d566f3c827b 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -299,18 +299,14 @@ extern char igc_driver_name[];
 #define IGC_RX_HDR_LEN			IGC_RXBUFFER_256
 
 /* Transmit and receive latency (for PTP timestamps) */
-/* FIXME: These values were estimated using the ones that i225 has as
- * basis, they seem to provide good numbers with ptp4l/phc2sys, but we
- * need to confirm them.
- */
-#define IGC_I225_TX_LATENCY_10		9542
-#define IGC_I225_TX_LATENCY_100		1024
-#define IGC_I225_TX_LATENCY_1000	178
-#define IGC_I225_TX_LATENCY_2500	64
-#define IGC_I225_RX_LATENCY_10		20662
-#define IGC_I225_RX_LATENCY_100		2213
-#define IGC_I225_RX_LATENCY_1000	448
-#define IGC_I225_RX_LATENCY_2500	160
+#define IGC_I225_TX_LATENCY_10		240
+#define IGC_I225_TX_LATENCY_100		58
+#define IGC_I225_TX_LATENCY_1000	80
+#define IGC_I225_TX_LATENCY_2500	1325
+#define IGC_I225_RX_LATENCY_10		6450
+#define IGC_I225_RX_LATENCY_100		185
+#define IGC_I225_RX_LATENCY_1000	300
+#define IGC_I225_RX_LATENCY_2500	1485
 
 /* RX and TX descriptor control thresholds.
  * PTHRESH - MAC will consider prefetch if it has fewer than this number of
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
