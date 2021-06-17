Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DD93AC4D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jun 2021 09:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 530AD41581;
	Fri, 18 Jun 2021 07:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwmDpFxeYZhh; Fri, 18 Jun 2021 07:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFF8E414BD;
	Fri, 18 Jun 2021 07:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 370F51BF392
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 27C7B83AF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPIC9wNJGbJi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jun 2021 07:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41B5F83A3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jun 2021 07:18:34 +0000 (UTC)
IronPort-SDR: ECPyD3iavRXgDxemGXxVlTJpZReyQhF++aPbuOrioMmaqbgUk8XH5n9I+bpWXha2weOIcsJTIM
 6nkx3HsogE5w==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="193822142"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="193822142"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 00:18:34 -0700
IronPort-SDR: bKn553pckQoPRfesXuPK7enhCb+A2ax6KgaMoA7TzmTL4FhZuJ2JciRKacxPTOWL/PL9GuoFPo
 ZgdmrhMkAWFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="485588401"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2021 00:18:32 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Jun 2021 01:44:12 +0200
Message-Id: <20210617234413.104069-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
References: <20210617234413.104069-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 11/12] ice: switchdev slow path
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
Cc: Grzegorz Nitka <grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Nitka <grzegorz.nitka@intel.com>

Slow path means allowing packet to go from uplink to representor
and from representor to correct VF on Rx site and from VF to
representor and to uplink on Tx site.

To acomplish this driver, has to set correct Tx descriptor. When
packet is sent from representor to VF, destination should be
set to VF VSI. When packet is sent from uplink port destination
should be uplink to bypass switch infrastructure and send packet
outside.

On Rx site driver should check source VSI field from Rx descriptor
and based on that forward packed to correct netdev. To allow
this there is a target netdevs table in control plane VSI
struct.

Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 79 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 26 ++++++
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 43 ++++++++++
 drivers/net/ethernet/intel/ice/ice_repr.c     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  3 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  4 +-
 6 files changed, 155 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 89e96a0c3687..ec2aa789e214 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -256,6 +256,57 @@ void ice_eswitch_update_repr(struct ice_vsi *vsi)
 	}
 }
 
+/**
+ * ice_eswitch_port_start_xmit - callback for packets transmit
+ * @skb: send buffer
+ * @netdev: network interface device structure
+ *
+ * Returns NETDEV_TX_OK if sent, else an error code
+ */
+netdev_tx_t
+ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
+{
+	struct ice_netdev_priv *np;
+	struct ice_repr *repr;
+	struct ice_vsi *vsi;
+
+	np = netdev_priv(netdev);
+	vsi = np->vsi;
+
+	if (ice_is_reset_in_progress(vsi->back->state))
+		return NETDEV_TX_BUSY;
+
+	repr = ice_netdev_to_repr(netdev);
+	skb_dst_drop(skb);
+	dst_hold((struct dst_entry *)repr->dst);
+	skb_dst_set(skb, (struct dst_entry *)repr->dst);
+	skb->queue_mapping = repr->vf->vf_id;
+
+	return ice_start_xmit(skb, netdev);
+}
+
+/**
+ * ice_eswitch_set_target_vsi - set switchdev context in Tx context descriptor
+ * @skb: pointer to send buffer
+ * @off: pointer to offload struct
+ */
+void ice_eswitch_set_target_vsi(struct sk_buff *skb,
+				struct ice_tx_offload_params *off)
+{
+	struct metadata_dst *dst = skb_metadata_dst(skb);
+	u64 cd_cmd, dst_vsi;
+
+	if (!dst) {
+		cd_cmd = ICE_TX_CTX_DESC_SWTCH_UPLINK << ICE_TXD_CTX_QW1_CMD_S;
+		off->cd_qw1 |= (cd_cmd | ICE_TX_DESC_DTYPE_CTX);
+	} else {
+		cd_cmd = ICE_TX_CTX_DESC_SWTCH_VSI << ICE_TXD_CTX_QW1_CMD_S;
+		dst_vsi = ((u64)dst->u.port_info.port_id <<
+			   ICE_TXD_CTX_QW1_VSI_S) & ICE_TXD_CTX_QW1_VSI_M;
+		off->cd_qw1 = cd_cmd | dst_vsi | ICE_TX_DESC_DTYPE_CTX;
+	}
+}
+
 /**
  * ice_eswitch_release_env - clear switchdev HW filters
  * @pf: pointer to PF struct
@@ -448,6 +499,34 @@ ice_eswitch_mode_set(struct devlink *devlink, u16 mode,
 	return 0;
 }
 
+/**
+ * ice_eswitch_get_target_netdev - return port representor netdev
+ * @rx_ring: pointer to rx ring
+ * @rx_desc: pointer to rx descriptor
+ *
+ * When working in switchdev mode context (when control VSI is used), this
+ * function returns netdev of appropriate port representor. For non-switchdev
+ * context, regular netdev associated with rx ring is returned.
+ */
+struct net_device *
+ice_eswitch_get_target_netdev(struct ice_ring *rx_ring,
+			      union ice_32b_rx_flex_desc *rx_desc)
+{
+	struct ice_32b_rx_flex_desc_nic_2 *desc;
+	struct ice_vsi *vsi = rx_ring->vsi;
+	struct ice_vsi *control_vsi;
+	u16 target_vsi_id;
+
+	control_vsi = vsi->back->switchdev.control_vsi;
+	if (vsi != control_vsi)
+		return rx_ring->netdev;
+
+	desc = (struct ice_32b_rx_flex_desc_nic_2 *)rx_desc;
+	target_vsi_id = le16_to_cpu(desc->src_vsi);
+
+	return vsi->target_netdevs[target_vsi_id];
+}
+
 /**
  * ice_eswitch_mode_get - get current eswitch mode
  * @devlink: pointer to devlink structure
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index b4d8ec219a80..e17bdcf8049e 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -19,11 +19,24 @@ bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf);
 void ice_eswitch_update_repr(struct ice_vsi *vsi);
 
 void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf);
+
+struct net_device *
+ice_eswitch_get_target_netdev(struct ice_ring *rx_ring,
+			      union ice_32b_rx_flex_desc *rx_desc);
+
+void ice_eswitch_set_target_vsi(struct sk_buff *skb,
+				struct ice_tx_offload_params *off);
+netdev_tx_t
+ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev);
 #else /* CONFIG_ICE_SWITCHDEV */
 static inline void ice_eswitch_release(struct ice_pf *pf) { }
 
 static inline void ice_eswitch_stop_all_tx_queues(struct ice_pf *pf) { }
 
