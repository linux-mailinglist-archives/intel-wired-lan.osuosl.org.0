Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54739349E14
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Mar 2021 01:39:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA56660BA4;
	Fri, 26 Mar 2021 00:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6dc1fvNBf3Uj; Fri, 26 Mar 2021 00:39:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC73E60B2D;
	Fri, 26 Mar 2021 00:39:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1241C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 66F8260BA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpaOFxq2Qczp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3C6260B96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Mar 2021 00:38:45 +0000 (UTC)
IronPort-SDR: ib234lNUgDMK1KZVP7Y1dVzRZieZz5CsY3MWcrfuPdeYUkcQ6sLNV6gdscWA55pc1e4neEYrRp
 6PGbcK4Okq/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="188762078"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="188762078"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:44 -0700
IronPort-SDR: Pwka1Fs54tKLfw1kUAkrVj32NlfQLeoiH+3KVjPTqrIyihQq7nPdY/gA8AM2WOka90DXnegfPZ
 lBC1JVVopnng==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="416276247"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 17:38:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 17:38:26 -0700
Message-Id: <20210326003834.3886241-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 03/11] fm10k: move error check
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

The error check and set_bit are placed in such a way that sparse (C=2)
warns:
.../fm10k_pci.c:1395:9: warning: context imbalance in 'fm10k_msix_mbx_pf' - different lock contexts for basic block

Which seems a little odd, but the code can obviously be moved
to where the variable is being set without changing functionality
at all, and it even seems to make a bit more sense with the check
closer to the set.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
index 9e3103fae723..dbcae92bb18d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pci.c
@@ -1370,7 +1370,6 @@ static irqreturn_t fm10k_msix_mbx_pf(int __always_unused irq, void *data)
 	struct fm10k_hw *hw = &interface->hw;
 	struct fm10k_mbx_info *mbx = &hw->mbx;
 	u32 eicr;
-	s32 err = 0;
 
 	/* unmask any set bits related to this interrupt */
 	eicr = fm10k_read_reg(hw, FM10K_EICR);
@@ -1386,15 +1385,16 @@ static irqreturn_t fm10k_msix_mbx_pf(int __always_unused irq, void *data)
 
 	/* service mailboxes */
 	if (fm10k_mbx_trylock(interface)) {
-		err = mbx->ops.process(hw, mbx);
+		s32 err = mbx->ops.process(hw, mbx);
+
+		if (err == FM10K_ERR_RESET_REQUESTED)
+			set_bit(FM10K_FLAG_RESET_REQUESTED, interface->flags);
+
 		/* handle VFLRE events */
 		fm10k_iov_event(interface);
 		fm10k_mbx_unlock(interface);
 	}
 
-	if (err == FM10K_ERR_RESET_REQUESTED)
-		set_bit(FM10K_FLAG_RESET_REQUESTED, interface->flags);
-
 	/* if switch toggled state we should reset GLORTs */
 	if (eicr & FM10K_EICR_SWITCHNOTREADY) {
 		/* force link down for at least 4 seconds */
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
