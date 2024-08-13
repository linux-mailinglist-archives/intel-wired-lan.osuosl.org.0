Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 742389505EB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 15:08:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3A7680EC5;
	Tue, 13 Aug 2024 13:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_t3bbf_qWCw; Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B47AD819B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723554500;
	bh=zKPqoer3i3YRxWHqa5CHrt3Kg9zwCnY0YdUMC2pOZwY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pr3hof7sB7spNWLOexsT0Rnfp66Z14shgChUfbRWy277GM1la8jVIEeM84mGmHgTA
	 37CXQ9WvAfl0UM4u/5GIl9zzevDrcaQ8niDngVsRtvH++MSSKLt7oLW8rg6tB1OIJP
	 cH61WyTScugfHNvW10mcFKvnKL2rcRJWGcpTLrCmc9UhbtzDfUi9xMNh3+mYoqrq4o
	 CBLfS8xoAO9jKbM73IJfUog5QlMOsI+BoOA+bOGRRvT6KRqmtGPhB18ayrgWp8dyum
	 DsonrMs6bUJfY1way2maZEDKqpIZCD8gybG1CNU5cCBoiaE6RbLiuVGXOcihiW9FL3
	 tkEb1P/bM29jw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B47AD819B4;
	Tue, 13 Aug 2024 13:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCE291BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA08440A45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id si4MOnGvqols for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 13:08:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA33740A41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA33740A41
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA33740A41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 13:08:13 +0000 (UTC)
X-CSE-ConnectionGUID: X7uOPcJOTbSJJ4CcmcnXng==
X-CSE-MsgGUID: KH0mN0ZOSy6R8ghMFbMS8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="32290919"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32290919"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:08:12 -0700
X-CSE-ConnectionGUID: 3wwbezuISrqU9rrloObXtg==
X-CSE-MsgGUID: QwolB7pvTM6avxGkNhpWmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="59417130"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 13 Aug 2024 06:08:10 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4227B32C92;
 Tue, 13 Aug 2024 14:08:08 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Tue, 13 Aug 2024 08:55:03 -0400
Message-Id: <20240813125513.8212-5-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
References: <20240813125513.8212-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554494; x=1755090494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qkDHujwD6o367go7MkOoOUCyEgEE+VI1cq/a5kwS6A0=;
 b=SzDUHhRLKaALNVhN7iYm5JxoQtjcc5AlbPk5W4kxpvkKS0+0h0BrN7Jr
 8OiUo1vRPWqkfblX9CxuyZg9egS+9tko2xIg60p5kia+KBhP1Kt4kE9SQ
 E+S5C73K29nN7Z/8SblBsQLxgwolq9sDQbcGTiTNU9jUIFt14IlSCowxK
 qDy+b99A/BFpDM0JBPYks9daNYL6lmtm7DlNkTY/m8aqOClHxJTNgu1I3
 ksfU/tfcIor+6FKKCSROQAz4dwM75STRu/rd5mgWG28CbQS8iXauN5tqZ
 dEbn/li/012DAsG16mmFpujAXf88lZYqlwovyHTyCWezN8b86tMcBVGIn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SzDUHhRL
Subject: [Intel-wired-lan] [PATCH iwl-next v9 04/14] iavf: add support for
 negotiating flexible RXDID format
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
driver the ability to determine what Rx descriptor formats are
available. This requires sending an additional message during
initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
operation requests the supported Rx descriptor IDs available from the
PF.

This is treated the same way that VLAN V2 capabilities are handled. Add
a new set of extended capability flags, used to process send and receipt
of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.

This ensures we finish negotiating for the supported descriptor formats
prior to beginning configuration of receive queues.

