Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4560824917
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 20:34:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A386613C6;
	Thu,  4 Jan 2024 19:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A386613C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704396855;
	bh=XRsr08bgpJ/WzOBo9B43cbQdTTrzIqpon/GrRSTMCcM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=553ceHbcLwAHZo/gNpfMw088EVKnDY8bzp8GvKXGhx7Ygh70ErAxOy0Mdj8s5eNhy
	 9pTPGV1cwi12wBvLbkwM8znXtFy21iLw664ret5JtJX4rKYy3n0JtdykcQPxd55tqT
	 YXSwS2jfJ3d3j5B+4ICRIah8qFaN2C7tRMx4sySA0Di13Iqq5LSPHfaaF1cGh9VLms
	 uL3UuScpQxfxpwYNchZ/GMiYGFU3UT7ACkOLH9CCNNcz89/yA7HJ9tDyNrjObAW6oL
	 j8IXyOk8u4Ztcse8DObuesSgtVtovcQUWCrNTU1UpO2WW130v+IVrLe8bfsorRo6++
	 f2qhE9tTc7oEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l0CWrqljAcCl; Thu,  4 Jan 2024 19:34:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CB62611E2;
	Thu,  4 Jan 2024 19:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CB62611E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D5C61BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:34:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9E5A41946
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9E5A41946
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-ULpxKrvzrh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 19:34:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3EF7E4192B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 19:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EF7E4192B
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4452289"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4452289"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 11:34:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="899406952"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="899406952"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 11:34:06 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 Jan 2024 21:34:02 +0200
Message-Id: <20240104193402.675593-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704396848; x=1735932848;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UUzhQ3j8XObhLCMlPDVBMSw5HQPFHzs4APJyk03NnTg=;
 b=n7aapUEOrTcOjvfySwyobgRW61efBawp7nlSaJ7JM0CBrNit/bTxzWMH
 NxUmBLIpnJ6vEpMyRoDtDmmv7PTi6E/AlE2x+37Lfy4JiwSzq4/fGEi04
 Izoo5tIfusgbD1PSMjbJwQRLFCkoiNJn332zYEWlbRnrIKm8uWpBUUHoS
 9M4blfoRqmJLyB+QLGBYwpiGjbLLL6ra394IHHrVub8ImFSoVT89+/Jg+
 Q1xY02akVnzfjZfbPKVrJIh8h4ov8KfPZof02GFyg1VqxzcCGV8Xm9agg
 oufU2Xkt6Ij3Y4QGo6YF5qCY/eLcmzy3m3tlzLClgt1FmSGb88FKEAfsF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n7aapUEO
Subject: [Intel-wired-lan] [PATH iwl-next v2 1/1] e1000e: Minor flow
 correction in e1000_shutdown function
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
Cc: david.m.ertman@intel.com, Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add curly braces to avoid entering to an if statement where it is not
always required in e1000_shutdown function.
This improves code readability and might prevent a non-deterministic
behaviour in the future.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: fix commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index af5d9d97a0d6..cc8c531ec3df 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6688,14 +6688,14 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	if (adapter->hw.phy.type == e1000_phy_igp_3) {
 		e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
 	} else if (hw->mac.type >= e1000_pch_lpt) {
-		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
+		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC))) {
 			/* ULP does not support wake from unicast, multicast
 			 * or broadcast.
 			 */
 			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
-
-		if (retval)
-			return retval;
+			if (retval)
+				return retval;
+		}
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

