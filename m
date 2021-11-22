Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9615D4592E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 17:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4383D80D5A;
	Mon, 22 Nov 2021 16:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGuCBY56f_dk; Mon, 22 Nov 2021 16:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EA9880D56;
	Mon, 22 Nov 2021 16:19:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEFBB1BF350
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B955880D5A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id br5HGfLWQ7M8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Nov 2021 16:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 736E080C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Nov 2021 16:19:45 +0000 (UTC)
Received: from HP-EliteBook-840-G7.. (1-171-213-156.dynamic-ip.hinet.net
 [1.171.213.156])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 0B3C34019C; 
 Mon, 22 Nov 2021 16:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1637597983;
 bh=kQIunFclls2DTqedr2lGZECG1ePbf8SzkRz3Fmwtfks=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=MiKUKAt7ISqfEM4c2v7wqi2Kq2gNewEFbb2hs+1amq5lUXYNv3UzKNAvpx9/I7onY
 5giZs1j7YE7LL9FlQasa4QoDlXSTSzCycINK1Ww0pFSKrKS5s3MW7i1O6WrO8B26Bm
 5ZQulySnlzT6rqpp9CX6KtqHlYkjfcr458IQzzcKJQD0tyZ4fYIJ+QjZ12xLRff73C
 x1Hzmb4gwusLzs24BiGzl3P3KmDIMd0nCBpMXTdDUqxw+3UfjtTIoAdT1VGVH+8KwB
 vPMfL+ghWW//r5geSrG/UhSrUaAabSEv5qlc2EiZicblO081RpsRdWJiUNR8AhqV3V
 utGRxQmfTtHRA==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Tue, 23 Nov 2021 00:19:26 +0800
Message-Id: <20211122161927.874291-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211122161927.874291-1-kai.heng.feng@canonical.com>
References: <20211122161927.874291-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/3] Revert "e1000e: Add polling mechanism
 to indicate CSME DPG exit"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, acelan.kao@canonical.com,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit ef407b86d3cc7ab7ad37658c1c7a094cb8f3b6b4.

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=214821
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.h |  1 -
 drivers/net/ethernet/intel/e1000e/netdev.c  | 24 ---------------------
 drivers/net/ethernet/intel/e1000e/regs.h    |  1 -
 3 files changed, 26 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/net/ethernet/intel/e1000e/ich8lan.h
index 2504b11c3169f..1dfa1d28dae64 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
@@ -41,7 +41,6 @@
 #define E1000_FWSM_WLOCK_MAC_MASK	0x0380
 #define E1000_FWSM_WLOCK_MAC_SHIFT	7
 #define E1000_FWSM_ULP_CFG_DONE		0x00000400	/* Low power cfg done */
-#define E1000_EXFWSM_DPG_EXIT_DONE	0x00000001
 
 /* Shared Receive Address Registers */
 #define E1000_SHRAL_PCH_LPT(_i)		(0x05408 + ((_i) * 8))
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e16b7c0d98089..242314809e59c 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6483,10 +6483,8 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
-	bool firmware_bug = false;
 	u32 mac_data;
 	u16 phy_data;
-	u32 i = 0;
 
 	if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
 		/* Request ME unconfigure the device from S0ix */
@@ -6494,28 +6492,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 		mac_data &= ~E1000_H2ME_START_DPG;
 		mac_data |= E1000_H2ME_EXIT_DPG;
 		ew32(H2ME, mac_data);
-
-		/* Poll up to 2.5 seconds for ME to unconfigure DPG.
-		 * If this takes more than 1 second, show a warning indicating a
-		 * firmware bug
-		 */
-		while (!(er32(EXFWSM) & E1000_EXFWSM_DPG_EXIT_DONE)) {
-			if (i > 100 && !firmware_bug)
-				firmware_bug = true;
-
-			if (i++ == 250) {
-				e_dbg("Timeout (firmware bug): %d msec\n",
-				      i * 10);
-				break;
-			}
-
-			usleep_range(10000, 11000);
-		}
-		if (firmware_bug)
-			e_warn("DPG_EXIT_DONE took %d msec. This is a firmware bug\n",
-			       i * 10);
-		else
-			e_dbg("DPG_EXIT_DONE cleared after %d msec\n", i * 10);
 	} else {
 		/* Request driver unconfigure the device from S0ix */
 
diff --git a/drivers/net/ethernet/intel/e1000e/regs.h b/drivers/net/ethernet/intel/e1000e/regs.h
index 6c0cd8cab3ef2..8165ba2619a4d 100644
--- a/drivers/net/ethernet/intel/e1000e/regs.h
+++ b/drivers/net/ethernet/intel/e1000e/regs.h
@@ -213,7 +213,6 @@
 #define E1000_FACTPS	0x05B30	/* Function Active and Power State to MNG */
 #define E1000_SWSM	0x05B50	/* SW Semaphore */
 #define E1000_FWSM	0x05B54	/* FW Semaphore */
-#define E1000_EXFWSM	0x05B58	/* Extended FW Semaphore */
 /* Driver-only SW semaphore (not used by BOOT agents) */
 #define E1000_SWSM2	0x05B58
 #define E1000_FFLT_DBG	0x05F04	/* Debug Register */
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
