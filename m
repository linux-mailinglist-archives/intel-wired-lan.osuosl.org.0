Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273938D18A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:33:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BC1240BB4;
	Tue, 28 May 2024 10:33:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e7acu2gIekEz; Tue, 28 May 2024 10:33:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 231DB40BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716892419;
	bh=W/wj5Px8AuEbm4X1wFBqPQII57gEYuGOPwkLVXfBjX0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g2NM6gsjA5DqoKAUTOd1b6ercdh5fbkAMjrWtE/Yb5T9xaRwX2VBtwrCB+Gi9D4Cw
	 MfimAQXyc1HGW61FRb6rBZ7quKZtWrwdJW+KVhJM4kMU/3TtLpzO2YW1hWwGPxaTwH
	 3seH2ovFIS+SFc/Sqo9CBVejZ+e6RPvTFrsuLj0zGZ2Hy00AxBceH9C9twkSU8nNb6
	 1zHgkn3QGp6Zdk7JH92vSjXJrIUKpsffVKALGuf1guoEI2nc1nbncedZdcuRgx9GLZ
	 YYrqX02Z5YEQJUAD0cSmKQI5w0uA+BRkOigzUzKMMvIWENiW3ic4BOCvgt3Ba3g5dI
	 NX+Qirrvx1zNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 231DB40BDF;
	Tue, 28 May 2024 10:33:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23ABE1D236E
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1040440167
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:33:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eIO4k3SiQm80 for <intel-wired-lan@osuosl.org>;
 Tue, 28 May 2024 10:33:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CF4740125
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CF4740125
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CF4740125
 for <intel-wired-lan@osuosl.org>; Tue, 28 May 2024 10:33:35 +0000 (UTC)
X-CSE-ConnectionGUID: WkDPJGQTReeq/09fz1Z9hA==
X-CSE-MsgGUID: TQ6htoAyRoOdmwgdAeYCBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17062843"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="17062843"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:33:34 -0700
X-CSE-ConnectionGUID: tQv59pxgQICOudrGPGFVag==
X-CSE-MsgGUID: DJJSzkWyRx23ibIWgr53PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35020898"
Received: from unknown (HELO ccdlinuxdev11.iil.intel.com) ([143.185.162.51])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:33:33 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 28 May 2024 13:33:29 +0300
Message-Id: <20240528103329.784584-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716892416; x=1748428416;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6ze6rOO+2w1UZJLYgkzT7gbiB8BnBqWxWPi0udfC8bg=;
 b=OV5FyhazFDdcL57pribZXO4G9ZKx775B6FMKTx41RniCMNapKn/SPXQE
 GkCc0Nj8cXkCPod1jNkiM71nDqNjMmyGDAhZZlAl0KQVwlqWrzPVNME1L
 5SacBENb2hXnwGhi6dEJ4RTsBk6HSE7OoGY/J7ifCXhumkRFCuF7AS+qj
 Ca8kLDOh58WzC2O+vF2ZlgmJOZaKXzYfi5P1tFFLapbzpHvvqJxLrTg9j
 z0iYpKgNAF938fBjtDWJi3cIvHqOtH0eu8aZ3AFGYs1W4qJuaaEl9llBJ
 qFAWcqETmZ2vSBsdj3uqAR3et/At7R/933HtxGymAbj3HAeNLZ9TjTNOZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OV5Fyhaz
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: Fix S0ix residency
 on Meteor Lake corporate systems
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
Cc: "Vitaly . Lifshits" <vitaly.lifshits@intel.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dima Ruinskiy <dima.ruinskiy@intel.com>

On vPro systems,the  configuration of the I219-LM to achieve power
gating and S0ix residency is split between the driver and the CSME FW.
It was discovered that in some scenarios, where the network cable is
connected and then disconnected, S0ix residency is not always reached.
This was root-caused to a subset of I219-LM register writes that are not
performed by the CSME FW. Therefore, the driver should perform these
register writes on corporate setups, regardless of the CSME FW state.

Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Vitaly.Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 132 ++++++++++-----------
 1 file changed, 66 insertions(+), 66 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index da5c59daf8ba..3cd161c6672b 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6363,49 +6363,49 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		mac_data |= E1000_EXTCNF_CTRL_GATE_PHY_CFG;
 		ew32(EXTCNF_CTRL, mac_data);
 
-		/* Enable the Dynamic Power Gating in the MAC */
-		mac_data = er32(FEXTNVM7);
-		mac_data |= BIT(22);
-		ew32(FEXTNVM7, mac_data);
-
 		/* Disable disconnected cable conditioning for Power Gating */
 		mac_data = er32(DPGFR);
 		mac_data |= BIT(2);
 		ew32(DPGFR, mac_data);
 
-		/* Don't wake from dynamic Power Gating with clock request */
-		mac_data = er32(FEXTNVM12);
-		mac_data |= BIT(12);
-		ew32(FEXTNVM12, mac_data);
-
-		/* Ungate PGCB clock */
-		mac_data = er32(FEXTNVM9);
-		mac_data &= ~BIT(28);
-		ew32(FEXTNVM9, mac_data);
-
-		/* Enable K1 off to enable mPHY Power Gating */
-		mac_data = er32(FEXTNVM6);
-		mac_data |= BIT(31);
-		ew32(FEXTNVM6, mac_data);
-
-		/* Enable mPHY power gating for any link and speed */
-		mac_data = er32(FEXTNVM8);
-		mac_data |= BIT(9);
-		ew32(FEXTNVM8, mac_data);
-
 		/* Enable the Dynamic Clock Gating in the DMA and MAC */
 		mac_data = er32(CTRL_EXT);
 		mac_data |= E1000_CTRL_EXT_DMA_DYN_CLK_EN;
 		ew32(CTRL_EXT, mac_data);
