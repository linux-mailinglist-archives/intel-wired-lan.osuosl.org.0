Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A13A97821
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 23:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C59040C7E;
	Tue, 22 Apr 2025 21:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yenap16U4pOD; Tue, 22 Apr 2025 21:03:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3296540C6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745355804;
	bh=Xfqb2SLAuOcbEFM1vJpESSmdh0z4+UaSR2eomrCIKkw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=w334jW2PSkGAPc4vfZADOZECr2Pk5TW8i95bK5QQSfEXevS3Ytwuj+53dFq5wXa1n
	 3k/zOdUr3PGwimSsv4YYJxE86cDAt0/Lkxs7Ve7eWunlWX3zExpaursocfs/3vCloT
	 s8fZuLG5EHExO+2lY4QhAC/vyM5/LRuI9xBrnGLS3mWYyD38Cz2wMvqu5buHALlHWi
	 v4bEAsU+b99XWSKi+SBNxpsOrbIOiln8eSjRTT0/J1ykV5261moUp3t8jK8vqvUfBa
	 70Bt8sF3YJIvcciMDRihCPW8Lfcwt3/fQre0dxS56zgBMAoV9jt5oYdkgO3mL2E6nL
	 cTAnhKvSspHQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3296540C6D;
	Tue, 22 Apr 2025 21:03:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A15D31A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 21:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D91682084
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 21:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oR5-YXv7Pu9H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 21:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3CBF8202F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3CBF8202F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3CBF8202F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 21:03:21 +0000 (UTC)
X-CSE-ConnectionGUID: Z9/e0DwvQJeJkkI8vgbMIg==
X-CSE-MsgGUID: uP141TQOQQCboC0Dp+Wn9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="57121220"
X-IronPort-AV: E=Sophos;i="6.15,232,1739865600"; d="scan'208";a="57121220"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 14:03:21 -0700
X-CSE-ConnectionGUID: OUauT3TZRy26PhsVcgPJ+g==
X-CSE-MsgGUID: u3e94VBtQrSN2U9GwG/45g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,232,1739865600"; d="scan'208";a="132653336"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 14:03:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, christopher.s.hall@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 22 Apr 2025 14:03:09 -0700
Message-ID: <20250422210309.1474002-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.48.1.397.gec9d649cc640
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745355802; x=1776891802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4jMbHXsOl77Bw/UuzVZQYfkycHnPuvGEihhN0BNcJWk=;
 b=LPdE3aZ5+qLT8cVOMx5oBibSjEelWyPMY6GVKvDbjXSd/Y8u2NUs10HB
 cal7nx/nYGCKh6pPkduQ1q6dWkN8CX6AhKYoKqWZE0J0sKqtbibIHb9pR
 C+Gm9pRN1WcezfhG88wE6yhiruu4Bccxcwxg+fctCLFjIp02114NK1qh+
 er5PoMZugnmw4ZBrWs+DlKEEONklttMeyaf3hh0LsLKizBkrQdMur6ClS
 edtAR314ZUdhbEyFdLnQx42CxAR74bzKylyVHXWyWhol7VDBQeQzpjnBk
 yjuRj1DgRh1R8B+wXBijuVUOuLdSDwBaP8LzN19pn7+uXcJHI2dBXMUFI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LPdE3aZ5
Subject: [Intel-wired-lan] [iwl-net] igc: fix lock order in igc_ptp_reset
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

Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM
transactions") added a new mutex to protect concurrent PTM transactions.
This lock is acquired in igc_ptp_reset() in order to ensure the PTM
registers are properly disabled after a device reset.

The flow where the lock is acquired already holds a spinlock, so acquiring
a mutex leads to a sleep-while-locking bug, reported both by smatch,
and the kernel test robot.

The critical section in igc_ptp_reset() does correctly use the
readx_poll_timeout_atomic variants, but the standard PTM flow uses regular
sleeping variants. This makes converting the mutex to a spinlock a bit
tricky.

Instead, re-order the locking in igc_ptp_reset. Acquire the mutex first,
and then the tmreg_lock spinlock. This is safe because there is no other
ordering dependency on these locks, as this is the only place where both
locks were acquired simultaneously. Indeed, any other flow acquiring locks
in that order would be wrong regardless.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Fixes: 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous PTM transactions")
Link: https://lore.kernel.org/intel-wired-lan/Z_-P-Hc1yxcw0lTB@stanley.mountain/
Link: https://lore.kernel.org/intel-wired-lan/202504211511.f7738f5d-lkp@intel.com/T/#u
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 612ed26a29c5..efc7b30e4211 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -1290,6 +1290,8 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 	/* reset the tstamp_config */
 	igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
 
+	mutex_lock(&adapter->ptm_lock);
+
 	spin_lock_irqsave(&adapter->tmreg_lock, flags);
 
 	switch (adapter->hw.mac.type) {
@@ -1308,7 +1310,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 		if (!igc_is_crosststamp_supported(adapter))
 			break;
 
-		mutex_lock(&adapter->ptm_lock);
 		wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
 		wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
 
@@ -1332,7 +1333,6 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 			netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
 
 		igc_ptm_reset(hw);
-		mutex_unlock(&adapter->ptm_lock);
 		break;
 	default:
 		/* No work to do. */
@@ -1349,5 +1349,7 @@ void igc_ptp_reset(struct igc_adapter *adapter)
 out:
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
 
+	mutex_unlock(&adapter->ptm_lock);
+
 	wrfl();
 }
-- 
2.48.1.397.gec9d649cc640

