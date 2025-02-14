Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C720A359BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99334416D5;
	Fri, 14 Feb 2025 09:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H6N4WwE1N_Oh; Fri, 14 Feb 2025 09:09:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B5A416F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524146;
	bh=lzAJD1JVNwEICa8i6M5lAomNg0Ml0cp2+j0gDVb0zTI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qCQEGkf18NHTUadRcOVjEM5BmvD1IGJmZijEFLXKXHmU8aemErad+VDeZi3GalZMA
	 fDegrZSlXO6qFYrFzxiEQcg5GGAilztZzxrkeuhJg6eWfD2DUWmdYoTi2UJOjXri3s
	 rud/w5IdLwhpCKc9Ahwzz9PN5MhyvubUE8zI/rsOTPLAzBMV2puKAQxfo1gb7Ii1LI
	 I5knw0aXjKsXY/2zgfE2teZTyCDtr5njNDMR3e8Qch4PWu98o8lmCXFcPpfli5gc/b
	 VThGTINB0naF+BDtC1jhPcJlQyHUFeP8Q5uoWUdtjpym9ZEFQyEHkssA/IhXoUisj/
	 AEbC3YDjEeToQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83B5A416F9;
	Fri, 14 Feb 2025 09:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 11B9FC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E98CD84925
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 73DXni2gX_Lb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:09:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A92F78491F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A92F78491F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A92F78491F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:03 +0000 (UTC)
X-CSE-ConnectionGUID: Sl54kPgDT02cZXxa/JnRgg==
X-CSE-MsgGUID: +jx07tvhTmu2JwpEphoLVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="65617724"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="65617724"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:09:03 -0800
X-CSE-ConnectionGUID: +2qgHWqaTniGqYZtxGcmag==
X-CSE-MsgGUID: c+hoKiSGQSyUO0EUKKB9ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113145478"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa009.jf.intel.com with ESMTP; 14 Feb 2025 01:08:59 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 33FD137B89;
 Fri, 14 Feb 2025 09:08:58 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Date: Fri, 14 Feb 2025 09:50:37 +0100
Message-ID: <20250214085215.2846063-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250214085215.2846063-1-larysa.zaremba@intel.com>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524144; x=1771060144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1hldPCJsU8qpdSEBPpFTNeUkviNw4gKBkBtSfXT2T5g=;
 b=ElZ+GvpSuMnFTys/hgqvpe5XhqTLgrpyAHAIVXHXXguTw+IU5AGE4yVK
 sgmzYdt+1YKtw022QOKVP7bFP3oqULjCUGSDn5Ay+K2FxjXa+yiM1+SjY
 YM/xdPzr7TJ5Sfq3AGYTXU/K38zyA9NenF1Yp4N7ErEmTVJ4ZtHBSdzeJ
 dlF601UdnEI7j9ceLPPqzuXVe6cY37LxFt8HLevHiZp6Xcudw3e4f9yi/
 EvD9Wl/OPvIa4eeBYuW+975uqCKyiOg5CBgT7daQjYZxM53l0HO5aoJFX
 SBEHemeA8fZNb1BCAZmJ7aLi3FWqPpxtjK8MOCUj5g7+yI+a13H3cO38r
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ElZ+GvpS
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/6] ice: receive LLDP on
 trusted VFs
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

From: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>

When a trusted VF tries to configure an LLDP multicast address, configure a
rule that would mirror the traffic to this VF, untrusted VFs are not
allowed to receive LLDP at all, so the request to add LLDP MAC address will
always fail for them.

Add a forwarding LLDP filter to a trusted VF when it tries to add an LLDP
multicast MAC address. The MAC address has to be added after enabling
trust (through restarting the LLDP service).

Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 48 ++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_lib.h      |  3 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 ++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 26 +++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  8 +++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 53 +++++++++++++++++--
 8 files changed, 134 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index a7c510832824..67988c7ab08e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -846,7 +846,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 			goto dcb_init_err;
 		}
 
-		ice_cfg_sw_lldp(pf_vsi, false, true);
+		ice_cfg_sw_rx_lldp(pf, true);
 
 		pf->dcbx_cap = ice_dcb_get_mode(port_info, true);
 		return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b0805704834d..ca29684ead21 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1818,7 +1818,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			/* Remove rule to direct LLDP packets to default VSI.
 			 * The FW LLDP engine will now be consuming them.
 			 */
-			ice_cfg_sw_lldp(vsi, false, false);
+			ice_cfg_sw_rx_lldp(vsi->back, false);
 
 			/* AQ command to start FW LLDP agent will return an
 			 * error if the agent is already started
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index edab19a44707..f55d85f10a06 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2065,12 +2065,15 @@ static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
 }
 
 /**
- * ice_cfg_sw_lldp - Config switch rules for LLDP packet handling
+ * ice_vsi_cfg_sw_lldp - Config switch rules for LLDP packet handling
  * @vsi: the VSI being configured
  * @tx: bool to determine Tx or Rx rule
  * @create: bool to determine create or remove Rule
+ *
+ * Adding an ethtype Tx rule to the uplink VSI results in it being applied
+ * to the whole port, so LLDP transmission for VFs will be blocked too.
  */
