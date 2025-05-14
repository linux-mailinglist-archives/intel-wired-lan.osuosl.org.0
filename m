Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3CDAB618D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 06:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9292A61010;
	Wed, 14 May 2025 04:32:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KhisWwOzirpQ; Wed, 14 May 2025 04:32:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F1F9761008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747197122;
	bh=u4S5Pz9e+/b2tuc3ilwpmzU4uHkB8UAkeNmsBhnhh2Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UInK6jg/DWqPszahoKIZ1bSh+sPJ60eU1q3AVT/hWc1Fa0+1z26yE+qXgQ/zhpPrG
	 93hB8MpXEJu9uyT63I3qR72IgtTprjRYyDoAQXybETSrRtUX+p/v1XKKMYy9SdqYLB
	 eXOTKSN2AXUEsDHVMTjXRNMddetJOWe2Y+QKPD7iRavxLZ6blHWYqAzcQXxxdwf57P
	 m6fDIxSAElDI1IcpEBBoK10RxCzjtCE5OqGLxu6q4OQ9ChxFwl7Y5qo24bYZGu5Jjk
	 NFE18Ej5SlLP8N0CX+ujMnzCqPTBSXB19o419WVmU5u9H0r8U6o83nZjpLhDdB2np7
	 krUQ4dv6RwZAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1F9761008;
	Wed, 14 May 2025 04:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B423153
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7524560803
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aM0J0p3vvl2K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 04:31:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6E2560A59
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6E2560A59
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6E2560A59
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 04:31:58 +0000 (UTC)
X-CSE-ConnectionGUID: Ey+vV/YxQ4Wx1Bjft+0WxA==
X-CSE-MsgGUID: XYb1xUfRSpCKBCvzGKa8ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="36699544"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="36699544"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 21:31:33 -0700
X-CSE-ConnectionGUID: 5Zxt4s7TQt+Oj5pEhwJ6iw==
X-CSE-MsgGUID: KxRckVdYT3ekTZxCXgeJ0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="142861937"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by orviesa004.jf.intel.com with ESMTP; 13 May 2025 21:31:26 -0700
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Date: Wed, 14 May 2025 00:29:44 -0400
Message-Id: <20250514042945.2685273-8-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747197118; x=1778733118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0dLog9l3Xnpd+gs+hRIb40IRlDcbRwXl+QmLyBvPzOU=;
 b=bD26CbOBnkosRC7k1y6kSMOmUQRt6K0BMOH7qU9h9R1y2nkelLqYK+Pe
 1p+F7v5+xr3QzMcddhI5OYrSB0AQIMF5RE3tpP94z4xDYbGqZTsY4B0Z5
 SN1P32G4L+VVQoqrq1xu8vlcRPwIScvCozGNWiZdm2ChQUH4NT9eJtti0
 Ord1EUyRIaf7IW96wQlvsvhcxow/ahtkuvrfi6u0mM2MQzcITGQEw7Y9l
 c1tbUHocGzimokNfGHaWk75qJ5rUFXjOxYzNhv8RoWfR6hR+4MjowMtsf
 oJWJgXFuEvYnFL/mR1EG3ZpetER+trlPgwnpM4URxzLhdIDrUGjiSBBo1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bD26CbOB
Subject: [Intel-wired-lan] [PATCH iwl-next v2 7/8] igc: add preemptible
 queue support in mqprio
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

igc already supports enabling MAC Merge for FPE. This patch adds
support for preemptible queues in mqprio.

Tested preemption with mqprio by:
1. Enable FPE:
   ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled on
2. Enable preemptible queue in mqprio:
   mqprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
   queues 1@0 1@1 1@2 1@3 \
   fp P P P E

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 ++-------
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 9 +++++++++
 drivers/net/ethernet/intel/igc/igc_tsn.h  | 1 +
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1da84b00d090..4d748eca0c6c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6755,6 +6755,7 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 
 	if (!mqprio->qopt.num_tc) {
 		adapter->strict_priority_enable = false;
+		igc_fpe_clear_preempt_queue(adapter);
 		netdev_reset_tc(adapter->netdev);
 		goto apply;
 	}
@@ -6782,13 +6783,6 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 		return -EOPNOTSUPP;
 	}
 
-	/* Preemption is not supported yet. */
-	if (mqprio->preemptible_tcs) {
-		NL_SET_ERR_MSG_MOD(mqprio->extack,
-				   "Preemption is not supported yet");
-		return -EOPNOTSUPP;
-	}
-
 	igc_save_mqprio_params(adapter, mqprio->qopt.num_tc,
 			       mqprio->qopt.offset);
 
@@ -6808,6 +6802,7 @@ static int igc_tsn_enable_mqprio(struct igc_adapter *adapter,
 		adapter->queue_per_tc[i] = i;
 
 	mqprio->qopt.hw = TC_MQPRIO_HW_OFFLOAD_TCS;
+	igc_fpe_save_preempt_queue(adapter, mqprio);
 
 apply:
 	return igc_tsn_offload_apply(adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index 811856d66571..b23b9ca451a7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -160,6 +160,15 @@ void igc_fpe_init(struct igc_adapter *adapter)
 	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev, &igc_mmsv_ops);
 }
 
+void igc_fpe_clear_preempt_queue(struct igc_adapter *adapter)
+{
+	for (int i = 0; i < adapter->num_tx_queues; i++) {
+		struct igc_ring *tx_ring = adapter->tx_ring[i];
+
+		tx_ring->preemptible = false;
+	}
+}
+
 static u32 igc_fpe_map_preempt_tc_to_queue(const struct igc_adapter *adapter,
 					   unsigned long preemptible_tcs)
 {
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
index f2e8bfef4871..a95b893459d7 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.h
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
@@ -17,6 +17,7 @@ enum igc_txd_popts_type {
 DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
 
 void igc_fpe_init(struct igc_adapter *adapter);
+void igc_fpe_clear_preempt_queue(struct igc_adapter *adapter);
 void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
 				const struct tc_mqprio_qopt_offload *mqprio);
 u32 igc_fpe_get_supported_frag_size(u32 frag_size);
-- 
2.34.1

