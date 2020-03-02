Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EF61764D8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Mar 2020 21:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FF97855EA;
	Mon,  2 Mar 2020 20:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQzpsCzuMdsu; Mon,  2 Mar 2020 20:23:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2449F851FF;
	Mon,  2 Mar 2020 20:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CAC11BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 20:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6751120130
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 20:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lytD5xJIcJqD for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2020 20:23:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 919182002B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 20:23:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 12:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574150400"; d="scan'208";a="262903536"
Received: from ccdlinuxdev09.iil.intel.com ([143.185.160.241])
 by fmsmga004.fm.intel.com with ESMTP; 02 Mar 2020 12:23:07 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  2 Mar 2020 22:23:07 +0200
Message-Id: <20200302202307.23260-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove copper fiber switch
 control
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

i225 device support copper mode only
PHY signal detect indication for copper fiber switch
not applicable to i225 part

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h |   2 -
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 193 +++++++++++++--------------
 drivers/net/ethernet/intel/igc/igc_main.c    |   9 --
 drivers/net/ethernet/intel/igc/igc_regs.h    |   1 -
 4 files changed, 96 insertions(+), 109 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index dd0c86ce09ed..e5116337b68d 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -91,8 +91,6 @@
 #define IGC_CTRL_RFCE		0x08000000  /* Receive Flow Control enable */
 #define IGC_CTRL_TFCE		0x10000000  /* Transmit flow control enable */
 
