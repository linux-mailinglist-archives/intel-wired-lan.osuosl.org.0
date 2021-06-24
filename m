Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F384D3B2A34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 10:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91D4160B6E;
	Thu, 24 Jun 2021 08:19:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kSar_yt-ih3O; Thu, 24 Jun 2021 08:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D6A5606F2;
	Thu, 24 Jun 2021 08:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 988DC1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 970EE405ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1Bjf4X0AMqB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 08:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71B6E405E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 08:19:16 +0000 (UTC)
IronPort-SDR: chSL3bPpcS/nBz40SRGVqXdtDeugx0uRbVnZv0fFP+3f0X5xHutvnKbYSD9jO+DbV2q/ZZv56x
 TvxvXH9ISDOw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="229010199"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="229010199"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:19:15 -0700
IronPort-SDR: mldZB5T0ng2lZM/IVgfa8uEIwOlUfYSJ4CqzCSc8lVBd4ec9AGj6vtPT3hEts09e9oKLNxRnqc
 /TgQQInPV3kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="474430648"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2021 01:19:14 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Thu, 24 Jun 2021 11:19:08 +0300
Message-Id: <20210624081908.568757-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 3/3] e1000e: Additional PHY power
 saving in s0ix
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After transferring the MAC-PHY interface to the SMBus the PHY
will save power in S0ix low power idle mode.

Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 6e6e2e685e9d..c4f3e5ca7294 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6380,10 +6380,16 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		ew32(CTRL_EXT, mac_data);
 
 		/* DFT control: PHY bit: page769_20[0] = 1
+		 * page769_20[7] - PHY PLL stop
+		 * page769_20[8] - PHY go to the electrical idle
+		 * page769_20[9] - PHY serdes disable
 		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
 		 */
 		e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
 		phy_data |= BIT(0);
+		phy_data |= BIT(7);
+		phy_data |= BIT(8);
+		phy_data |= BIT(9);
 		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
 
 		mac_data = er32(EXTCNF_CTRL);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
