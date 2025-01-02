Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DB69FFF36
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 20:04:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7738380E16;
	Thu,  2 Jan 2025 19:04:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MYU4vGeygc8M; Thu,  2 Jan 2025 19:04:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D12E80E0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735844661;
	bh=R6Wak4GZSzjwNIo9WIqn2nbICIeAkLb0L0QzfBNlD68=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i2k1tPDZg940JXHT7olC9C37r0vDlS0vPG+5pe2fDrmir/77QX1Kug9XQF9+wDTgq
	 7ftJxDruEt34PIp2TSNvMHkj/Pri8xRlhQRYF6Y7M9gc7f5F8mczGLSvoKQecS7FPd
	 9oyiKBvxmX5U4iLtWYBTwMclMXmbVkJf+Ejm1F3vLS4kPPB0dPmce5xRQz4Y5d1LDt
	 L+CczL1zmwD0J7qB/LRHjmRt5ZOMHhOlQPm+6hlUXICYbTUTHyBFLS2i7LfrASHLIY
	 Rw6D/tfpaxB1EbYHqOU7x+ntaF2goZbf65LQGR3+ZzEZRoVJYljMiSwoejgnHBmXXc
	 EKdn+GtyYRx4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D12E80E0A;
	Thu,  2 Jan 2025 19:04:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DC13F24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 19:04:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DE86408E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 19:04:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U6ptjRXULnp3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 19:04:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55AF6408D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55AF6408D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55AF6408D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 19:04:16 +0000 (UTC)
X-CSE-ConnectionGUID: iPyy0qguQs+sWRuBx04Svw==
X-CSE-MsgGUID: hxeqmgOqRSCvPzyM53OnAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="40019450"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="40019450"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 11:04:16 -0800
X-CSE-ConnectionGUID: Y3NyWuBmRJGvJxsIpf//hA==
X-CSE-MsgGUID: ThdaegfGTGWQjhR7osT41A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="106449225"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 02 Jan 2025 11:04:14 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2BCD32FC57;
 Thu,  2 Jan 2025 19:04:13 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Thu,  2 Jan 2025 20:07:52 +0100
Message-ID: <20250102190751.7691-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735844656; x=1767380656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dQtlI0STkRC2aJGltzLuuXjG6WT1FUsuLiTVb/iXk8s=;
 b=SHsBWYezCd5I7+ba/7rDMe8v+T3GHVviqZ87NpDted92vUP6OWAYgX+q
 dFBSBlL/n1YnNvkuT2t42JmqP1syN+h9U0MOm68YdXPcXDfrY/g8uO6X4
 cntlmKUHpZN0zC8HJtPXdT/AqR6uqQHzH8kyfjo7/HErT0nVygZ0P63e+
 MIPdnTVEgetHvC8yjK/Id1gW33phRtcrmEVDaOmjhT5NY3r6yohDgu0Ge
 d+SyGmbc/Wsg43T1qFXR0r+8jOIvNemO7yj3zKuD4mWq1xhYUuP8GuI9D
 N7Fb8xBnVnmp1H9Yt6myMNBXv59wtuNE/hQkWwMXtMXx/SUBn3h5uBfzs
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SHsBWYez
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix switchdev slow-path in
 LAG
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

Ever since removing switchdev control VSI and using PF for port
representor Tx/Rx, switchdev slow-path has been working improperly after
failover in SR-IOV LAG. LAG assumes that the first uplink to be added to
the aggregate will own VFs and have switchdev configured. After
failing-over to the other uplink, representors are still configured to
Tx through the uplink they are set up on, which fails because that
uplink is now down.

On failover, update all PRs on primary uplink to use the currently
active uplink for Tx. Call netif_keep_dst(), as the secondary uplink
might not be in switchdev mode. Also make sure to call
ice_eswitch_set_target_vsi() if uplink is in LAG.

On the Rx path, representors are already working properly, because
default Tx from VFs is set to PF owning the eswitch. After failover the
same PF is receiving traffic from VFs, even though link is down.

Fixes: defd52455aee ("ice: do Tx through PF netdev in slow-path")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c  | 27 +++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +++-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 1ccb572ce285..22371011c249 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1000,6 +1000,28 @@ static void ice_lag_link(struct ice_lag *lag)
 	netdev_info(lag->netdev, "Shared SR-IOV resources in bond are active\n");
 }
 
+/**
+ * ice_lag_config_eswitch - configure eswitch to work with LAG
+ * @lag: lag info struct
+ * @netdev: active network interface device struct
+ *
+ * Updates all port representors in eswitch to use @netdev for Tx.
+ *
+ * Configures the netdev to keep dst metadata (also used in representor Tx).
+ * This is required for an uplink without switchdev mode configured.
+ */
+static void ice_lag_config_eswitch(struct ice_lag *lag,
+				   struct net_device *netdev)
+{
+	struct ice_repr *repr;
+	unsigned long id;
+
+	xa_for_each(&lag->pf->eswitch.reprs, id, repr)
+		repr->dst->u.port_info.lower_dev = netdev;
+
+	netif_keep_dst(netdev);
+}
+
 /**
  * ice_lag_unlink - handle unlink event
  * @lag: LAG info struct
@@ -1021,6 +1043,9 @@ static void ice_lag_unlink(struct ice_lag *lag)
 			ice_lag_move_vf_nodes(lag, act_port, pri_port);
 		lag->primary = false;
 		lag->active_port = ICE_LAG_INVALID_PORT;
+
+		/* Config primary's eswitch back to normal operation. */
+		ice_lag_config_eswitch(lag, lag->netdev);
 	} else {
 		struct ice_lag *primary_lag;
 
@@ -1419,6 +1444,7 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 				ice_lag_move_vf_nodes(lag, prim_port,
 						      event_port);
 			lag->active_port = event_port;
+			ice_lag_config_eswitch(lag, event_netdev);
 			return;
 		}
 
@@ -1428,6 +1454,7 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
 		/* new active port */
 		ice_lag_move_vf_nodes(lag, lag->active_port, event_port);
 		lag->active_port = event_port;
+		ice_lag_config_eswitch(lag, event_netdev);
 	} else {
 		/* port not set as currently active (e.g. new active port
 		 * has already claimed the nodes and filters
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 5d2d7736fd5f..f1c06c227dc5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2368,7 +2368,9 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 					ICE_TXD_CTX_QW1_CMD_S);
 
 	ice_tstamp(tx_ring, skb, first, &offload);
-	if (ice_is_switchdev_running(vsi->back) && vsi->type != ICE_VSI_SF)
+	if ((ice_is_switchdev_running(vsi->back) ||
+	     ice_lag_is_switchdev_running(vsi->back)) &&
+	    vsi->type != ICE_VSI_SF)
 		ice_eswitch_set_target_vsi(skb, &offload);
 
 	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
-- 
2.45.0

