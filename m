Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F18970EA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 15:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DE3E41772;
	Wed,  3 Apr 2024 13:28:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h-anW_qKOhjZ; Wed,  3 Apr 2024 13:28:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C5BBD41782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712150908;
	bh=eT6sz2Vs3nxcN5bZNmqYFYBntLhwDZSkSTkOIGq+/Cw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TR0sA1QXukq+3AehRUzpmPCRy9565QS0fU3EAki5iyPrlpwSaCaWvX0/kvdc5b62V
	 Qck50yvepMNaX+yhUfBc35ENdi0aYB1IY2HYd5BDgKXMyuR3wsoa/naLF5iss79X4f
	 iEae/CM1OMDbVe1EJWPSmoFG+qnvctyhfjUnCLHCKPjrKBwZKwR9CEirBB3YXKq38P
	 unwg2F34aqIVkHqObMOpgACiF7OoM/JQekIlWUOzRB2NgCdbYyCjINLmqSSmwwiWuE
	 7FRdk0FVvIPFdqKiMk3slBfMpuuVt6O7EY4L9SSC3g+7vzpbtmneBuoURZZM6MQqT9
	 M0pC5YdtMaPpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5BBD41782;
	Wed,  3 Apr 2024 13:28:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D91AA1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D067082142
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EF5sHyTw04JL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 13:28:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9D05081E72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D05081E72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D05081E72
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 13:28:22 +0000 (UTC)
X-CSE-ConnectionGUID: mTo2/r2ASDixSQKgzVVBcw==
X-CSE-MsgGUID: PS1JcB5nRIKXYjNAxNTjgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7568746"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7568746"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:28:22 -0700
X-CSE-ConnectionGUID: BBJ1MIfoSFi9rrmICPZagw==
X-CSE-MsgGUID: Sll8fmDvSn+vUMms09Z1SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="41592063"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 03 Apr 2024 06:28:19 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 92DCF36A19;
 Wed,  3 Apr 2024 14:28:15 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Apr 2024 09:19:19 -0400
Message-Id: <20240403131927.87021-5-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
References: <20240403131927.87021-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150902; x=1743686902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f6KtxZGZKXkN5nhqybLW6sr2Tw9r7axeuDCkRQ2+xpk=;
 b=JuAjjmcYiCzaWCd3VDZPCpOwFaLuLBBH5Jr4qUD4qmyarw3yQIxTSQw+
 X22rAFQj3EWqDzKqtCtKQhCCQHcH0r9vsySdq+xKPgKNNqO9k1YcLmeLr
 fqOEf/1KJAr4aAlUAalp/y4NOsVvaEdwvZM+1BIqfGVsBL3hCvjRumCOr
 1LmcLV0mLo0I4nSUD80mvwJMqsHXQF3viIDO9koQ78dAAESakJk9ElsJ/
 6FNm/Y3bP42zSMUnsgTD5x7I4fKnldhcYgt5bsrV2Yb9My+KY1AfSIkLk
 D9h/hKcEdluUC3CrrigrXRI3c8T8lG29ceVI3uHv8iBkKLTLbbMEY5mDD
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JuAjjmcY
Subject: [Intel-wired-lan] [PATCH iwl-next v3 04/12] iavf: add support for
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
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

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  20 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 124 +++++++++++++++++-
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   2 +
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  59 +++++++++
 4 files changed, 197 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index db8188c7ac4b..db00c1197c04 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -266,6 +266,7 @@ struct iavf_adapter {
 	/* Lock to protect accesses to MAC and VLAN lists */
 	spinlock_t mac_vlan_list_lock;
 	char misc_vector_name[IFNAMSIZ + 9];
+	u8 rxdid;
 	int num_active_queues;
 	int num_req_queues;
 
@@ -335,6 +336,14 @@ struct iavf_adapter {
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
@@ -346,10 +355,14 @@ struct iavf_adapter {
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
@@ -405,12 +418,15 @@ struct iavf_adapter {
 			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 #define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
+#define RXDID_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
+			   VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
 #define PF_IS_V11(_a) (((_a)->pf_version.major == 1) && \
 		       ((_a)->pf_version.minor == 1))
 	struct virtchnl_vlan_caps vlan_v2_caps;
+	struct virtchnl_supported_rxdids supported_rxdids;
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
 	struct iavf_vsi vsi;
@@ -521,6 +537,8 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter);
 int iavf_get_vf_config(struct iavf_adapter *adapter);
 int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
 int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
+int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter);
+int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter);
 void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 13361a780ece..0964939ab5f5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -706,6 +706,38 @@ static void iavf_configure_tx(struct iavf_adapter *adapter)
 		adapter->tx_rings[i].tail = hw->hw_addr + IAVF_QTX_TAIL1(i);
 }
 
