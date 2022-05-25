Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (unknown [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C40533BCA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 May 2022 13:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F3E940FDF;
	Wed, 25 May 2022 11:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EeOaWOYfLbwY; Wed, 25 May 2022 11:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F14D40FD5;
	Wed, 25 May 2022 11:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA4F1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 11:31:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A5C2612DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 11:31:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=canonical.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EILGG5Slmxo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 May 2022 11:31:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8A89612DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 May 2022 11:31:32 +0000 (UTC)
Received: from HP-EliteBook-840-G7.. (1-171-87-66.dynamic-ip.hinet.net
 [1.171.87.66])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id C14113F1D5; 
 Wed, 25 May 2022 11:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1653478291;
 bh=Lja71MctIRXwGgOSudtNTbu6Ufr7/x63mASCBfOq7z0=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=TyUv5eeB7SV23bnLRjArdv3s4sUp8YZEXbIYGY9G2Z8sXeIsOU99w1G+IzwYUlmyo
 OZlPIAZSvW68JWXD+UrvDlAJ8SOfmyXzLtcyvG1TYOvDI4kDU0ta6p1SbHc36gKCcr
 dswgD2GLlu4Xe286Psaa+1ZcyMOdz4AcI9AH1HxkFgU9G4o+oulZL5Ip3Me6snBO6N
 78c/Tuy5D9NhP/Pc9DU3ZR64Z/ouFxjDExyBYERab2TjAmAQvNztLQXijHTUC74IXZ
 mlELuzfUoQ775yvJsvP79IP7+8/auvU5HPLUUXPs77m6TFfSP0Z0s/ol/19i8aF7HX
 6pDimTGnS8sbQ==
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Wed, 25 May 2022 19:31:13 +0800
Message-Id: <20220525113113.171746-2-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220525113113.171746-1-kai.heng.feng@canonical.com>
References: <20220525113113.171746-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 2/2] igb: Make DMA faster when CPU is
 active on the PCIe link
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
Cc: linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Intel I210 on some Intel Alder Lake platforms can only achieve ~750Mbps
Tx speed via iperf. The RR2DCDELAY shows around 0x2xxx DMA delay, which
will be significantly lower when 1) ASPM is disabled or 2) SoC package
c-state stays above PC3. When the RR2DCDELAY is around 0x1xxx the Tx
speed can reach to ~950Mbps.

According to the I210 datasheet "8.26.1 PCIe Misc. Register - PCIEMISC",
"DMA Idle Indication" doesn't seem to tie to DMA coalesce anymore, so
set it to 1b for "DMA is considered idle when there is no Rx or Tx AND
when there are no TLPs indicating that CPU is active detected on the
PCIe link (such as the host executes CSR or Configuration register read
or write operation)" and performing Tx should also fall under "active
CPU on PCIe link" case.

In addition to that, commit b6e0c419f040 ("igb: Move DMA Coalescing init
code to separate function.") seems to wrongly changed from enabling
E1000_PCIEMISC_LX_DECISION to disabling it, also fix that.

Fixes: b6e0c419f040 ("igb: Move DMA Coalescing init code to separate function.")
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 68be2976f539f..c0d93fd19c1ed 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9898,11 +9898,10 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 dmac_thr;
 	u16 hwm;
+	u32 reg;
 
 	if (hw->mac.type > e1000_82580) {
 		if (adapter->flags & IGB_FLAG_DMAC) {
-			u32 reg;
-
 			/* force threshold to 0. */
 			wr32(E1000_DMCTXTH, 0);
 
@@ -9935,7 +9934,6 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
 			/* Disable BMC-to-OS Watchdog Enable */
 			if (hw->mac.type != e1000_i354)
 				reg &= ~E1000_DMACR_DC_BMC2OSW_EN;
-
 			wr32(E1000_DMACR, reg);
 
 			/* no lower threshold to disable
@@ -9952,12 +9950,12 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
 			 */
 			wr32(E1000_DMCTXTH, (IGB_MIN_TXPBSIZE -
 			     (IGB_TX_BUF_4096 + adapter->max_frame_size)) >> 6);
+		}
 
-			/* make low power state decision controlled
-			 * by DMA coal
-			 */
+		if (hw->mac.type >= e1000_i210 ||
+		    (adapter->flags & IGB_FLAG_DMAC)) {
 			reg = rd32(E1000_PCIEMISC);
-			reg &= ~E1000_PCIEMISC_LX_DECISION;
+			reg |= E1000_PCIEMISC_LX_DECISION;
 			wr32(E1000_PCIEMISC, reg);
 		} /* endif adapter->dmac is not disabled */
 	} else if (hw->mac.type == e1000_82580) {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
