Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512D386E09E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 12:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 888CE4192E;
	Fri,  1 Mar 2024 11:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZKfiddTxcRS; Fri,  1 Mar 2024 11:49:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAED340471
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709293799;
	bh=JTRMmfSxEXk57fULwtmjgwVp9XVXhLFTYvK/CmYmhiE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m5c30xcppIUTKVrDjfw5iWXF4Ot8C04kZf4I2eDMA6xXXD/LI+m6r3kvhY4VXaQg2
	 AOTxd0yNPjILiIYc/3JLBc6t3hvmW5sS3Z2l8469vHyW3hxdj2ydH2aiBNjasyV7Io
	 nZUhkSF0Po9pBfrHd7ttbgJuKxfp2yiHXSul8TXJ4/053wt+07nDMaaEN93Iz9IhTp
	 IOnsqnN/AZolTJuCIEDgNCKwtJmgJKctYduqkqHBG0IW1ANwRqjnHVLleGq2HhyZ+R
	 3xS75wUi+XwNnIwrZUIODUVmpPKyZTOSp+vj+RY7eBFplQlTEC2aGgSnv1eZ1flMyL
	 x+9WTyk0+vapA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAED340471;
	Fri,  1 Mar 2024 11:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2938E1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E1624192E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gN6kE-QXwD7c for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 11:49:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9084140471
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9084140471
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9084140471
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 11:49:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="4000038"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4000038"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 03:49:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="39195034"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 01 Mar 2024 03:49:52 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Mar 2024 12:54:08 +0100
Message-ID: <20240301115414.502097-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709293794; x=1740829794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3mKbWe5Ja4zuaLAeR5o+tou2lig1vky9SwusxY6/oQ=;
 b=mlCIhrjyyqpeqjLVvgeyUQeyeG841/PixTA5b6WPhj/Ibv8FJQVtiffR
 dWPGFhFu1DZqw11Nbshk657xWCvXPZDqCzJrSw+KYSYb648g9K7/gUgGd
 NvYIPrOBzyh30mFByWfjyga2PUeaBm9Es/2jEeXKF+Lcr9NIO6EJb/LAP
 4GmfVURCX6H3LkEP0N/rh3wo+HogYqq2XC0mdDnLmH5hYoH04DFL+aP+E
 vnC5MtT9Pj0RTD9w/4STL/YG+vvFidgAVi5CIv46mdqcARmZoYzOGY4+I
 PWnxtiRnH5Okxmc4Qq40O5Zu745/benVzfpJyy6kRGt0i1Vy5eWocNSUZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mlCIhrjy
Subject: [Intel-wired-lan] [iwl-next v3 2/8] ice: do Tx through PF netdev in
 slow-path
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, przemyslaw.kitszel@intel.com,
 sridhar.samudrala@intel.com, horms@kernel.org, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tx can be done using PF netdev.

Checks before Tx are unnecessary. Checking if switchdev mode is set
seems too defensive (there is no PR netdev in legacy mode). If
corresponding VF is disabled or during reset, PR netdev also should be
down.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 26 +++++---------------
 drivers/net/ethernet/intel/ice/ice_repr.c    | 12 ---------
 drivers/net/ethernet/intel/ice/ice_repr.h    |  2 --
 3 files changed, 6 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 2e999f801c0a..8ad271534d80 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -236,7 +236,7 @@ ice_eswitch_release_repr(struct ice_pf *pf, struct ice_repr *repr)
  */
 static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 {
-	struct ice_vsi *ctrl_vsi = pf->eswitch.control_vsi;
+	struct ice_vsi *uplink_vsi = pf->eswitch.uplink_vsi;
 	struct ice_vsi *vsi = repr->src_vsi;
 	struct metadata_dst *dst;
 
@@ -255,12 +255,11 @@ static int ice_eswitch_setup_repr(struct ice_pf *pf, struct ice_repr *repr)
 	netif_napi_add(repr->netdev, &repr->q_vector->napi,
 		       ice_napi_poll);
 
-	netif_keep_dst(repr->netdev);
+	netif_keep_dst(uplink_vsi->netdev);
 
 	dst = repr->dst;
 	dst->u.port_info.port_id = vsi->vsi_num;
-	dst->u.port_info.lower_dev = repr->netdev;
-	ice_repr_set_traffic_vsi(repr, ctrl_vsi);
+	dst->u.port_info.lower_dev = uplink_vsi->netdev;
 
 	return 0;
 
@@ -318,27 +317,14 @@ void ice_eswitch_update_repr(unsigned long repr_id, struct ice_vsi *vsi)
 netdev_tx_t
 ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
 {
-	struct ice_netdev_priv *np;
-	struct ice_repr *repr;
-	struct ice_vsi *vsi;
-
-	np = netdev_priv(netdev);
-	vsi = np->vsi;
-
-	if (!vsi || !ice_is_switchdev_running(vsi->back))
-		return NETDEV_TX_BUSY;
-
-	if (ice_is_reset_in_progress(vsi->back->state) ||
-	    test_bit(ICE_VF_DIS, vsi->back->state))
-		return NETDEV_TX_BUSY;
+	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
-	repr = ice_netdev_to_repr(netdev);
 	skb_dst_drop(skb);
 	dst_hold((struct dst_entry *)repr->dst);
 	skb_dst_set(skb, (struct dst_entry *)repr->dst);
-	skb->queue_mapping = repr->q_id;
+	skb->dev = repr->dst->u.port_info.lower_dev;
 
-	return ice_start_xmit(skb, netdev);
+	return dev_queue_xmit(skb);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 5f30fb131f74..6191bee6c536 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -439,15 +439,3 @@ void ice_repr_stop_tx_queues(struct ice_repr *repr)
 	netif_carrier_off(repr->netdev);
 	netif_tx_stop_all_queues(repr->netdev);
 }
-
-/**
- * ice_repr_set_traffic_vsi - set traffic VSI for port representor
- * @repr: repr on with VSI will be set
- * @vsi: pointer to VSI that will be used by port representor to pass traffic
- */
-void ice_repr_set_traffic_vsi(struct ice_repr *repr, struct ice_vsi *vsi)
-{
-	struct ice_netdev_priv *np = netdev_priv(repr->netdev);
-
-	np->vsi = vsi;
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index f9aede315716..b107e058d538 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -28,8 +28,6 @@ void ice_repr_rem_vf(struct ice_repr *repr);
 void ice_repr_start_tx_queues(struct ice_repr *repr);
 void ice_repr_stop_tx_queues(struct ice_repr *repr);
 
-void ice_repr_set_traffic_vsi(struct ice_repr *repr, struct ice_vsi *vsi);
-
 struct ice_repr *ice_netdev_to_repr(struct net_device *netdev);
 bool ice_is_port_repr_netdev(const struct net_device *netdev);
 
-- 
2.42.0

