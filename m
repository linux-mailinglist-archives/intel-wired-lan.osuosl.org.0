Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6C983C2C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 13:49:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24C9883300;
	Thu, 25 Jan 2024 12:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24C9883300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706186968;
	bh=JTRMmfSxEXk57fULwtmjgwVp9XVXhLFTYvK/CmYmhiE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=51Zpmyl9OycGQT+kd3pHaKmjRCoKxFkObFj/cmRzJGb8QKWpAzqUfOzTMNWShYRpX
	 33OxAkPDI8rzNR98mSUrSEyDnMkNTDmysa2cZDqMzeBnmx+ehH4cg0N/aVaci/yPBp
	 5sRsXFQPZXktMkopMCSgoWwL7khymTdVxR8bO8bnIzVtYFPoCbfNRkW1SA1Z3AGSMO
	 Pb9nU4AUKATe7qkle8FBJstXm9Bdw61mMylaZFpcH6/93PuwThNJ9T4mkW5zhktUWp
	 LfLp0Cvfy6eanCUKbQC1xZCqyKqbw6p3ACSOTTINRLyX5sDJbUChCrk9SWfP4fuRXP
	 Ck5a4ClCwc/JA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CiHj5SBflGZ; Thu, 25 Jan 2024 12:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2DA2819F6;
	Thu, 25 Jan 2024 12:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2DA2819F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D3A2C1BF387
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ABEB1400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABEB1400D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8tELmdDVM31 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 12:49:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B14AB400BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 12:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B14AB400BA
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="399313527"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="399313527"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 04:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905956653"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905956653"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jan 2024 04:49:12 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 13:53:08 +0100
Message-ID: <20240125125314.852914-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706186954; x=1737722954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y3mKbWe5Ja4zuaLAeR5o+tou2lig1vky9SwusxY6/oQ=;
 b=S3bdszVypI258IEJ6nwGRcJ1GHRveJm4jWWKTdfgNc9EC0yXuSKROg7Z
 Z56k96+OkuMhVJTCAPBWv1Zfiij4Y/kPNdGC+HugOEz5Yzfc0+efoNP2X
 Wy9DRYEi4w5fq8Ad3LD7AUVyVadvWGr4qY95thGfIqtBeqXAgZ5AdI1iJ
 tSTjgpp/kNP1HlhVmZNZDjS7ojvcGCyvkMCi9rae/24s2ZJ83FcSKwIju
 RRlf/75pjvmMz0VoFYsFX6J+JyY41dxVogbtU3Iv16B4Fj5SjJDM8hvFE
 fTe6aPzI8NxsupA1MUrep5h80ghaPuTikrxvPuVr4E6rT1Mq6quAboMx0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S3bdszVy
Subject: [Intel-wired-lan] [iwl-next v1 2/8] ice: do Tx through PF netdev in
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
 sridhar.samudrala@intel.com, netdev@vger.kernel.org,
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

