Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 722C8182FA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 12:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC73E8948E;
	Thu, 12 Mar 2020 11:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTKwlVtolywN; Thu, 12 Mar 2020 11:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6545489490;
	Thu, 12 Mar 2020 11:57:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E54551BF41C
 for <intel-wired-lan@osuosl.org>; Thu, 12 Mar 2020 11:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E0C138948E
 for <intel-wired-lan@osuosl.org>; Thu, 12 Mar 2020 11:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsQcXh2EYksO for <intel-wired-lan@osuosl.org>;
 Thu, 12 Mar 2020 11:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E9D35883BC
 for <intel-wired-lan@osuosl.org>; Thu, 12 Mar 2020 11:57:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="277774790"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by fmsmga002.fm.intel.com with ESMTP; 12 Mar 2020 04:57:14 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu, 12 Mar 2020 13:57:07 +0200
Message-Id: <20200312115707.6534-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] e1000e: fix S0ix flows for cable
 connected case
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

Added a fix to S0ix entry and exit flows for TGP and above
MAC types, to the case when the ethernet cable is connected
and the link is up. With that the system is able to reach
SLP_S0 when going to freeze power state.

Change-type: ImplementationChange
Title: e1000e: fix S0ix flows for cable connected case
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 54 ++++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/regs.h   |  3 ++
 2 files changed, 57 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 1e1625122596..4b86c14961e8 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6405,6 +6405,31 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 	mac_data |= BIT(3);
 	ew32(CTRL_EXT, mac_data);
 
+	/* Disable disconnected cable conditioning for Power Gating */
+	mac_data = er32(DPGFR);
+	mac_data |= BIT(2);
+	ew32(DPGFR, mac_data);
+
+	/* Don't wake from dynamic Power Gating with clock request */
+	mac_data = er32(FEXTNVM12);
+	mac_data |= BIT(12);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Ungate PGCB clock */
+	mac_data = er32(FEXTNVM9);
+	mac_data |= BIT(28);
+	ew32(FEXTNVM9, mac_data);
+
+	/* Enable K1 off to enable mPHY Power Gating */
+	mac_data = er32(FEXTNVM6);
+	mac_data |= BIT(31);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Enable mPHY power gating for any link and speed */
+	mac_data = er32(FEXTNVM8);
+	mac_data |= BIT(9);
+	ew32(FEXTNVM8, mac_data);
+
 	/* Enable the Dynamic Clock Gating in the DMA and MAC */
 	mac_data = er32(CTRL_EXT);
 	mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
@@ -6434,6 +6459,35 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	mac_data |= BIT(0);
 	ew32(FEXTNVM7, mac_data);
 
+	/* Disable mPHY power gating for any link and speed */
+	mac_data = er32(FEXTNVM8);
+	mac_data &= ~BIT(9);
+	ew32(FEXTNVM8, mac_data);
+
+	/* Disable K1 off */
+	mac_data = er32(FEXTNVM6);
+	mac_data &= ~BIT(31);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Disable Ungate PGCB clock */
+	mac_data = er32(FEXTNVM9);
+	mac_data &= ~BIT(28);
+	ew32(FEXTNVM9, mac_data);
+
+	/* Cancel not waking from dynamic
+	 * Power Gating with clock request
+	 */
+	mac_data = er32(FEXTNVM12);
+	mac_data &= ~BIT(12);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Cancel disable disconnected cable conditioning
+	 * for Power Gating
+	 */
+	mac_data = er32(DPGFR);
+	mac_data &= ~BIT(2);
+	ew32(DPGFR, mac_data);
+
 	/* Disable Dynamic Power Gating */
 	mac_data = er32(CTRL_EXT);
 	mac_data &= 0xFFFFFFF7;
diff --git a/drivers/net/ethernet/intel/e1000e/regs.h b/drivers/net/ethernet/intel/e1000e/regs.h
index df59fd1d660c..04e030b6c4b2 100644
--- a/drivers/net/ethernet/intel/e1000e/regs.h
+++ b/drivers/net/ethernet/intel/e1000e/regs.h
@@ -21,9 +21,12 @@
 #define E1000_FEXTNVM5	0x00014	/* Future Extended NVM 5 - RW */
 #define E1000_FEXTNVM6	0x00010	/* Future Extended NVM 6 - RW */
 #define E1000_FEXTNVM7	0x000E4	/* Future Extended NVM 7 - RW */
+#define E1000_FEXTNVM8  0x5BB0  /* Future Extended NVM 8 - RW */
 #define E1000_FEXTNVM9	0x5BB4	/* Future Extended NVM 9 - RW */
 #define E1000_FEXTNVM11	0x5BBC	/* Future Extended NVM 11 - RW */
+#define E1000_FEXTNVM12 0x5BC0  /* Future Extended NVM 12 - RW */
 #define E1000_PCIEANACFG	0x00F18	/* PCIE Analog Config */
+#define E1000_DPGFR     0x00FAC /* Dynamic Power Gate Force Control Register */
 #define E1000_FCT	0x00030	/* Flow Control Type - RW */
 #define E1000_VET	0x00038	/* VLAN Ether Type - RW */
 #define E1000_ICR	0x000C0	/* Interrupt Cause Read - R/clr */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
