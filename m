Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A75217C02BD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 19:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 260BB6144A;
	Tue, 10 Oct 2023 17:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 260BB6144A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696959024;
	bh=ZqzhdJcX6wPN0GoAsa4tnKMhp9B3BhwBXyp14gkdMiM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3DSw4R3jmLczbTX/7opaF2agOZvIuSY7ucDR+gYM2gn3Rjjw/dq/ir8W4LEr9LPCr
	 ADGY/tUBdTRlo10nrLinN9YLm0PxyzZ7Ayasc7Z8NFziry0U6QOKsJCqS2b3eZ5SLZ
	 41zdmM7wCwAVuwgFnlYwJnX1SL3bClJuSWftVjRwSshPngPjDMIR5tPfXh5CcTVGMR
	 7l6DOG0ykCoTdVna1J4fBYo/1BalIz3ouCe/oavNxNmTGpp1jMsQnimaRirLETSqi5
	 m+sejkllqCdumskE3jg1RlxbFeK0hF82LRTxLQyT8S6cnhNR7bW5bt0zehJBC0qag5
	 lg0/zqRKCk/aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaf6Hfk1WR4l; Tue, 10 Oct 2023 17:30:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B704660F05;
	Tue, 10 Oct 2023 17:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B704660F05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0A11BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 17:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 427A3813E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 17:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 427A3813E1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6sMocwksN57 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 17:30:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B12C813BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 17:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B12C813BF
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3051152"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="3051152"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 10:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="747125117"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="747125117"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 10:30:12 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 10 Oct 2023 10:32:15 -0700
Message-Id: <20231010173215.1502053-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696959016; x=1728495016;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L2n0pBZLx8X5Vmzd2nbtc8v2w1Pf/4OYLxqFj2aYq5M=;
 b=SCPXqWvvjJsTdU7yNa770OvhSSPqb4jCrScb2dCDBQC6isVhmmITGw21
 c5FFEGQkb8udueYsLHI+4Nn7+Co6NuBiNXwEpEX+1YAlyLur9n+pg4KnP
 JZ8Cj0buLW/Zk1RBu03N+cKUpbKPdWXLe0BDlnCuYagF3dMdjw8znDzNI
 0uV25cncnYCSfsB7+x/GgZJDfllVm4uDVTMb35g6nuL9NBTbSbcRCf0WT
 817rAp4CFVhYV2BPCsUE/RzhR5zlT+PKWGonA7D5J5tBfpTDFjy6ZI/QB
 Vrt53yLnPNJmFWfKnOLHNVa+YTFracd9IU7mgnpVBQRTfvQPTwBuxSbEf
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SCPXqWvv
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Fix SRIOV LAG disable on
 non-compliant aggreagate
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If an attribute of an aggregate interface disqualifies it from supporting
SRIOV, the driver will unwind the SRIOV support.  Currently the driver is
clearing the feature bit for all interfaces in the aggregate, but this is
not allowing the other interfaces to unwind successfully on driver unload.

Only clear the feature bit for the interface that is currently unwinding.

Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for SRIOV LAG")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 2c96d1883e19..f405c07410a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1513,18 +1513,12 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 {
-	struct ice_lag_netdev_list *entry;
 	struct ice_netdev_priv *np;
-	struct net_device *netdev;
 	struct ice_pf *pf;
 
-	list_for_each_entry(entry, lag->netdev_head, node) {
-		netdev = entry->netdev;
-		np = netdev_priv(netdev);
-		pf = np->vsi->back;
-
-		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
-	}
+	np = netdev_priv(lag->netdev);
+	pf = np->vsi->back;
+	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
 }
 
 /**
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
