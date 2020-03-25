Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F48191E33
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2486523BE7;
	Wed, 25 Mar 2020 00:38:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iGf2Qn6rB6ge; Wed, 25 Mar 2020 00:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C03402036D;
	Wed, 25 Mar 2020 00:38:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93D3D1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CD9E20028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYJv-t5bHgnw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 7664D20009
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:36 +0000 (UTC)
IronPort-SDR: dvydxzp34ramyCGx7AxXrmTvGBYz/2R0VBTmwWCHau9Q1z7+T2wOOhQ9b8Mn1EYiDPV82/F7cy
 2D5wrBqslR9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:36 -0700
IronPort-SDR: 7mVBzSnXtBpF0pX/k+7QKPSCMnk3JBVOlTyvgbTZR5qdIqZ1uPNdSGiD0Wq7zu7Lv+qXQAJiJK
 jyBAoqcIkZaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099348"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:36 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:20 -0700
Message-Id: <20200325003824.5487-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200325003824.5487-1-andre.guedes@intel.com>
References: <20200325003824.5487-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 06/10] igc: Use netdev log helpers in
 igc_diag.c
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

In igc_diag.c we print log messages using dev_* helpers, generating
inconsistent output with the rest of the driver. Since this is a network
device driver, we should preferably use netdev_* helpers because they
append the interface name to the message, helping making sense out of
the logs.

This patch converts all dev_* calls to netdev_*. It also takes this
opportunity to remove the '\n' character at the end of messages since it
is automatically added by netdev_* log helpers.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_diag.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
index 56acc9b8447e..3532496bae34 100644
--- a/drivers/net/ethernet/intel/igc/igc_diag.c
+++ b/drivers/net/ethernet/intel/igc/igc_diag.c
@@ -46,9 +46,9 @@ static bool reg_pattern_test(struct igc_adapter *adapter, u64 *data, int reg,
 		wr32(reg, test_pattern[pat] & write);
 		val = rd32(reg);
 		if (val != (test_pattern[pat] & write & mask)) {
-			dev_err(&adapter->pdev->dev,
-				"pattern test reg %04X failed: got 0x%08X expected 0x%08X\n",
-				reg, val, test_pattern[pat] & write & mask);
+			netdev_err(adapter->netdev,
+				   "pattern test reg %04X failed: got 0x%08X expected 0x%08X",
+				   reg, val, test_pattern[pat] & write & mask);
 			*data = reg;
 			wr32(reg, before);
 			return true;
@@ -68,9 +68,9 @@ static bool reg_set_and_check(struct igc_adapter *adapter, u64 *data, int reg,
 	wr32(reg, write & mask);
 	val = rd32(reg);
 	if ((write & mask) != (val & mask)) {
-		dev_err(&adapter->pdev->dev,
-			"set/check reg %04X test failed: got 0x%08X expected 0x%08X\n",
-			reg, (val & mask), (write & mask));
+		netdev_err(adapter->netdev,
+			   "set/check reg %04X test failed: got 0x%08X expected 0x%08X",
+			   reg, (val & mask), (write & mask));
 		*data = reg;
 		wr32(reg, before);
 		return true;
@@ -97,9 +97,9 @@ bool igc_reg_test(struct igc_adapter *adapter, u64 *data)
 	wr32(IGC_STATUS, toggle);
 	after = rd32(IGC_STATUS) & toggle;
 	if (value != after) {
-		dev_err(&adapter->pdev->dev,
-			"failed STATUS register test got: 0x%08X expected: 0x%08X\n",
-			after, value);
+		netdev_err(adapter->netdev,
+			   "failed STATUS register test got: 0x%08X expected: 0x%08X",
+			   after, value);
 		*data = 1;
 		return true;
 	}
@@ -207,8 +207,8 @@ int igc_intr_test(struct igc_adapter *adapter, u64 *data)
 		*data = 1;
 		return -1;
 	}
-	dev_info(&adapter->pdev->dev, "testing %s interrupt\n",
-		 (shared_int ? "shared" : "unshared"));
+	netdev_info(adapter->netdev, "testing %s interrupt",
+		    (shared_int ? "shared" : "unshared"));
 
 	/* Disable all the interrupts */
 	wr32(IGC_IMC, ~0);
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