-#define IGC_CONNSW_AUTOSENSE_EN	0x1
-
 /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
 #define MAX_JUMBO_FRAME_SIZE	0x2600
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 69f50b8e2af3..82d0c893ed41 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -160,142 +160,141 @@ static void igc_get_regs(struct net_device *netdev,
 	regs_buff[1] = rd32(IGC_STATUS);
 	regs_buff[2] = rd32(IGC_CTRL_EXT);
 	regs_buff[3] = rd32(IGC_MDIC);
-	regs_buff[4] = rd32(IGC_CONNSW);
 
 	/* NVM Register */
-	regs_buff[5] = rd32(IGC_EECD);
+	regs_buff[4] = rd32(IGC_EECD);
 
 	/* Interrupt */
 	/* Reading EICS for EICR because they read the
 	 * same but EICS does not clear on read
 	 */
+	regs_buff[5] = rd32(IGC_EICS);
 	regs_buff[6] = rd32(IGC_EICS);
-	regs_buff[7] = rd32(IGC_EICS);
-	regs_buff[8] = rd32(IGC_EIMS);
-	regs_buff[9] = rd32(IGC_EIMC);
-	regs_buff[10] = rd32(IGC_EIAC);
-	regs_buff[11] = rd32(IGC_EIAM);
+	regs_buff[7] = rd32(IGC_EIMS);
+	regs_buff[8] = rd32(IGC_EIMC);
+	regs_buff[9] = rd32(IGC_EIAC);
+	regs_buff[10] = rd32(IGC_EIAM);
 	/* Reading ICS for ICR because they read the
 	 * same but ICS does not clear on read
 	 */
+	regs_buff[11] = rd32(IGC_ICS);
 	regs_buff[12] = rd32(IGC_ICS);
-	regs_buff[13] = rd32(IGC_ICS);
-	regs_buff[14] = rd32(IGC_IMS);
-	regs_buff[15] = rd32(IGC_IMC);
-	regs_buff[16] = rd32(IGC_IAC);
-	regs_buff[17] = rd32(IGC_IAM);
+	regs_buff[13] = rd32(IGC_IMS);
+	regs_buff[14] = rd32(IGC_IMC);
+	regs_buff[15] = rd32(IGC_IAC);
+	regs_buff[16] = rd32(IGC_IAM);
 
 	/* Flow Control */
-	regs_buff[18] = rd32(IGC_FCAL);
-	regs_buff[19] = rd32(IGC_FCAH);
-	regs_buff[20] = rd32(IGC_FCTTV);
-	regs_buff[21] = rd32(IGC_FCRTL);
-	regs_buff[22] = rd32(IGC_FCRTH);
-	regs_buff[23] = rd32(IGC_FCRTV);
+	regs_buff[17] = rd32(IGC_FCAL);
+	regs_buff[18] = rd32(IGC_FCAH);
+	regs_buff[19] = rd32(IGC_FCTTV);
+	regs_buff[20] = rd32(IGC_FCRTL);
+	regs_buff[21] = rd32(IGC_FCRTH);
+	regs_buff[22] = rd32(IGC_FCRTV);
 
 	/* Receive */
-	regs_buff[24] = rd32(IGC_RCTL);
-	regs_buff[25] = rd32(IGC_RXCSUM);
-	regs_buff[26] = rd32(IGC_RLPML);
-	regs_buff[27] = rd32(IGC_RFCTL);
+	regs_buff[23] = rd32(IGC_RCTL);
+	regs_buff[24] = rd32(IGC_RXCSUM);
+	regs_buff[25] = rd32(IGC_RLPML);
+	regs_buff[26] = rd32(IGC_RFCTL);
 
 	/* Transmit */
-	regs_buff[28] = rd32(IGC_TCTL);
-	regs_buff[29] = rd32(IGC_TIPG);
+	regs_buff[27] = rd32(IGC_TCTL);
+	regs_buff[28] = rd32(IGC_TIPG);
 
 	/* Wake Up */
 
 	/* MAC */
 
 	/* Statistics */
-	regs_buff[30] = adapter->stats.crcerrs;
-	regs_buff[31] = adapter->stats.algnerrc;
-	regs_buff[32] = adapter->stats.symerrs;
-	regs_buff[33] = adapter->stats.rxerrc;
-	regs_buff[34] = adapter->stats.mpc;
-	regs_buff[35] = adapter->stats.scc;
-	regs_buff[36] = adapter->stats.ecol;
-	regs_buff[37] = adapter->stats.mcc;
-	regs_buff[38] = adapter->stats.latecol;
-	regs_buff[39] = adapter->stats.colc;
-	regs_buff[40] = adapter->stats.dc;
-	regs_buff[41] = adapter->stats.tncrs;
-	regs_buff[42] = adapter->stats.sec;
-	regs_buff[43] = adapter->stats.htdpmc;
-	regs_buff[44] = adapter->stats.rlec;
-	regs_buff[45] = adapter->stats.xonrxc;
-	regs_buff[46] = adapter->stats.xontxc;
-	regs_buff[47] = adapter->stats.xoffrxc;
-	regs_buff[48] = adapter->stats.xofftxc;
-	regs_buff[49] = adapter->stats.fcruc;
-	regs_buff[50] = adapter->stats.prc64;
-	regs_buff[51] = adapter->stats.prc127;
-	regs_buff[52] = adapter->stats.prc255;
-	regs_buff[53] = adapter->stats.prc511;
-	regs_buff[54] = adapter->stats.prc1023;
-	regs_buff[55] = adapter->stats.prc1522;
-	regs_buff[56] = adapter->stats.gprc;
-	regs_buff[57] = adapter->stats.bprc;
-	regs_buff[58] = adapter->stats.mprc;
-	regs_buff[59] = adapter->stats.gptc;
-	regs_buff[60] = adapter->stats.gorc;
-	regs_buff[61] = adapter->stats.gotc;
-	regs_buff[62] = adapter->stats.rnbc;
-	regs_buff[63] = adapter->stats.ruc;
-	regs_buff[64] = adapter->stats.rfc;
-	regs_buff[65] = adapter->stats.roc;
-	regs_buff[66] = adapter->stats.rjc;
-	regs_buff[67] = adapter->stats.mgprc;
-	regs_buff[68] = adapter->stats.mgpdc;
-	regs_buff[69] = adapter->stats.mgptc;
-	regs_buff[70] = adapter->stats.tor;
-	regs_buff[71] = adapter->stats.tot;
-	regs_buff[72] = adapter->stats.tpr;
-	regs_buff[73] = adapter->stats.tpt;
-	regs_buff[74] = adapter->stats.ptc64;
-	regs_buff[75] = adapter->stats.ptc127;
-	regs_buff[76] = adapter->stats.ptc255;
-	regs_buff[77] = adapter->stats.ptc511;
-	regs_buff[78] = adapter->stats.ptc1023;
-	regs_buff[79] = adapter->stats.ptc1522;
-	regs_buff[80] = adapter->stats.mptc;
-	regs_buff[81] = adapter->stats.bptc;
-	regs_buff[82] = adapter->stats.tsctc;
-	regs_buff[83] = adapter->stats.iac;
-	regs_buff[84] = adapter->stats.rpthc;
-	regs_buff[85] = adapter->stats.hgptc;
-	regs_buff[86] = adapter->stats.hgorc;
-	regs_buff[87] = adapter->stats.hgotc;
-	regs_buff[88] = adapter->stats.lenerrs;
-	regs_buff[89] = adapter->stats.scvpc;
-	regs_buff[90] = adapter->stats.hrmpc;
+	regs_buff[29] = adapter->stats.crcerrs;
+	regs_buff[30] = adapter->stats.algnerrc;
+	regs_buff[31] = adapter->stats.symerrs;
+	regs_buff[32] = adapter->stats.rxerrc;
+	regs_buff[33] = adapter->stats.mpc;
+	regs_buff[34] = adapter->stats.scc;
+	regs_buff[35] = adapter->stats.ecol;
+	regs_buff[36] = adapter->stats.mcc;
+	regs_buff[37] = adapter->stats.latecol;
+	regs_buff[38] = adapter->stats.colc;
+	regs_buff[39] = adapter->stats.dc;
+	regs_buff[40] = adapter->stats.tncrs;
+	regs_buff[41] = adapter->stats.sec;
+	regs_buff[42] = adapter->stats.htdpmc;
+	regs_buff[43] = adapter->stats.rlec;
+	regs_buff[44] = adapter->stats.xonrxc;
+	regs_buff[45] = adapter->stats.xontxc;
+	regs_buff[46] = adapter->stats.xoffrxc;
+	regs_buff[47] = adapter->stats.xofftxc;
+	regs_buff[48] = adapter->stats.fcruc;
+	regs_buff[49] = adapter->stats.prc64;
+	regs_buff[50] = adapter->stats.prc127;
+	regs_buff[51] = adapter->stats.prc255;
+	regs_buff[52] = adapter->stats.prc511;
+	regs_buff[53] = adapter->stats.prc1023;
+	regs_buff[54] = adapter->stats.prc1522;
+	regs_buff[55] = adapter->stats.gprc;
+	regs_buff[56] = adapter->stats.bprc;
+	regs_buff[57] = adapter->stats.mprc;
+	regs_buff[58] = adapter->stats.gptc;
+	regs_buff[59] = adapter->stats.gorc;
+	regs_buff[60] = adapter->stats.gotc;
+	regs_buff[61] = adapter->stats.rnbc;
+	regs_buff[62] = adapter->stats.ruc;
+	regs_buff[63] = adapter->stats.rfc;
+	regs_buff[64] = adapter->stats.roc;
+	regs_buff[65] = adapter->stats.rjc;
+	regs_buff[66] = adapter->stats.mgprc;
+	regs_buff[67] = adapter->stats.mgpdc;
+	regs_buff[68] = adapter->stats.mgptc;
+	regs_buff[69] = adapter->stats.tor;
+	regs_buff[70] = adapter->stats.tot;
+	regs_buff[71] = adapter->stats.tpr;
+	regs_buff[72] = adapter->stats.tpt;
+	regs_buff[73] = adapter->stats.ptc64;
+	regs_buff[74] = adapter->stats.ptc127;
+	regs_buff[75] = adapter->stats.ptc255;
+	regs_buff[76] = adapter->stats.ptc511;
+	regs_buff[77] = adapter->stats.ptc1023;
+	regs_buff[78] = adapter->stats.ptc1522;
+	regs_buff[79] = adapter->stats.mptc;
+	regs_buff[80] = adapter->stats.bptc;
+	regs_buff[81] = adapter->stats.tsctc;
+	regs_buff[82] = adapter->stats.iac;
+	regs_buff[83] = adapter->stats.rpthc;
+	regs_buff[84] = adapter->stats.hgptc;
+	regs_buff[85] = adapter->stats.hgorc;
+	regs_buff[86] = adapter->stats.hgotc;
+	regs_buff[87] = adapter->stats.lenerrs;
+	regs_buff[88] = adapter->stats.scvpc;
+	regs_buff[89] = adapter->stats.hrmpc;
 
 	for (i = 0; i < 4; i++)
-		regs_buff[91 + i] = rd32(IGC_SRRCTL(i));
+		regs_buff[90 + i] = rd32(IGC_SRRCTL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[95 + i] = rd32(IGC_PSRTYPE(i));
+		regs_buff[94 + i] = rd32(IGC_PSRTYPE(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[99 + i] = rd32(IGC_RDBAL(i));
+		regs_buff[98 + i] = rd32(IGC_RDBAL(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[103 + i] = rd32(IGC_RDBAH(i));
+		regs_buff[102 + i] = rd32(IGC_RDBAH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[107 + i] = rd32(IGC_RDLEN(i));
+		regs_buff[106 + i] = rd32(IGC_RDLEN(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[111 + i] = rd32(IGC_RDH(i));
+		regs_buff[110 + i] = rd32(IGC_RDH(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[115 + i] = rd32(IGC_RDT(i));
+		regs_buff[114 + i] = rd32(IGC_RDT(i));
 	for (i = 0; i < 4; i++)
-		regs_buff[119 + i] = rd32(IGC_RXDCTL(i));
+		regs_buff[118 + i] = rd32(IGC_RXDCTL(i));
 
 	for (i = 0; i < 10; i++)
-		regs_buff[123 + i] = rd32(IGC_EITR(i));
+		regs_buff[122 + i] = rd32(IGC_EITR(i));
 	for (i = 0; i < 16; i++)
-		regs_buff[139 + i] = rd32(IGC_RAL(i));
+		regs_buff[138 + i] = rd32(IGC_RAL(i));
 	for (i = 0; i < 16; i++)
-		regs_buff[145 + i] = rd32(IGC_RAH(i));
+		regs_buff[144 + i] = rd32(IGC_RAH(i));
 
 	for (i = 0; i < 4; i++)
-		regs_buff[149 + i] = rd32(IGC_TDBAL(i));
+		regs_buff[148 + i] = rd32(IGC_TDBAL(i));
 	for (i = 0; i < 4; i++)
 		regs_buff[152 + i] = rd32(IGC_TDBAH(i));
 	for (i = 0; i < 4; i++)
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d406aaea24af..47009fe0cbde 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -4036,7 +4036,6 @@ static void igc_watchdog_task(struct work_struct *work)
 	struct igc_hw *hw = &adapter->hw;
 	struct igc_phy_info *phy = &hw->phy;
 	u16 phy_data, retry_count = 20;
-	u32 connsw;
 	u32 link;
 	int i;
 
@@ -4049,14 +4048,6 @@ static void igc_watchdog_task(struct work_struct *work)
 			link = false;
 	}
 
-	/* Force link down if we have fiber to swap to */
-	if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
-		if (hw->phy.media_type == igc_media_type_copper) {
-			connsw = rd32(IGC_CONNSW);
-			if (!(connsw & IGC_CONNSW_AUTOSENSE_EN))
-				link = 0;
-		}
-	}
 	if (link) {
 		/* Cancel scheduled suspend requests. */
 		pm_runtime_resume(netdev->dev.parent);
diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
index 96dee3c1a5f7..79789176fc80 100644
--- a/drivers/net/ethernet/intel/igc/igc_regs.h
+++ b/drivers/net/ethernet/intel/igc/igc_regs.h
@@ -11,7 +11,6 @@
 #define IGC_CTRL_EXT		0x00018  /* Extended Device Control - RW */
 #define IGC_MDIC		0x00020  /* MDI Control - RW */
 #define IGC_MDICNFG		0x00E04  /* MDC/MDIO Configuration - RW */
-#define IGC_CONNSW		0x00034  /* Copper/Fiber switch control - RW */
 #define IGC_I225_PHPM		0x00E14  /* I225 PHY Power Management */
 
 /* Internal Packet Buffer Size Registers */
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