-void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
+void ice_vsi_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 {
 	int (*eth_fltr)(struct ice_vsi *v, u16 type, u16 flag,
 			enum ice_sw_fwd_act_type act);
@@ -2109,6 +2112,37 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create)
 			 vsi->vsi_num, status);
 }
 
+/**
+ * ice_cfg_sw_rx_lldp - Enable/disable software handling of LLDP
+ * @pf: the PF being configured
+ * @enable: enable or disable
+ *
+ * Configure switch rules to enable/disable LLDP handling by software
+ * across PF.
+ */
+void ice_cfg_sw_rx_lldp(struct ice_pf *pf, bool enable)
+{
+	struct ice_vsi *vsi;
+	struct ice_vf *vf;
+	unsigned int bkt;
+
+	vsi = ice_get_main_vsi(pf);
+	ice_vsi_cfg_sw_lldp(vsi, false, enable);
+
+	if (!test_bit(ICE_FLAG_SRIOV_ENA, pf->flags))
+		return;
+
+	ice_for_each_vf(pf, bkt, vf) {
+		vsi = ice_get_vf_vsi(vf);
+
+		if (WARN_ON(!vsi))
+			continue;
+
+		if (ice_vf_is_lldp_ena(vf))
+			ice_vsi_cfg_sw_lldp(vsi, false, enable);
+	}
+}
+
 /**
  * ice_set_agg_vsi - sets up scheduler aggregator node and move VSI into it
  * @vsi: pointer to the VSI
@@ -2537,7 +2571,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 	if (!ice_is_safe_mode(pf) && vsi->type == ICE_VSI_PF) {
 		ice_fltr_add_eth(vsi, ETH_P_PAUSE, ICE_FLTR_TX,
 				 ICE_DROP_PACKET);
-		ice_cfg_sw_lldp(vsi, true, true);
+		ice_vsi_cfg_sw_lldp(vsi, true, true);
 	}
 
 	if (!vsi->agg_node)
@@ -2834,9 +2868,11 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	/* The Rx rule will only exist to remove if the LLDP FW
 	 * engine is currently stopped
 	 */
-	if (!ice_is_safe_mode(pf) && vsi->type == ICE_VSI_PF &&
-	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
-		ice_cfg_sw_lldp(vsi, false, false);
+	if (!ice_is_safe_mode(pf) &&
+	    !test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags) &&
+	    (vsi->type == ICE_VSI_PF || (vsi->type == ICE_VSI_VF &&
+	     ice_vf_is_lldp_ena(vsi->vf))))
+		ice_vsi_cfg_sw_lldp(vsi, false, false);
 
 	ice_vsi_decfg(vsi);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index b4c9cb28a016..654516c5fc3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -29,7 +29,8 @@ ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
 
-void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
+void ice_vsi_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
+void ice_cfg_sw_rx_lldp(struct ice_pf *pf, bool enable);
 
 int ice_set_link(struct ice_vsi *vsi, bool ena);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 33eac29b6a50..3069045ed222 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -62,6 +62,7 @@ static void ice_free_vf_res(struct ice_vf *vf)
 	if (vf->lan_vsi_idx != ICE_NO_VSI) {
 		ice_vf_vsi_release(vf);
 		vf->num_mac = 0;
+		vf->num_mac_lldp = 0;
 	}
 
 	last_vector_idx = vf->first_vector_idx + vf->num_msix - 1;
@@ -1405,6 +1406,9 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 
 	mutex_lock(&vf->cfg_lock);
 
+	while (!trusted && vf->num_mac_lldp)
+		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf), false);
+
 	vf->trusted = trusted;
 	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
 	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c7c0c2f50c26..589e9d524044 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -226,6 +226,7 @@ static void ice_vf_clear_counters(struct ice_vf *vf)
 		vsi->num_vlan = 0;
 
 	vf->num_mac = 0;
+	vf->num_mac_lldp = 0;
 	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
 	memset(&vf->mdd_rx_events, 0, sizeof(vf->mdd_rx_events));
 }
@@ -1393,3 +1394,28 @@ struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi)
 	rcu_read_unlock();
 	return ctrl_vsi;
 }
