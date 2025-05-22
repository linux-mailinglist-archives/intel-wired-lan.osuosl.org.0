Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E70AC11F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 19:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31A93612AE;
	Thu, 22 May 2025 17:17:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FB0m2PATYSDK; Thu, 22 May 2025 17:17:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D93B26145A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747934247;
	bh=7I1u2KPGxvVBrgmW4tCBIsBdVk7PC3Sfyw7dKg3NglE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HQG/1tM3hMVSPCG9dLudi9OkZRX36gq4jtwznbI6OnsJxGbsCfhMeEznGbEdzAJ8C
	 P2CzdTYCue8cqaxhiqMweW4RW4klE5RWVSdb/IhghQP8TMQ8RTPURimyughaqzMSru
	 977L3wdKtD+ysbnkApiTd7yx35oWyGMYwQrjLXiSGJEZzhIGL0RLB0xMhiriH3QGsz
	 f9m6jUgOCxmCaam6Z3Lzql0NKxtOieAMNknXSAs/FuFuMxhdL0kMzI6rBTLZxOxryL
	 SKTYVznANiiUbjE1E4k7GQL9UQSrReOXrx8jLVWRiL0Cw84Smqfi5erNAhNQowEWNj
	 CuTEO6xh0orRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D93B26145A;
	Thu, 22 May 2025 17:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 845C8237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6AA9D407B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:17:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VO6K66ZHGuwH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 17:17:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D2A3D404A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2A3D404A9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2A3D404A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 17:17:25 +0000 (UTC)
X-CSE-ConnectionGUID: Nx/93n4QTcqIoFQDiaf6Qw==
X-CSE-MsgGUID: 2c+D9cbhQk2RbWdrVHLWIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50028232"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50028232"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 10:17:25 -0700
X-CSE-ConnectionGUID: FpEIUuKlTZa7wAstKFMWfA==
X-CSE-MsgGUID: aRjlXsKMT/OIyfsfFAoj/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="171575519"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 10:17:25 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 May 2025 13:16:57 -0400
Message-ID: <20250522171657.3784177-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747934246; x=1779470246;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TZ1YGEwIZohbm72MsWG7D2noZpTVOHhAlCfbJTVLK84=;
 b=VwzqRNIYGNHph0bxUoRfkJIt80kKue6yNZjCM9LYSoAX371qB8PRZIFW
 G62nlo1cC3Xp3/ZnfJGf9FB7xhvRAWmvJYI4CoEPREMTsoh/rcJfQXtVJ
 wo/kIFeVrTfY+a4f0Aw+fdC8YOcTIkt/8L0EiXTZ5a0w93rnAysEBt/0e
 ZuPh48fv/JMhMqOz0kzpP55RvLMsa7pXV6OHQlPPRLLWbzIRaDSPuRmKB
 WQnbdxgacz26zrfpDlER2k3NDt0LE3IiLELXzTTvzVDD941L35qNk8J8I
 rB1sWnMPfFBCIHxvG1J7UTXU8pAr9E01rIlwGC/SYTuJ0QYMsBXA6s5NX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VwzqRNIY
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in eswitch
 lag check
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

The function ice_lag_is_switchdev_running() is being called from outside of
the LAG event handler code.  This results in the lag->upper_netdev being
NULL sometimes.  To avoid a NULL-pointer dereference, there needs to be a
check before it is dereferenced.

Fixes: 776fe19953b0 ("ice: block default rule setting on LAG interface")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index c5e3ada4746c..e22f2e5a3b19 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -2798,6 +2798,9 @@ bool ice_lag_is_switchdev_running(struct ice_pf *pf)
 	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) || !lag)
 		return false;
 
+	if (!lag->upper_netdev)
+		return false;
+
 	rcu_read_lock();
 	for_each_netdev_in_bond_rcu(lag->upper_netdev, tmp_nd) {
 		struct ice_netdev_priv *priv = netdev_priv(tmp_nd);
-- 
2.49.0

