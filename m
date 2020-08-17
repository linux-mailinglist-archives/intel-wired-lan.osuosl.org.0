Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9419247B02
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 01:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69CA585722;
	Mon, 17 Aug 2020 23:13:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SzF0k_HfG5lO; Mon, 17 Aug 2020 23:13:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBF158574A;
	Mon, 17 Aug 2020 23:12:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A73441BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9720020450
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnm4SsLbUWYq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Aug 2020 23:12:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 9C54D20013
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Aug 2020 23:12:54 +0000 (UTC)
IronPort-SDR: WGv5o45vXfTbIkINq9JjxLCCrL6LNn9nifR+kN0HwRxZynyF+1l8hC8lg8npX76a8cfs6cPdJ/
 v7ahPHmxV7tA==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="172854030"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="172854030"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 16:12:48 -0700
IronPort-SDR: HXLTAmcTod06ge9tYqqvdQLPkNZ/Ju+gJtG3ZVdR2EARC2IkBVeGct+Nm8H+NDtjf5iXeHQukT
 sam7zWjolUQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="292581854"
Received: from jcclancy-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.209.76.31])
 by orsmga003.jf.intel.com with ESMTP; 17 Aug 2020 16:12:48 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Aug 2020 16:12:30 -0700
Message-Id: <20200817231231.2971207-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency
 numbers
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

The previous timestamping latency numbers were obtained by
interpolating the i210 numbers with the i225 crystal clock value. That
calculation was wrong.

Use the correct values from real measurements.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 19f88f705ec3..522699b870c9 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -303,18 +303,14 @@ extern char igc_driver_name[];
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