+
+/**
+ * ice_vf_update_mac_lldp_num - update the VF's number of LLDP addresses
+ * @vf: a VF to add the address to
+ * @vsi: the corresponding VSI
+ * @incr: is the rule added or removed
+ */
+void ice_vf_update_mac_lldp_num(struct ice_vf *vf, struct ice_vsi *vsi,
+				bool incr)
+{
+	bool lldp_by_fw = test_bit(ICE_FLAG_FW_LLDP_AGENT, vsi->back->flags);
+	bool was_ena = ice_vf_is_lldp_ena(vf) && !lldp_by_fw;
+	bool is_ena;
+
+	if (WARN_ON(!vsi)) {
+		vf->num_mac_lldp = 0;
+		return;
+	}
+
+	vf->num_mac_lldp += incr ? 1 : -1;
+	is_ena = ice_vf_is_lldp_ena(vf) && !lldp_by_fw;
+
+	if (was_ena != is_ena)
+		ice_vsi_cfg_sw_lldp(vsi, false, is_ena);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 799b2c1f1184..f4c9ca1f51ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -134,6 +134,7 @@ struct ice_vf {
 	unsigned long vf_caps;		/* VF's adv. capabilities */
 	u8 num_req_qs;			/* num of queue pairs requested by VF */
 	u16 num_mac;
+	u16 num_mac_lldp;
 	u16 num_vf_qs;			/* num of queue configured per VF */
 	u8 vlan_strip_ena;		/* Outer and Inner VLAN strip enable */
 #define ICE_INNER_VLAN_STRIP_ENA	BIT(0)
@@ -180,6 +181,11 @@ static inline u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
 	return vf->port_vlan_info.tpid;
 }
 
+static inline bool ice_vf_is_lldp_ena(struct ice_vf *vf)
+{
+	return vf->num_mac_lldp && vf->trusted;
+}
+
 /* VF Hash Table access functions
  *
  * These functions provide abstraction for interacting with the VF hash table.
@@ -245,6 +251,8 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int ice_reset_vf(struct ice_vf *vf, u32 flags);
 void ice_reset_all_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_ctrl_vsi(struct ice_pf *pf, struct ice_vsi *vsi);
+void ice_vf_update_mac_lldp_num(struct ice_vf *vf, struct ice_vsi *vsi,
+				bool incr);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index b6285433307c..30e217073745 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2242,6 +2242,51 @@ ice_vfhw_mac_add(struct ice_vf *vf, struct virtchnl_ether_addr *vc_ether_addr)
 	}
 }
 
+/**
+ * ice_is_mc_lldp_eth_addr - check if the given MAC is a multicast LLDP address
+ * @mac: address to check
+ *
+ * Return: true if the address is one of the three possible LLDP multicast
+ *	   addresses, false otherwise.
+ */
+static bool ice_is_mc_lldp_eth_addr(const u8 *mac)
+{
+	const u8 lldp_mac_base[] = {0x01, 0x80, 0xc2, 0x00, 0x00};
+
+	if (memcmp(mac, lldp_mac_base, sizeof(lldp_mac_base)))
+		return false;
+
+	return (mac[5] == 0x0e || mac[5] == 0x03 || mac[5] == 0x00);
+}
+
+/**
+ * ice_vc_can_add_mac - check if the VF is allowed to add a given MAC
+ * @vf: a VF to add the address to
+ * @mac: address to check
+ *
+ * Return: true if the VF is allowed to add such MAC address, false otherwise.
+ */
+static bool ice_vc_can_add_mac(const struct ice_vf *vf, const u8 *mac)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+
+	if (is_unicast_ether_addr(mac) &&
+	    !ice_can_vf_change_mac((struct ice_vf *)vf)) {
+		dev_err(dev,
+			"VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
+		return false;
+	}
+
+	if (!vf->trusted && ice_is_mc_lldp_eth_addr(mac)) {
+		dev_warn(dev,
+			 "An untrusted VF %u is attempting to configure an LLDP multicast address\n",
+			 vf->vf_id);
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * ice_vc_add_mac_addr - attempt to add the MAC address passed in
  * @vf: pointer to the VF info
@@ -2260,10 +2305,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	if (ether_addr_equal(mac_addr, vf->dev_lan_addr))
 		return 0;
 
-	if (is_unicast_ether_addr(mac_addr) && !ice_can_vf_change_mac(vf)) {
-		dev_err(dev, "VF attempting to override administratively set MAC address, bring down and up the VF interface to resume normal operation\n");
+	if (!ice_vc_can_add_mac(vf, mac_addr))
 		return -EPERM;
-	}
 
 	ret = ice_fltr_add_mac(vsi, mac_addr, ICE_FWD_TO_VSI);
 	if (ret == -EEXIST) {
@@ -2278,6 +2321,8 @@ ice_vc_add_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 		return ret;
 	} else {
 		vf->num_mac++;
+		if (ice_is_mc_lldp_eth_addr(mac_addr))
+			ice_vf_update_mac_lldp_num(vf, vsi, true);
 	}
 
 	ice_vfhw_mac_add(vf, vc_ether_addr);
@@ -2372,6 +2417,8 @@ ice_vc_del_mac_addr(struct ice_vf *vf, struct ice_vsi *vsi,
 	ice_vfhw_mac_del(vf, vc_ether_addr);
 
 	vf->num_mac--;
+	if (ice_is_mc_lldp_eth_addr(mac_addr))
+		ice_vf_update_mac_lldp_num(vf, vsi, false);
 
 	return 0;
 }
-- 
2.43.0