+/**
+ * iavf_select_rx_desc_format - Select Rx descriptor format
+ * @adapter: adapter private structure
+ *
+ * Select what Rx descriptor format based on availability and enabled
+ * features.
+ *
+ * Returns the desired RXDID to select for a given Rx queue, as defined by
+ * enum virtchnl_rxdid_format.
+ */
+static u8 iavf_select_rx_desc_format(struct iavf_adapter *adapter)
+{
+	u64 supported_rxdids = adapter->supported_rxdids.supported_rxdids;
+
+	/* If we did not negotiate VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, we must
+	 * stick with the default value of the legacy 32 byte format.
+	 */
+	if (!RXDID_ALLOWED(adapter))
+		return VIRTCHNL_RXDID_1_32B_BASE;
+
+	/* Warn if the PF does not list support for the default legacy
+	 * descriptor format. This shouldn't happen, as this is the format
+	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
+	 * likely caused by a bug in the PF implementation failing to indicate
+	 * support for the format.
+	 */
+	if (supported_rxdids & BIT(VIRTCHNL_RXDID_1_32B_BASE))
+		dev_warn(&adapter->pdev->dev, "PF does not list support for default Rx descriptor format\n");
+
+	return VIRTCHNL_RXDID_1_32B_BASE;
+}
+
 /**
  * iavf_configure_rx - Configure Receive Unit after Reset
  * @adapter: board private structure
@@ -718,6 +750,8 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
 
+	adapter->rxdid = iavf_select_rx_desc_format(adapter);
+
 	/* Legacy Rx will always default to a 2048 buffer size. */
 #if (PAGE_SIZE < 8192)
 	if (!(adapter->flags & IAVF_FLAG_LEGACY_RX)) {
@@ -742,6 +776,7 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
 	for (i = 0; i < adapter->num_active_queues; i++) {
 		adapter->rx_rings[i].tail = hw->hw_addr + IAVF_QRX_TAIL1(i);
 		adapter->rx_rings[i].rx_buf_len = rx_buf_len;
+		adapter->rx_rings[i].rxdid = adapter->rxdid;
 
 		if (adapter->flags & IAVF_FLAG_LEGACY_RX)
 			clear_ring_build_skb_enabled(&adapter->rx_rings[i]);
@@ -2073,6 +2108,8 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		return iavf_send_vf_config_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS)
 		return iavf_send_vf_offload_vlan_v2_msg(adapter);
+	if (adapter->aq_required & IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
+		return iavf_send_vf_supported_rxdids_msg(adapter);
 	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_QUEUES) {
 		iavf_disable_queues(adapter);
 		return 0;
@@ -2586,6 +2623,67 @@ static void iavf_init_recv_offload_vlan_v2_caps(struct iavf_adapter *adapter)
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
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_RXDID));
+
+	ret = iavf_send_vf_supported_rxdids_msg(adapter);
+	if (ret && ret == -EOPNOTSUPP) {
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
+	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_RXDID));
+
+	memset(&adapter->supported_rxdids, 0,
+	       sizeof(adapter->supported_rxdids));
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
@@ -2610,6 +2708,15 @@ static void iavf_init_process_extended_caps(struct iavf_adapter *adapter)
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
@@ -3079,15 +3186,18 @@ static void iavf_reset_task(struct work_struct *work)
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
index 10ba36602c0c..97055c63e866 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -359,6 +359,8 @@ struct iavf_ring {
 	bool arm_wb;		/* do something to arm write back */
 	u8 packet_stride;
 
+	u8 rxdid;		/* Rx descriptor format */
+
 	u16 flags;
 #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
 #define IAVF_RXR_FLAGS_BUILD_SKB_ENABLED	BIT(1)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 22f2df7c460b..52b8f1721147 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -141,6 +141,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP |
 	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
+	       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC |
 	       VIRTCHNL_VF_OFFLOAD_CRC |
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
@@ -173,6 +174,19 @@ int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter)
 				NULL, 0);
 }
 
+int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter)
+{
+	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS;
+
+	if (!RXDID_ALLOWED(adapter))
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
@@ -259,6 +273,45 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
 	return err;
 }
 
+int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
+{
+	struct iavf_hw *hw = &adapter->hw;
+	struct iavf_arq_event_info event;
+	enum virtchnl_ops op;
+	enum iavf_status err;
+	u16 len;
+
+	len =  sizeof(struct virtchnl_supported_rxdids);
+	event.buf_len = len;
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
+	if (!event.msg_buf) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	while (1) {
+		/* When the AQ is empty, iavf_clean_arq_element will return
+		 * nonzero and this loop will terminate.
+		 */
+		err = iavf_clean_arq_element(hw, &event, NULL);
+		if (err != IAVF_SUCCESS)
+			goto out_alloc;
+		op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
+		if (op == VIRTCHNL_OP_GET_SUPPORTED_RXDIDS)
+			break;
+	}
+
+	err = (enum iavf_status)le32_to_cpu(event.desc.cookie_low);
+	if (err)
+		goto out_alloc;
+
+	memcpy(&adapter->supported_rxdids, event.msg_buf, min(event.msg_len, len));
+out_alloc:
+	kfree(event.msg_buf);
+out:
+	return err;
+}
+
 /**
  * iavf_configure_queues
  * @adapter: adapter structure
@@ -312,6 +365,8 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
 		vqpi->rxq.databuffer_size =
 			ALIGN(adapter->rx_rings[i].rx_buf_len,
 			      BIT_ULL(IAVF_RXQ_CTX_DBUFF_SHIFT));
+		if (RXDID_ALLOWED(adapter))
+			vqpi->rxq.rxdid = adapter->rxdid;
 		if (CRC_OFFLOAD_ALLOWED(adapter))
 			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
 						   NETIF_F_RXFCS);
@@ -2376,6 +2431,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			aq_required;
 		}
 		break;
+	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
+		memcpy(&adapter->supported_rxdids, msg,
+		       min_t(u16, msglen, sizeof(adapter->supported_rxdids)));
+	break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
 		iavf_irq_enable(adapter, true);
-- 
2.38.1

