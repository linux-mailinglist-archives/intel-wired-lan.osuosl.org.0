Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0A68A267C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0C2141F45;
	Fri, 12 Apr 2024 06:26:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p49nhvRAhrkF; Fri, 12 Apr 2024 06:26:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A304C41ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712903180;
	bh=fpFmv9FPPYCq8jC71/FwJtJ/MSZgURW8DwNANjJ8eYc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KSr3365fBVpOv31QFTWnblWMHwFEeuZeZFOCoSohVsX6RSCP+k5uWS/Z2xmMsoJj4
	 z6Ct9YYkfkdaX8iW331m8XjEEguvPVucN+ZdbSRlFBKzidL1biIehjVf5VS3M3Cxec
	 aJBrv4PalDIpsZG1Wc+87hNaYXUQtbrAeuLeyuoaIP1eTTT0y/14mqkpqwpV+CTTKr
	 300vSdZeghhO8yVDVe3btrnCWO6jbNkm4ztbrHygcpmqVyHF1EgUgE0R8W7cSfr7+O
	 YnqDKN0J0ASd5ZkVoysI+q5D3FIWcJUhmzYHZo5cc7SAkQE2Rlxsm1huOXtPFGK1hr
	 IGDiIrSPvdSQQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A304C41ED8;
	Fri, 12 Apr 2024 06:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1011BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7830640446
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmC-nGHWs6xM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:26:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7EA7540217
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EA7540217
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7EA7540217
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:26:15 +0000 (UTC)
X-CSE-ConnectionGUID: UNZGoJCRRVq67RqJtqOmcg==
X-CSE-MsgGUID: QsPBsqwBTvKTXwZM0YThqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="18952935"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="18952935"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:26:15 -0700
X-CSE-ConnectionGUID: 7TUeHSBCSQ+se4CHOJr+QQ==
X-CSE-MsgGUID: pny2m09FS2KAlRiex5qC3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="21105114"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 11 Apr 2024 23:26:12 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Apr 2024 08:30:48 +0200
Message-ID: <20240412063053.339795-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712903175; x=1744439175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DmHCHej35FjKJFaofsoziev1DDoRSek/JObUPUMPKT8=;
 b=SvFAQncjee6mA5LqqAGyWjB9EUq3R+aSIL0/GN9TxLq+p1TXAwxnT6x9
 QBUIGu+F2NVMEsfjNczUfnRTqvjpFYUuGwtJghe/7IOILuj8SCJckGc/V
 ExGPS8LHqmbOjetcNJ+urjVwFFrSB8ntGOcJeGb4iBwozjPR3WMIUGFMF
 gGITr97khEDq+wJWxhsmQuzoVn+wgO3D7GFSxIFFc/PynH7Apoair+f5h
 vHxRb1jAiknpqj8/usS/E2jNBTrAthyN5KpvfdvVZMSvf6mafAJKxe5XS
 sQJOhKbltrHXmKT+sLFPksJuah1agWtvbm0CCcG0QPpqD8ScDkbXZJd2N
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SvFAQncj
Subject: [Intel-wired-lan] [iwl-next v3 2/7] ice: export ice ndo_ops
 functions
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 sridhar.samudrala@intel.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com,
 Piotr Raczynski <piotr.raczynski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Make some of the netdevice_ops functions visible from outside for
another VSI type created netdev.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      |  8 +++++
 drivers/net/ethernet/intel/ice/ice_lib.c  | 22 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c | 37 ++++-------------------
 4 files changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 67a3236ab1fc..5f7757a44b72 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -982,6 +982,14 @@ void ice_unload(struct ice_pf *pf);
 void ice_adv_lnk_speed_maps_init(void);
 int ice_init_dev(struct ice_pf *pf);
 void ice_deinit_dev(struct ice_pf *pf);