This change stores the supported format bitmap into the iavf_adapter
structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
by the PF, we need to make sure that the Rx queue configuration
specifies the format.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  20 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 ++++++++++++++++--
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  51 ++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  23 +---
 include/linux/avf/virtchnl.h                  |   5 -
 6 files changed, 194 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 48cd1d06761c..f1506b3d01ce 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -267,6 +267,7 @@ struct iavf_adapter {
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
+	u8 rxdid;
 	int num_active_queues;
 	int num_req_queues;
 
@@ -336,6 +337,14 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT_ULL(36)
 #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
 #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
+#define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(39)
+
+	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
+	 * order to negotiated extended capabilities.
+	 */
+#define IAVF_FLAG_AQ_EXTENDED_CAPS			\
+	(IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS |	\
+	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
 
 	/* flags for processing extended capability messages during
 	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
@@ -347,10 +356,14 @@ struct iavf_adapter {
 	u64 extended_caps;
 #define IAVF_EXTENDED_CAP_SEND_VLAN_V2			BIT_ULL(0)
 #define IAVF_EXTENDED_CAP_RECV_VLAN_V2			BIT_ULL(1)
+#define IAVF_EXTENDED_CAP_SEND_RXDID			BIT_ULL(2)
+#define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
 
 #define IAVF_EXTENDED_CAPS				\
 	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
-	 IAVF_EXTENDED_CAP_RECV_VLAN_V2)
+	 IAVF_EXTENDED_CAP_RECV_VLAN_V2 |		\
+	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
+	 IAVF_EXTENDED_CAP_RECV_RXDID)
 
 	/* Lock to prevent possible clobbering of
 	 * current_netdev_promisc_flags
@@ -408,12 +421,15 @@ struct iavf_adapter {
 			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 #define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
+#define IAVF_RXDID_ALLOWED(a) ((a)->vf_res->vf_cap_flags & \
+			       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
 #define PF_IS_V11(_a) (((_a)->pf_version.major == 1) && \
 		       ((_a)->pf_version.minor == 1))
 	struct virtchnl_vlan_caps vlan_v2_caps;
+	u64 supp_rxdids;
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
 	struct iavf_vsi vsi;
@@ -551,6 +567,8 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_config(struct iavf_adapter *adapter);
 int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
 int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
+int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
+int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e635a6af5ec2..b728fb1f76d0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -709,6 +709,38 @@ static void iavf_configure_tx(struct iavf_adapter *adapter)
 		adapter->tx_rings[i].tail = hw->hw_addr + IAVF_QTX_TAIL1(i);
 }
 
+/**
+ * iavf_select_rx_desc_format - Select Rx descriptor format
+ * @adapter: adapter private structure
+ *
+ * Select what Rx descriptor format based on availability and enabled
+ * features.
+ *
+ * Return: the desired RXDID to select for a given Rx queue, as defined by
+ *         enum virtchnl_rxdid_format.
+ */
+static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
+{
+	u64 rxdids = adapter->supp_rxdids;
+
+	/* If we did not negotiate VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, we must
+	 * stick with the default value of the legacy 32 byte format.
+	 */
+	if (!IAVF_RXDID_ALLOWED(adapter))
+		return VIRTCHNL_RXDID_1_32B_BASE;
+
+	/* Warn if the PF does not list support for the default legacy
+	 * descriptor format. This shouldn't happen, as this is the format
+	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
+	 * likely caused by a bug in the PF implementation failing to indicate
+	 * support for the format.
+	 */
+	if (!(rxdids & VIRTCHNL_RXDID_1_32B_BASE_M))
+		dev_warn(&adapter->pdev->dev, "PF does not list support for default Rx descriptor format\n");
+
+	return VIRTCHNL_RXDID_1_32B_BASE;
+}
+
 /**
  * iavf_configure_rx - Configure Receive Unit after Reset
  * @adapter: board private structure
@@ -719,8 +751,12 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 {
 	struct iavf_hw *hw = &adapter->hw;
 
-	for (u32 i = 0; i < adapter->num_active_queues; i++)
+	adapter->rxdid = iavf_select_rx_desc_format(adapter);
+
+	for (u32 i = 0; i < adapter->num_active_queues; i++) {
 		adapter->rx_rings[i].tail = hw->hw_addr + IAVF_QRX_TAIL1(i);
+		adapter->rx_rings[i].rxdid = adapter->rxdid;
+	}
 }
 
 /**
@@ -2045,6 +2081,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return iavf_send_vf_config_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS)
 		return iavf_send_vf_offload_vlan_v2_msg(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
+		return iavf_send_vf_supported_rxdids_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
 		iavf_disable_queues(adapter);
 		return 0;
@@ -2558,6 +2596,63 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
 	iavf_change_state(adapter, __IAVF_INIT_FAILED);
 }
 
+/**
+ * iavf_init_send_supported_rxdids - part of querying for supported RXDID
+ * formats
+ * @adapter: board private structure
+ *
+ * Function processes send of the request for supported RXDIDs to the PF.
+ * Must clear IAVF_EXTENDED_CAP_RECV_RXDID if the message is not sent, e.g.
+ * due to the PF not negotiating VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC.
+ */
+static void iavf_init_send_supported_rxdids(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	ret = iavf_send_vf_supported_rxdids_msg(adapter);
+	if (ret == -EOPNOTSUPP) {
+		/* PF does not support VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC. In this
+		 * case, we did not send the capability exchange message and
+		 * do not expect a response.
+		 */
+		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RXDID;
+	}
+
+	/* We sent the message, so move on to the next step */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_RXDID;
+}
+
+/**
+ * iavf_init_recv_supported_rxdids - part of querying for supported RXDID
+ * formats
+ * @adapter: board private structure
+ *
+ * Function processes receipt of the supported RXDIDs message from the PF.
+ **/
+static void iavf_init_recv_supported_rxdids(struct iavf_adapter *adapter)
+{
+	int ret;
+
+	memset(&adapter->supp_rxdids, 0, sizeof(adapter->supp_rxdids));
+
+	ret = iavf_get_vf_supported_rxdids(adapter);
+	if (ret)
+		goto err;
+
+	/* We've processed the PF response to the
+	 * VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message we sent previously.
+	 */
+	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_RXDID;
+	return;
+
+err:
+	/* We didn't receive a reply. Make sure we try sending again when
+	 * __IAVF_INIT_FAILED attempts to recover.
+	 */
+	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_RXDID;
+	iavf_change_state(adapter, __IAVF_INIT_FAILED);
+}
+
 /**
  * iavf_init_process_extended_caps - Part of driver startup
  * @adapter: board private structure
@@ -2582,6 +2677,15 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
 		return;
 	}
 
+	/* Process capability exchange for RXDID formats */
+	if (adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RXDID) {
+		iavf_init_send_supported_rxdids(adapter);
+		return;
+	} else if (adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_RXDID) {
+		iavf_init_recv_supported_rxdids(adapter);
+		return;
+	}
+
 	/* When we reach here, no further extended capabilities exchanges are
 	 * necessary, so we finally transition into __IAVF_INIT_CONFIG_ADAPTER
 	 */
@@ -3050,15 +3154,18 @@ static void iavf_reset_task(struct work_struct *work)
 	}
 
 	adapter->aq_required |= IAVF_FLAG_AQ_GET_CONFIG;
-	/* always set since VIRTCHNL_OP_GET_VF_RESOURCES has not been
-	 * sent/received yet, so VLAN_V2_ALLOWED() cannot is not reliable here,
-	 * however the VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS won't be sent until
-	 * VIRTCHNL_OP_GET_VF_RESOURCES and VIRTCHNL_VF_OFFLOAD_VLAN_V2 have
-	 * been successfully sent and negotiated
-	 */
-	adapter->aq_required |= IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS;
 	adapter->aq_required |= IAVF_FLAG_AQ_MAP_VECTORS;
 
+	/* Certain capabilities require an extended negotiation process using
+	 * extra messages that must be processed after getting the VF
+	 * configuration. The related checks such as VLAN_V2_ALLOWED() are not
+	 * reliable here, since the configuration has not yet been negotiated.
+	 *
+	 * Always set these flags, since them related VIRTCHNL messages won't
+	 * be sent until after VIRTCHNL_OP_GET_VF_RESOURCES.
+	 */
+	adapter->aq_required |= IAVF_FLAG_AQ_EXTENDED_CAPS;
+
 	spin_lock_bh(&adapter->mac_vlan_list_lock);
 
 	/* Delete filter for the current MAC address, it could have
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index d7b5587aeb8e..e8421994235b 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -262,6 +262,8 @@ struct iavf_ring {
 	u16 next_to_use;
 	u16 next_to_clean;
 
+	u16 rxdid;		/* Rx descriptor format */
+
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
 #define IAVF_TXR_FLAGS_ARM_WB			BIT(1)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 7e810b65380c..bbd0eb06acd3 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -144,6 +144,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
 	       VIRTCHNL_VF_OFFLOAD_TC_U32 |
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
+	       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC |
 	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
@@ -176,6 +177,19 @@ int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter)
 				NULL, 0);
 }
 
