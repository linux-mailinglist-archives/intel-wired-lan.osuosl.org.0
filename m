Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80E03B402
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2019 13:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BB7086DA3;
	Mon, 10 Jun 2019 11:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqxeP3MBcBVm; Mon, 10 Jun 2019 11:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E09886FC3;
	Mon, 10 Jun 2019 11:27:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 207BB1BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 11:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CABF862E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 11:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q5GMHiBb4vAX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2019 11:27:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 02AF086234
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2019 11:27:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 04:27:01 -0700
X-ExtLoop1: 1
Received: from ccdlinuxdev08.iil.intel.com ([143.185.161.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Jun 2019 04:26:59 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2019 14:26:57 +0300
Message-Id: <20190610112657.10952-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: PCIm function state support
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
When disconnecting the cable and reconnecting it the NIC
enters DMoff state. This caused wring link indication
and duplex mismatch. This bug is decribed in:
https://bugzilla.redhat.com/show_bug.cgi?id=1689436

Checking PCIm function state and performing PHY reset after a
timeout in watchdog task solves this issue.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/defines.h b/drivers/net/ethernet/intel/e1000e/defines.h
index fd550dee4982..13877fe300f1 100644
--- a/drivers/net/ethernet/intel/e1000e/defines.h
+++ b/drivers/net/ethernet/intel/e1000e/defines.h
@@ -222,6 +222,9 @@
 #define E1000_STATUS_PHYRA      0x00000400      /* PHY Reset Asserted */
 #define E1000_STATUS_GIO_MASTER_ENABLE	0x00080000	/* Master Req status */
 
+/* PCIm function state */
+#define E1000_STATUS_PCIM_STATE         0x40000000
+
 #define HALF_DUPLEX 1
 #define FULL_DUPLEX 2
 
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index b081a1ef6859..c6a10fd30e4e 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5173,8 +5173,9 @@ static void e1000_watchdog_task(struct work_struct *work)
 	struct e1000_mac_info *mac = &adapter->hw.mac;
 	struct e1000_phy_info *phy = &adapter->hw.phy;
 	struct e1000_ring *tx_ring = adapter->tx_ring;
+	u32 dmoff_exit_timeout = 100, tries = 0;
 	struct e1000_hw *hw = &adapter->hw;
-	u32 link, tctl;
+	u32 link, tctl, pcim_state;
 
 	if (test_bit(__E1000_DOWN, &adapter->state))
 		return;
@@ -5199,6 +5200,21 @@ static void e1000_watchdog_task(struct work_struct *work)
 			/* Cancel scheduled suspend requests. */
 			pm_runtime_resume(netdev->dev.parent);
 
+			/* Checking if MAC is in DMoff state*/
+			pcim_state = er32(STATUS);
+			while (pcim_state & E1000_STATUS_PCIM_STATE) {
+				if (tries++ == dmoff_exit_timeout) {
+					e_dbg("Error in exiting dmoff\n");
+					break;
+				}
+				usleep_range(10000, 20000);
+				pcim_state = er32(STATUS);
+
+				/* Checking if MAC exited DMoff state */
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
