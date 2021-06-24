Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7826B3B2A33
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 10:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0778E405F3;
	Thu, 24 Jun 2021 08:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mkx-96CEyNdc; Thu, 24 Jun 2021 08:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE4A2405FB;
	Thu, 24 Jun 2021 08:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5811C1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEA0D40510
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8W_TiNwihNDx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 08:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8B86405C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:18:55 +0000 (UTC)
IronPort-SDR: m0AMLXhY2Jw0hYAqtzeqSS7rU8ZL3PsjnDxbMsvQQsmpV3i2BYETcIby8kZFp6MtmLi0vjlSae
 Dm3WWnk7Z+Ow==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194724606"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194724606"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:18:54 -0700
IronPort-SDR: qef4OyZCsXZFupdefjrQCpNksKJYcMIj3oRKjV2VMPKAwllIXaTeik1JYsdHR/bhwWkAHnbgOO
 fOpqwipdkIIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="474430592"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2021 01:18:52 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Thu, 24 Jun 2021 11:18:46 +0300
Message-Id: <20210624081846.568707-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 2/3] e1000e: Add polling mechanism to
 indicate CSME DPG exit
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

Per guidance from the CSME architecture team, it may take
up to 1 second for unconfiguring dynamic power gating mode.
Practically it can take more time. Wait up to 2.5 seconds to indicate
dynamic power gating exit from the s0ix configuration. Detect
scenarios that take more than 1 second but less than 2.5 seconds
will emit warning message.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  1 +
 drivers/net/ethernet/intel/e1000e/netdev.c  | 24 +++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/regs.h    |  1 +
 3 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index e59456d867db..9b145f6248a8 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -41,6 +41,7 @@
 #define E1000_FWSM_WLOCK_MAC_MASK	0x0380
 #define E1000_FWSM_WLOCK_MAC_SHIFT	7
 #define E1000_FWSM_ULP_CFG_DONE		0x00000400	/* Low power cfg done */
+#define E1000_EXFWSM_DPG_EXIT_DONE	0x00000001
 
 /* Shared Receive Address Registers */
 #define E1000_SHRAL_PCH_LPT(_i)		(0x05408 + ((_i) * 8))
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 786719890f2b..6e6e2e685e9d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6483,8 +6483,10 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
+	bool firmware_bug = false;
 	u32 mac_data;
 	u16 phy_data;
+	u32 i = 0;
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
 		/* Request ME un configure the device from s0ix */
@@ -6492,6 +6494,28 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 		mac_data &= ~E1000_H2ME_START_DPG;
 		mac_data |= E1000_H2ME_EXIT_DPG;
 		ew32(H2ME, mac_data);
+
+		/* Poll up to 2.5 seconds for ME to un configure DPG.
+		 * If this takes more than 1 second, show a warning indicating a
+		 * firmware bug
+		 */
+		while (!(er32(EXFWSM) & E1000_EXFWSM_DPG_EXIT_DONE)) {
+			if (i > 100 && !firmware_bug)
+				firmware_bug = true;
+
+			if (i++ == 250) {
+				e_dbg("Timeout (firmware bug): %d msec\n",
+				      i * 10);
+				break;
+			}
+
+			usleep_range(10000, 11000);
+		}
+		if (firmware_bug)
+			e_warn("DPG_EXIT_DONE took %d msec. This is a firmware bug\n",
+			       i * 10);
+		else
+			e_dbg("DPG_EXIT_DONE cleared after %d msec\n", i * 10);
 	} else {
 		/* Request driver un configure the device from s0ix */
 
diff --git a/drivers/net/ethernet/intel/e1000e/regs.h b/drivers/net/ethernet/intel/e1000e/regs.h
index 8165ba2619a4..6c0cd8cab3ef 100644
--- a/drivers/net/ethernet/intel/e1000e/regs.h
+++ b/drivers/net/ethernet/intel/e1000e/regs.h
@@ -213,6 +213,7 @@
 #define E1000_FACTPS	0x05B30	/* Function Active and Power State to MNG */
 #define E1000_SWSM	0x05B50	/* SW Semaphore */
 #define E1000_FWSM	0x05B54	/* FW Semaphore */
+#define E1000_EXFWSM	0x05B58	/* Extended FW Semaphore */
 /* Driver-only SW semaphore (not used by BOOT agents) */
 #define E1000_SWSM2	0x05B58
 #define E1000_FFLT_DBG	0x05F04	/* Debug Register */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