+int ice_change_mtu(struct net_device *netdev, int new_mtu);
+void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue);
+int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp);
+void ice_set_netdev_features(struct net_device *netdev);
+int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid);
+int ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid);
+void ice_get_stats64(struct net_device *netdev,
+		     struct rtnl_link_stats64 *stats);
 
 /**
  * ice_set_rdma_cap - enable RDMA support
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 06909bf3b517..cff0bb6ba428 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2846,6 +2846,28 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 		ice_q_vector_set_napi_queues(vsi->q_vectors[i]);
 }
 
+/**
+ * ice_napi_add - register NAPI handler for the VSI
+ * @vsi: VSI for which NAPI handler is to be registered
+ *
+ * This function is only called in the driver's load path. Registering the NAPI
+ * handler is done in ice_vsi_alloc_q_vector() for all other cases (i.e. resume,
+ * reset/rebuild, etc.)
+ */
+void ice_napi_add(struct ice_vsi *vsi)
+{
+	int v_idx;
+
+	if (!vsi->netdev)
+		return;
+
+	ice_for_each_q_vector(vsi, v_idx) {
+		netif_napi_add(vsi->netdev, &vsi->q_vectors[v_idx]->napi,
+			       ice_napi_poll);
+		__ice_q_vector_set_napi_queues(vsi->q_vectors[v_idx], false);
+	}
+}
+
 /**
  * ice_vsi_release - Delete a VSI and free its resources
  * @vsi: the VSI being removed
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 9cd23afe5f15..a57213062b7f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -90,6 +90,7 @@ void __ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector, bool locked);
 void ice_q_vector_set_napi_queues(struct ice_q_vector *q_vector);
 
 void ice_vsi_set_napi_queues(struct ice_vsi *vsi);
+void ice_napi_add(struct ice_vsi *vsi);
 
 int ice_vsi_release(struct ice_vsi *vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8a4d9029434f..058d2a8836b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3059,7 +3059,7 @@ static int ice_xdp_safe_mode(struct net_device __always_unused *dev,
  * @dev: netdevice
  * @xdp: XDP command
  */
-static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
+int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
 {
 	struct ice_netdev_priv *np = netdev_priv(dev);
 	struct ice_vsi *vsi = np->vsi;
@@ -3518,28 +3518,6 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	return 0;
 }
 
-/**
- * ice_napi_add - register NAPI handler for the VSI
- * @vsi: VSI for which NAPI handler is to be registered
- *
- * This function is only called in the driver's load path. Registering the NAPI
- * handler is done in ice_vsi_alloc_q_vector() for all other cases (i.e. resume,
- * reset/rebuild, etc.)
- */
-static void ice_napi_add(struct ice_vsi *vsi)
-{
-	int v_idx;
-
-	if (!vsi->netdev)
-		return;
-
-	ice_for_each_q_vector(vsi, v_idx) {
-		netif_napi_add(vsi->netdev, &vsi->q_vectors[v_idx]->napi,
-			       ice_napi_poll);
-		__ice_q_vector_set_napi_queues(vsi->q_vectors[v_idx], false);
-	}
-}
-
 /**
  * ice_set_ops - set netdev and ethtools ops for the given netdev
  * @vsi: the VSI associated with the new netdev
@@ -3573,7 +3551,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
  * ice_set_netdev_features - set features for the given netdev
  * @netdev: netdev instance
  */
-static void ice_set_netdev_features(struct net_device *netdev)
+void ice_set_netdev_features(struct net_device *netdev)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	bool is_dvm_ena = ice_is_dvm_ena(&pf->hw);
@@ -3755,8 +3733,7 @@ ice_lb_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi)
  *
  * net_device_ops implementation for adding VLAN IDs
  */
-static int
-ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
+int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi_vlan_ops *vlan_ops;
@@ -3818,8 +3795,7 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
  *
  * net_device_ops implementation for removing VLAN IDs
  */
-static int
-ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
+int ice_vlan_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi_vlan_ops *vlan_ops;
@@ -7052,7 +7028,6 @@ void ice_update_pf_stats(struct ice_pf *pf)
  * @netdev: network interface device structure
  * @stats: main device statistics structure
  */
-static
 void ice_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
@@ -7725,7 +7700,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
  *
  * Returns 0 on success, negative on failure
  */
-static int ice_change_mtu(struct net_device *netdev, int new_mtu)
+int ice_change_mtu(struct net_device *netdev, int new_mtu)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
@@ -8149,7 +8124,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
  * @netdev: network interface device structure
  * @txqueue: Tx queue
  */
-static void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
+void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_tx_ring *tx_ring = NULL;
-- 
2.42.0