-
-		/* No MAC DPG gating SLP_S0 in modern standby
-		 * Switch the logic of the lanphypc to use PMC counter
-		 */
-		mac_data = er32(FEXTNVM5);
-		mac_data |= BIT(7);
-		ew32(FEXTNVM5, mac_data);
 	}
 
+	/* Enable the Dynamic Power Gating in the MAC */
+	mac_data = er32(FEXTNVM7);
+	mac_data |= BIT(22);
+	ew32(FEXTNVM7, mac_data);
+
+	/* Don't wake from dynamic Power Gating with clock request */
+	mac_data = er32(FEXTNVM12);
+	mac_data |= BIT(12);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Ungate PGCB clock */
+	mac_data = er32(FEXTNVM9);
+	mac_data &= ~BIT(28);
+	ew32(FEXTNVM9, mac_data);
+
+	/* Enable K1 off to enable mPHY Power Gating */
+	mac_data = er32(FEXTNVM6);
+	mac_data |= BIT(31);
+	ew32(FEXTNVM6, mac_data);
+
+	/* Enable mPHY power gating for any link and speed */
+	mac_data = er32(FEXTNVM8);
+	mac_data |= BIT(9);
+	ew32(FEXTNVM8, mac_data);
+
+	/* No MAC DPG gating SLP_S0 in modern standby
+	 * Switch the logic of the lanphypc to use PMC counter
+	 */
+	mac_data = er32(FEXTNVM5);
+	mac_data |= BIT(7);
+	ew32(FEXTNVM5, mac_data);
+
 	/* Disable the time synchronization clock */
 	mac_data = er32(FEXTNVM7);
 	mac_data |= BIT(31);
@@ -6498,33 +6498,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	} else {
 		/* Request driver unconfigure the device from S0ix */
 
-		/* Disable the Dynamic Power Gating in the MAC */
-		mac_data = er32(FEXTNVM7);
-		mac_data &= 0xFFBFFFFF;
-		ew32(FEXTNVM7, mac_data);
-
-		/* Disable mPHY power gating for any link and speed */
-		mac_data = er32(FEXTNVM8);
-		mac_data &= ~BIT(9);
-		ew32(FEXTNVM8, mac_data);
-
-		/* Disable K1 off */
-		mac_data = er32(FEXTNVM6);
-		mac_data &= ~BIT(31);
-		ew32(FEXTNVM6, mac_data);
-
-		/* Disable Ungate PGCB clock */
-		mac_data = er32(FEXTNVM9);
-		mac_data |= BIT(28);
-		ew32(FEXTNVM9, mac_data);
-
-		/* Cancel not waking from dynamic
-		 * Power Gating with clock request
-		 */
-		mac_data = er32(FEXTNVM12);
-		mac_data &= ~BIT(12);
-		ew32(FEXTNVM12, mac_data);
-
 		/* Cancel disable disconnected cable conditioning
 		 * for Power Gating
 		 */
@@ -6537,13 +6510,6 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 		mac_data &= 0xFFF7FFFF;
 		ew32(CTRL_EXT, mac_data);
 
-		/* Revert the lanphypc logic to use the internal Gbe counter
-		 * and not the PMC counter
-		 */
-		mac_data = er32(FEXTNVM5);
-		mac_data &= 0xFFFFFF7F;
-		ew32(FEXTNVM5, mac_data);
-
 		/* Enable the periodic inband message,
 		 * Request PCIe clock in K1 page770_17[10:9] =01b
 		 */
@@ -6581,6 +6547,40 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	mac_data &= ~BIT(31);
 	mac_data |= BIT(0);
 	ew32(FEXTNVM7, mac_data);
+
+	/* Disable the Dynamic Power Gating in the MAC */
+	mac_data = er32(FEXTNVM7);
+	mac_data &= 0xFFBFFFFF;
+	ew32(FEXTNVM7, mac_data);
+
+	/* Disable mPHY power gating for any link and speed */
+	mac_data = er32(FEXTNVM8);
+	mac_data &= ~BIT(9);
+	ew32(FEXTNVM8, mac_data);
+
+	/* Disable K1 off */
+	mac_data = er32(FEXTNVM6);
+	mac_data &= ~BIT(31);
+	ew32(FEXTNVM6, mac_data);
+
+	/* Disable Ungate PGCB clock */
+	mac_data = er32(FEXTNVM9);
+	mac_data |= BIT(28);
+	ew32(FEXTNVM9, mac_data);
+
+	/* Cancel not waking from dynamic
+	 * Power Gating with clock request
+	 */
+	mac_data = er32(FEXTNVM12);
+	mac_data &= ~BIT(12);
+	ew32(FEXTNVM12, mac_data);
+
+	/* Revert the lanphypc logic to use the internal Gbe counter
+	 * and not the PMC counter
+	 */
+	mac_data = er32(FEXTNVM5);
+	mac_data &= 0xFFFFFF7F;
+	ew32(FEXTNVM5, mac_data);
 }
 
 static int e1000e_pm_freeze(struct device *dev)
-- 
2.34.1