+int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter)
+{
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS;
+
+	if (!IAVF_RXDID_ALLOWED(adapter))
+		return -EOPNOTSUPP;
+
+	adapter->current_op = VIRTCHNL_OP_GET_SUPPORTED_RXDIDS;
+
+	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
+				NULL, 0);
+}
+
 /**
  * iavf_validate_num_queues
  * @adapter: adapter structure
@@ -262,6 +276,37 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
 	return err;
 }
 
+int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	struct iavf_arq_event_info event;
+	u32 len = sizeof(u64);
+	enum virtchnl_ops op;
+	enum iavf_status err;
+	u8 rxdids;
+
+	event.msg_buf = &rxdids;
+	event.buf_len = len;
+
+	while (1) {
+		/* When the AQ is empty, iavf_clean_arq_element will return
+		 * nonzero and this loop will terminate.
+		 */
+		err = iavf_clean_arq_element(hw, &event, NULL);
+		if (err != IAVF_SUCCESS)
+			return err;
+		op = le32_to_cpu(event.desc.cookie_high);
+		if (op == VIRTCHNL_OP_GET_SUPPORTED_RXDIDS)
+			break;
+	}
+
+	err = le32_to_cpu(event.desc.cookie_low);
+	if (!err)
+		adapter->supp_rxdids = rxdids;
+
+	return 0;
+}
+
 /**
  * iavf_configure_queues
  * @adapter: adapter structure
@@ -308,6 +353,8 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
 		vqpi->rxq.max_pkt_size = max_frame;
 		vqpi->rxq.databuffer_size = adapter->rx_rings[i].rx_buf_len;
+		if (IAVF_RXDID_ALLOWED(adapter))
+			vqpi->rxq.rxdid = adapter->rxdid;
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
@@ -2372,6 +2419,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			aq_required;
 		}
 		break;
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		memcpy(&adapter->supp_rxdids, msg,
+		       min_t(u16, msglen, sizeof(adapter->supp_rxdids)));
+		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 60f73f58e401..6d4b7686e2fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2709,12 +2709,12 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
 static int ice_vc_query_rxdid(struct ice_vf *vf)
 {
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_supported_rxdids *rxdid = NULL;
 	struct ice_hw *hw = &vf->pf->hw;
 	struct ice_pf *pf = vf->pf;
-	int len = 0;
-	int ret, i;
+	u32 len = sizeof(u64);
 	u32 regval;
+	u64 rxdid;
+	int ret, i;
 
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -2726,34 +2726,25 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	len = sizeof(struct virtchnl_supported_rxdids);
-	rxdid = kzalloc(len, GFP_KERNEL);
-	if (!rxdid) {
-		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
-		len = 0;
-		goto err;
-	}
-
 	/* RXDIDs supported by DDP package can be read from the register
 	 * to get the supported RXDID bitmap. But the legacy 32byte RXDID
 	 * is not listed in DDP package, add it in the bitmap manually.
 	 * Legacy 16byte descriptor is not supported.
 	 */
-	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
+	rxdid |= BIT(ICE_RXDID_LEGACY_1);
 
 	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
 		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
 		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
 			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-			rxdid->supported_rxdids |= BIT(i);
+			rxdid |= BIT(i);
 	}
 
-	pf->supported_rxdids = rxdid->supported_rxdids;
+	pf->supported_rxdids = rxdid;
 
 err:
 	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_SUPPORTED_RXDIDS,
-				    v_ret, (u8 *)rxdid, len);
-	kfree(rxdid);
+				    v_ret, (u8 *)&rxdid, len);
 	return ret;
 }
 
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 6eb486221122..9aa7b92beedf 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1087,11 +1087,6 @@ struct virtchnl_filter {
 
 VIRTCHNL_CHECK_STRUCT_LEN(272, virtchnl_filter);
 
-struct virtchnl_supported_rxdids {
-	/* see enum virtchnl_rx_desc_id_bitmasks */
-	u64 supported_rxdids;
-};
-
 /* VIRTCHNL_OP_EVENT
  * PF sends this message to inform the VF driver of events that may affect it.
  * No direct response is expected from the VF, though it may generate other
-- 
2.38.1

