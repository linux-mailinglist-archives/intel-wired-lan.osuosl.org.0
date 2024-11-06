Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A61929BF5D4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:59:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF4A360753;
	Wed,  6 Nov 2024 18:58:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3o7GYzR_CROR; Wed,  6 Nov 2024 18:58:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01F3160731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919538;
	bh=GPHp2jeL3Sa1Vk7+apOFmD5jgxoWfDS7PJ0jmYA8sxg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kyvMGvdK9XJGJc56uOdfHlXMckqPLbqe2gJVubuCy/nalkHmE2gqaCmfN6xM/4949
	 w6RQL8sAc9xorV7VO+3R8g6mpe5y7ud9mTCHwE4U6VOJeax8+R5TwueMqgsew+Swee
	 4Mz7noJhbil6lOQjqdNQXy/hZ4WzhQzPFrtcnWOqjBwD23gPs9b3ZuerKOTzhR2Ks/
	 4AmbBlNpxq17stZkiPsP37h9yoRdfkfKUjkJ9EcFCSroHWhHU2/VdFD/NNf6qXPVb5
	 kCmj3fLnUmMHIUiqwMFuxe47j1D6vlF4qIMInk3CiHeRt7KHt4KsXUYcFI5PpY/6nk
	 0AU55EEFDl2Hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01F3160731;
	Wed,  6 Nov 2024 18:58:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E1D83B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7BD8940128
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wamhk0ttdedt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B0044045B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B0044045B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B0044045B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-CSE-ConnectionGUID: EQ+WHGUXQI+d6gHUL234IA==
X-CSE-MsgGUID: k1zwKvY9S6yqOxqnrgF4AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959486"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959486"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:52 -0800
X-CSE-ConnectionGUID: clNr92t9TmaCBl+JWltSiw==
X-CSE-MsgGUID: ITsS1WUlQ0i0Ncor/HuHYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813801"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:42 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com
Date: Wed,  6 Nov 2024 18:47:22 +0000
Message-Id: <20241106184722.17230-7-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919532; x=1762455532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bt7XG36pg3234h1RpdS9ZPjF7IWhCP4yi40vlCJTGls=;
 b=aH4VutBOHcgvdc70j2bQSfrKdKy6uOIa9Ph+JdWMjbWOkEk6OxzOivj8
 J33vAPSRNIaPpT0vBlwth6HuCPmeOno05yO6JF/7zUMI4xczNZLzDnN/t
 iiNHebgdfB7BRz6R4JfhW3S7d8E/ULasgYugs6wKp6W9PhNyaBjBb0MCb
 KqPVryRERku9Ej2KPSKViwKChO94e/ItaiSvQ1RahNcmxwMg9BorUQLNB
 o9WD4yLjlps/zat7v5Cwgi8V2GZZZm3v1sjpmWWVdeFhQsfwmjrgSt2xA
 mmphHauCkAeszCVZykQVN2PDgm434A87Slnh0eCmSRR1NHmx8RYhD+Z30
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aH4VutBO
Subject: [Intel-wired-lan] [PATCH iwl-net v3 6/6] igc: Add lock preventing
 multiple simultaneous PTM transactions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a mutex around the PTM transaction to prevent multiple transactors

Multiple processes try to initiate a PTM transaction, one or all may
fail. This can be reproduced by running two instances of the
following:

$ sudo phc2sys -O 0 -i tsn0 -m

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
 fails

Note: Normally two instance of PHC2SYS will not run, but one process
 should not break another.

Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h     |  1 +
 drivers/net/ethernet/intel/igc/igc_ptp.c | 20 ++++++++++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..323db1e2be38 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -319,6 +319,7 @@ struct igc_adapter {
 	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 	struct system_time_snapshot snapshot;
+	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
 
 	char fw_version[32];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 343205bffc35..612ed26a29c5 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -974,6 +974,7 @@ static void igc_ptm_log_error(struct igc_adapter *adapter, u32 ptm_stat)
 	}
 }
 
+/* The PTM lock: adapter->ptm_lock must be held when calling igc_ptm_trigger() */
 static void igc_ptm_trigger(struct igc_hw *hw)
 {
 	u32 ctrl;
@@ -990,6 +991,7 @@ static void igc_ptm_trigger(struct igc_hw *hw)
 	wrfl();
 }
 
+/* The PTM lock: adapter->ptm_lock must be held when calling igc_ptm_reset() */
 static void igc_ptm_reset(struct igc_hw *hw)
 {
 	u32 ctrl;
@@ -1068,9 +1070,16 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
 {
 	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
 						   ptp_caps);
+	int ret;
 
-	return get_device_system_crosststamp(igc_phc_get_syncdevicetime,
-					     adapter, &adapter->snapshot, cts);
+	/* This blocks until any in progress PTM transactions complete */
+	mutex_lock(&adapter->ptm_lock);
+
+	ret = get_device_system_crosststamp(igc_phc_get_syncdevicetime,
+					    adapter, &adapter->snapshot, cts);
+	mutex_unlock(&adapter->ptm_lock);
+
+	return ret;
 }
 
 static int igc_ptp_getcyclesx64(struct ptp_clock_info *ptp,
@@ -1169,6 +1178,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	spin_lock_init(&adapter->ptp_tx_lock);
 	spin_lock_init(&adapter->free_timer_lock);
 	spin_lock_init(&adapter->tmreg_lock);
+	mutex_init(&adapter->ptm_lock);
 
 	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
 	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
@@ -1181,6 +1191,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
 	if (IS_ERR(adapter->ptp_clock)) {
 		adapter->ptp_clock = NULL;
 		netdev_err(netdev, "ptp_clock_register failed\n");
+		mutex_destroy(&adapter->ptm_lock);
 	} else if (adapter->ptp_clock) {
 		netdev_info(netdev, "PHC added\n");
 		adapter->ptp_flags |= IGC_PTP_ENABLED;
@@ -1210,10 +1221,12 @@ static void igc_ptm_stop(struct igc_adapter *adapter)
 	struct igc_hw *hw = &adapter->hw;
 	u32 ctrl;
 
+	mutex_lock(&adapter->ptm_lock);
 	ctrl = rd32(IGC_PTM_CTRL);
 	ctrl &= ~IGC_PTM_CTRL_EN;
 
 	wr32(IGC_PTM_CTRL, ctrl);
+	mutex_unlock(&adapter->ptm_lock);
 }
 
 /**
@@ -1255,6 +1268,7 @@ void igc_ptp_stop(struct igc_adapter *adapter)
 		netdev_info(adapter->netdev, "PHC removed\n");
 		adapter->ptp_flags &= ~IGC_PTP_ENABLED;
 	}
+	mutex_destroy(&adapter->ptm_lock);
 }
 
 /**
@@ -1294,6 +1308,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 		if (!igc_is_crosststamp_supported(adapter))
 			break;
 
+		mutex_lock(&adapter->ptm_lock);
 		wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
 		wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
 
@@ -1317,6 +1332,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
 
 		igc_ptm_reset(hw);
+		mutex_unlock(&adapter->ptm_lock);
 		break;
 	default:
 		/* No work to do. */
-- 
2.34.1

