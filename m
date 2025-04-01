Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3FFA78542
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 01:36:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 053876129A;
	Tue,  1 Apr 2025 23:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r8YRleIPdxWQ; Tue,  1 Apr 2025 23:36:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C487A6129F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743550573;
	bh=YWpurqV4VCx0dKiLhAayxn/QbwYQMCuZlKWVOJ+kYds=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fVa5eWphaEiugBBwX2Pi2gz/4uC/N2ciSq430BJyPFmmwHKzZvxUg3GbE2v6JGwao
	 4y+Yimo3jHp8tbnu3eZy+KFTeFpkXYvle1jLURVG1spn9QoqvSc4P8UIjJUX1uXqNK
	 Rm+GwYTcYNnOkgZYyQMehYCJ2ltVLDu7PybnrfzmSRQnwBxDmSzIlVYEtQWG9xDnnQ
	 08JLTJC00EDmwrjfoSAL92+DkIVuS2QOZGf2/xO2RvEDu2reg4nnQUPiiHhj4UjrKx
	 tPor4LCdo1c55oLxpHzCuep/SdbRtYmqRWqxyzXGI2xSzLxxU1o2WaitdfFRgfXIxC
	 pAgAUBIYxdY+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C487A6129F;
	Tue,  1 Apr 2025 23:36:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EECD6C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0F1341348
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ap83VTHnY4zW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 063464134C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 063464134C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 063464134C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: SE8W9g1cQAyLoakhXJcT1Q==
X-CSE-MsgGUID: AZfOQTuSSNmbS/a50oSGmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55527619"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55527619"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:07 -0700
X-CSE-ConnectionGUID: Lhs1atT4T3SmCWJZiXH6+w==
X-CSE-MsgGUID: NrDtj4o2SzqRpoTdJWQHJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="127354861"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 01 Apr 2025 16:35:34 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-jk-igc-ptm-fixes-v4-v4-6-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, vinicius.gomes@intel.com, 
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Christopher S M Hall <christopher.s.hall@intel.com>, 
 Corinna Vinschen <vinschen@redhat.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743550568; x=1775086568;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=2cCo3BggoMxwUtWv9qpieI0IjPMxkVF8/63I65QDqUg=;
 b=TfOY/PQGuKjW35aKvdetFDpiIHaW0cNkQTG001a0T2VVAMP5SuIFuEIa
 pOoa391QOc32KWLdqKx+CxK1T4gbQnFndwdXNHNho3xWCNppE9sl5RBpR
 jtUttuAE5KnH04ROIFeuJFgjIcqJJQzZOsknDQr68cGaEgVxsADr5GqrG
 NLJl5DYD7y2ZU4prCwYdwWANcPQCa4pSDr2FGqk/Cqo3s2R13YDPA2KDr
 2cHCG4JJKp2fOF5HWaVR0sSVhWueuS7Vk2dt6F4XY030dnTwiVF9hruVR
 P2h8Xjxn7WjUIL352jOSIcFhL+69Zz09KzhlBCYn6SfSbRK1KELv8m+Am
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TfOY/PQG
Subject: [Intel-wired-lan] [PATCH iwl-net v4 6/6] igc: add lock preventing
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

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
Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h     |  1 +
 drivers/net/ethernet/intel/igc/igc_ptp.c | 20 ++++++++++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index cd1d7b6c1782352094f6867a31b6958c929bbbf4..e03b5c89bdb1ab8b1a04b6e10ab8d666d383eee2 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -319,6 +319,7 @@ struct igc_adapter {
 	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
 	ktime_t ptp_reset_start; /* Reset time in clock mono */
 	struct system_time_snapshot snapshot;
+	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
 
 	char fw_version[32];
 
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 343205bffc355022306bcb1db35109e2113bb430..612ed26a29c5d491cc3f2c2af803adc770d60fc2 100644
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
2.48.1.397.gec9d649cc640

