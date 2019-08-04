Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE5F809D4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  4 Aug 2019 09:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CFCE86AEE;
	Sun,  4 Aug 2019 07:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDZpNVbrUoBR; Sun,  4 Aug 2019 07:40:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D04BC86ADD;
	Sun,  4 Aug 2019 07:40:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC7131BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 07:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2418F86AEE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 07:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dsAOXkvTG5sR for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Aug 2019 07:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D74A86AE5
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Aug 2019 07:40:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 00:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,345,1559545200"; d="scan'208";a="181399392"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2019 00:40:28 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sun,  4 Aug 2019 10:40:26 +0300
Message-Id: <20190804074026.25198-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v4] e1000e: PCIm function state support
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Due to commit: 5d8682588605 ("[misc] mei: me: allow runtime
pm for platform with D0i3")
when disconnecting the cable and reconnecting it the NIC
enters DMoff state. This caused wrong link indication
and duplex mismatch.

Checking PCIm function state and performing PHY reset after
exiting DMoff state in watchdog task, solves this issue.

Link: https://bugzilla.redhat.com/show_bug.cgi?id=1689436
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---

V2: Fix typos in commit message
V3: Fix minor typo
V4: Address community comments 
---
 drivers/net/ethernet/intel/e1000e/defines.h |  4 ++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 20 +++++++++++++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index fd550dee4982..4cff73cbd032 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -222,6 +222,10 @@
 #define E1000_STATUS_PHYRA      0x00000400      /* PHY Reset Asserted */
 #define E1000_STATUS_GIO_MASTER_ENABLE	0x00080000	/* Master Req status */
 
+/* PCIm function state */
+#define E1000_STATUS_PCIM_STATE	0x40000000
+#define PCIM_DMOFF_EXIT_TIMEOUT 100
+
 #define HALF_DUPLEX 1
 #define FULL_DUPLEX 2
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b5fed6177ad6..2d29c0d0be1b 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5162,7 +5162,7 @@ static void e1000_watchdog_task(struct work_struct *work)
 	struct e1000_phy_info *phy = &adapter->hw.phy;
 	struct e1000_ring *tx_ring = adapter->tx_ring;
 	struct e1000_hw *hw = &adapter->hw;
-	u32 link, tctl;
+	u32 link, tctl, pcim_state, tries = 0;
 
 	if (test_bit(__E1000_DOWN, &adapter->state))
 		return;
@@ -5187,6 +5187,24 @@ static void e1000_watchdog_task(struct work_struct *work)
 			/* Cancel scheduled suspend requests. */
 			pm_runtime_resume(netdev->dev.parent);
 
+			/* Checking if MAC is in DMoff state*/
+			pcim_state = er32(STATUS);
+			while (pcim_state & E1000_STATUS_PCIM_STATE) {
+				if (tries++ == PCIM_DMOFF_EXIT_TIMEOUT) {
+					e_dbg("Error in exiting dmoff\n");
+					e_err("PCIm DMoff timeout expired\n");
+					break;
+				}
+				usleep_range(10000, 20000);
+				pcim_state = er32(STATUS);
+
+				/* If MAC entered DMoff state, PHY reset is
+				 * needed after exiting it
+				 */
+				if (!(pcim_state & E1000_STATUS_PCIM_STATE))
+					e1000_phy_hw_reset(&adapter->hw);
+			}
+
 			/* update snapshot of PHY registers on LSC */
 			e1000_phy_read_status(adapter);
 			mac->ops.get_link_up_info(&adapter->hw,
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