+static inline void
+ice_eswitch_set_target_vsi(struct sk_buff *skb,
+			   struct ice_tx_offload_params *off) { }
+
 static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
 
 static inline int ice_eswitch_configure(struct ice_pf *pf)
@@ -52,5 +65,18 @@ static inline bool ice_is_eswitch_mode_switchdev(struct ice_pf *pf)
 {
 	return false;
 }
+
+static inline struct net_device *
+ice_eswitch_get_target_netdev(struct ice_ring *rx_ring,
+			      union ice_32b_rx_flex_desc *rx_desc)
+{
+	return rx_ring->netdev;
+}
+
+static inline netdev_tx_t
+ice_eswitch_port_start_xmit(struct sk_buff *skb, struct net_device *netdev)
+{
+	return NETDEV_TX_BUSY;
+}
 #endif /* CONFIG_ICE_SWITCHDEV */
 #endif
diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 80736e0ec0dc..d981dc6f2323 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -301,6 +301,46 @@ struct ice_32b_rx_flex_desc_nic {
 	} flex_ts;
 };
 
+/* Rx Flex Descriptor NIC Profile
+ * RxDID Profile ID 6
+ * Flex-field 0: RSS hash lower 16-bits
+ * Flex-field 1: RSS hash upper 16-bits
+ * Flex-field 2: Flow ID lower 16-bits
+ * Flex-field 3: Source VSI
+ * Flex-field 4: reserved, VLAN ID taken from L2Tag
+ */
+struct ice_32b_rx_flex_desc_nic_2 {
+	/* Qword 0 */
+	u8 rxdid;
+	u8 mir_id_umb_cast;
+	__le16 ptype_flexi_flags0;
+	__le16 pkt_len;
+	__le16 hdr_len_sph_flex_flags1;
+
+	/* Qword 1 */
+	__le16 status_error0;
+	__le16 l2tag1;
+	__le32 rss_hash;
+
+	/* Qword 2 */
+	__le16 status_error1;
+	u8 flexi_flags2;
+	u8 ts_low;
+	__le16 l2tag2_1st;
+	__le16 l2tag2_2nd;
+
+	/* Qword 3 */
+	__le16 flow_id;
+	__le16 src_vsi;
+	union {
+		struct {
+			__le16 rsvd;
+			__le16 flow_id_ipv6;
+		} flex;
+		__le32 ts_high;
+	} flex_ts;
+};
+
 /* Receive Flex Descriptor profile IDs: There are a total
  * of 64 profiles where profile IDs 0/1 are for legacy; and
  * profiles 2-63 are flex profiles that can be programmed
@@ -529,6 +569,9 @@ struct ice_tx_ctx_desc {
 
 #define ICE_TXD_CTX_QW1_MSS_S	50
 
+#define ICE_TXD_CTX_QW1_VSI_S	50
+#define ICE_TXD_CTX_QW1_VSI_M	(0x3FFULL << ICE_TXD_CTX_QW1_VSI_S)
+
 enum ice_tx_ctx_desc_cmd_bits {
 	ICE_TX_CTX_DESC_TSO		= 0x01,
 	ICE_TX_CTX_DESC_TSYN		= 0x02,
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index afa43d658f01..76d8086278c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -114,6 +114,7 @@ static const struct net_device_ops ice_repr_netdev_ops = {
 	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
 	.ndo_open = ice_repr_open,
 	.ndo_stop = ice_repr_stop,
+	.ndo_start_xmit = ice_eswitch_port_start_xmit,
 	.ndo_get_devlink_port = ice_repr_get_devlink_port,
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index a63d5916ebb0..a5c13e0aa80f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -13,6 +13,7 @@
 #include "ice_trace.h"
 #include "ice_dcb_lib.h"
 #include "ice_xsk.h"
+#include "ice_eswitch.h"
 
 #define ICE_RX_HDR_SIZE		256
 
@@ -2249,6 +2250,8 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_ring *tx_ring)
 					ICE_TXD_CTX_QW1_CMD_S);
 
 	ice_tstamp(tx_ring, skb, first, &offload);
+	if (ice_is_switchdev_running(vsi->back))
+		ice_eswitch_set_target_vsi(skb, &offload);
 
 	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
 		struct ice_tx_ctx_desc *cdesc;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 171397dcf00a..e314a1aee0ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -2,6 +2,7 @@
 /* Copyright (c) 2019, Intel Corporation. */
 
 #include "ice_txrx_lib.h"
+#include "ice_eswitch.h"
 
 /**
  * ice_release_rx_desc - Store the new tail and head values
@@ -185,7 +186,8 @@ ice_process_skb_fields(struct ice_ring *rx_ring,
 	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
 
 	/* modifies the skb - consumes the enet header */
-	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
+	skb->protocol = eth_type_trans(skb, ice_eswitch_get_target_netdev
+				       (rx_ring, rx_desc));
 
 	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
