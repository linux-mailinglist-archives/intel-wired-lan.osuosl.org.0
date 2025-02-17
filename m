Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ABEA37DD4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Feb 2025 10:06:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3DB481F9E;
	Mon, 17 Feb 2025 09:06:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7zPIvlyp4u32; Mon, 17 Feb 2025 09:06:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45D8C81F8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739783211;
	bh=thnAwG7ZRthGdkbjxQ/D8s+24EEBxtd3lIamA9TEdXI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uK2I/YQeC0Auh72AAxXuGD2vm+k9JRLPFcct1kS826KVQYbuiXxlbmZNbEOJlHh7Q
	 rn5NKjuOFQ9Aa1m3QuhxvKlBN+o/WqevzlEe/9Vt9nvnYBiIIovzPk3jCr8xGkR/oE
	 y78ETk2DCE3mpW1+nYnFKcMyutl/eud/S0syFg+4Kmpg+SnwtuyyfGMXJRUCLVPCk3
	 FJFG43nA9GTYYso2sZ9gvbMWAVCSIUkj4xi0h5fHhO3nY4aoLKj0EZkR5SdI+G9Rpf
	 QZLWmS6bzq0P5yQdii5E/sMyjL1RKgPs364AQIJBWqowswLTQWA9P+g2HQWAsOggFv
	 326WteBt5Gydw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45D8C81F8A;
	Mon, 17 Feb 2025 09:06:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BE767DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B97BF408B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjaog8Ke5Qpc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Feb 2025 09:06:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4582040116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4582040116
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4582040116
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Feb 2025 09:06:47 +0000 (UTC)
X-CSE-ConnectionGUID: M39PHqQrT3Sbg5Nhtgupjw==
X-CSE-MsgGUID: bKEMh7vpRNqVK7QCXqr76Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51078500"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="51078500"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 01:06:47 -0800
X-CSE-ConnectionGUID: K1NM4nPLRBmb0Ryj/sof6g==
X-CSE-MsgGUID: MLQZ+uk0QdKpkgBOL7PZEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="113937613"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 17 Feb 2025 01:06:44 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 jedrzej.jagielski@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, anthony.l.nguyen@intel.com,
 dawid.osuchowski@intel.com, horms@kernel.org, pmenzel@molgen.mpg.de
Date: Mon, 17 Feb 2025 10:06:35 +0100
Message-ID: <20250217090636.25113-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
References: <20250217090636.25113-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739783207; x=1771319207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Clrd6rAoZ2+uVRQydbic8bLeFIaWOS+pUvmDVw/gmH0=;
 b=Xp6ZQeGiYRzdEo4YiIgNXxxdKs5+FrN2V2oX75CAaeeowMdRdR+4jfM/
 pUlEnY+X3Sn2E90LoiVxagwNQxh12jL4UogPZGyRsMwwGvBsqjI33WqzN
 ujlsa3SM2DedJKDYwBGYS/WS7thpHo9voW6/V/wVpNa0VpnCbKSyPld0B
 nywu0VWo8oWpEC34YOQx3gottcUmYEEbz+G9pIC/IiGOfQKWNani7QdCZ
 FFgZ9k/T+Rm1De6RWIm4AH7auuhFTF70fHo6o/3A+wwY25fLDjs1MyQZ/
 FiLg0d/8KDYzSORsGEw9TBEzl55f1zxVna+YlmdG7E8AI8gWWg0Lq5D8q
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xp6ZQeGi
Subject: [Intel-wired-lan] [iwl-next v3 3/4] ixgbe: add Tx hang detection
 unhandled MDD
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

From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>

Add Tx Hang detection due to an unhandled MDD Event.

Previously, a malicious VF could disable the entire port causing
TX to hang on the E610 card.
Those events that caused PF to freeze were not detected
as an MDD event and usually required a Tx Hang watchdog timer
to catch the suspension, and perform a physical function reset.

Implement flows in the affected PF driver in such a way to check
the cause of the hang, detect it as an MDD event and log an
entry of the malicious VF that caused the Hang.

The PF blocks the malicious VF, if it continues to be the source
of several MDD events.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   5 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  12 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 211 ++++++++++++++++--
 4 files changed, 209 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index e6a380d4929b..81ccb4c591ba 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -427,6 +427,10 @@ enum ixgbe_ring_f_enum {
 #define IXGBE_BAD_L2A_QUEUE		3
 #define IXGBE_MAX_MACVLANS		63
 
+#define IXGBE_MAX_TX_QUEUES		128
+#define IXGBE_MAX_TX_DESCRIPTORS	40
+#define IXGBE_MAX_TX_VF_HANGS		4
+
 DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
 
 struct ixgbe_ring_feature {
@@ -798,6 +802,7 @@ struct ixgbe_adapter {
 	u32 timer_event_accumulator;
 	u32 vferr_refcount;
 	struct ixgbe_mac_addr *mac_table;
+	u8 tx_hang_count[IXGBE_MAX_TX_QUEUES];
 	struct kobject *info_kobj;
 	u16 lse_mask;
 #ifdef CONFIG_IXGBE_HWMON
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index aa3b498558bc..783e76c0e8a2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -1044,6 +1044,7 @@ struct ixgbe_nvm_version {
 #define IXGBE_GCR_EXT_VT_MODE_16        0x00000001
 #define IXGBE_GCR_EXT_VT_MODE_32        0x00000002
 #define IXGBE_GCR_EXT_VT_MODE_64        0x00000003
+#define IXGBE_GCR_EXT_VT_MODE_MASK      0x00000003
 #define IXGBE_GCR_EXT_SRIOV             (IXGBE_GCR_EXT_MSIX_EN | \
 					 IXGBE_GCR_EXT_VT_MODE_64)
 
@@ -2935,6 +2936,13 @@ struct ixgbe_adv_tx_context_desc {
 	__le32 mss_l4len_idx;
 };
 
+enum {
+	IXGBE_VLAN_MACIP_LENS_REG	= 0,
+	IXGBE_FCEOF_SAIDX_REG		= 1,
+	IXGBE_TYPE_TUCMD_MLHL		= 2,
+	IXGBE_MSS_L4LEN_IDX		= 3,
+};
+
 /* Adv Transmit Descriptor Config Masks */
 #define IXGBE_ADVTXD_DTALEN_MASK      0x0000FFFF /* Data buf length(bytes) */
 #define IXGBE_ADVTXD_MAC_LINKSEC      0x00040000 /* Insert LinkSec */
@@ -2942,7 +2950,7 @@ struct ixgbe_adv_tx_context_desc {
 #define IXGBE_ADVTXD_IPSEC_SA_INDEX_MASK   0x000003FF /* IPSec SA index */
 #define IXGBE_ADVTXD_IPSEC_ESP_LEN_MASK    0x000001FF /* IPSec ESP length */
 #define IXGBE_ADVTXD_DTYP_MASK  0x00F00000 /* DTYP mask */
-#define IXGBE_ADVTXD_DTYP_CTXT  0x00200000 /* Advanced Context Desc */
+#define IXGBE_ADVTXD_DTYP_CTXT	0x2 /* Advanced Context Desc */
 #define IXGBE_ADVTXD_DTYP_DATA  0x00300000 /* Advanced Data Descriptor */
 #define IXGBE_ADVTXD_DCMD_EOP   IXGBE_TXD_CMD_EOP  /* End of Packet */
 #define IXGBE_ADVTXD_DCMD_IFCS  IXGBE_TXD_CMD_IFCS /* Insert FCS */
@@ -2991,6 +2999,8 @@ struct ixgbe_adv_tx_context_desc {
 #define IXGBE_ADVTXD_FCOEF_EOF_MASK  (3u << 10)  /* FC EOF index */
 #define IXGBE_ADVTXD_L4LEN_SHIFT     8  /* Adv ctxt L4LEN shift */
 #define IXGBE_ADVTXD_MSS_SHIFT       16  /* Adv ctxt MSS shift */
+#define IXGBE_ADVTXD_MSS_MASK		GENMASK(31, IXGBE_ADVTXD_MSS_SHIFT)
+#define IXGBE_ADVTXD_HEADER_LEN_MASK	GENMASK(8, 0)
 
 /* Autonegotiation advertised speeds */
 typedef u32 ixgbe_autoneg_advertised;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
index 336d47ffb95a..54d75cf94cc1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
@@ -1293,7 +1293,8 @@ void ixgbe_tx_ctxtdesc(struct ixgbe_ring *tx_ring, u32 vlan_macip_lens,
 	tx_ring->next_to_use = (i < tx_ring->count) ? i : 0;
 
 	/* set bits to identify this as an advanced context descriptor */
-	type_tucmd |= IXGBE_TXD_CMD_DEXT | IXGBE_ADVTXD_DTYP_CTXT;
+	type_tucmd |= IXGBE_TXD_CMD_DEXT |
+		FIELD_PREP(IXGBE_ADVTXD_DTYP_MASK, IXGBE_ADVTXD_DTYP_CTXT);
 
 	context_desc->vlan_macip_lens	= cpu_to_le32(vlan_macip_lens);
 	context_desc->fceof_saidx	= cpu_to_le32(fceof_saidx);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 3ff48207165c..22148e65e596 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9,6 +9,7 @@
 #include <linux/string.h>
 #include <linux/in.h>
 #include <linux/interrupt.h>
+#include <linux/iopoll.h>
 #include <linux/ip.h>
 #include <linux/tcp.h>
 #include <linux/sctp.h>
@@ -1039,6 +1040,48 @@ static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
 	return ((head <= tail) ? tail : tail + ring->count) - head;
 }
 
+/**
+ * ixgbe_get_vf_idx - provide VF index number based on queue index
+ * @adapter: pointer to the adapter struct
+ * @queue: Tx queue identifier
+ * @vf: output VF index
+ *
+ * Provide VF index number associated to the input queue.
+ *
+ * Returns: 0 if VF provided or error number.
+ */
+static int ixgbe_get_vf_idx(struct ixgbe_adapter *adapter, u16 queue, u16 *vf)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	u8 queue_count;
+	u32 reg;
+
+	if (queue >= adapter->num_tx_queues)
+		return -EINVAL;
+
+	/* Determine number of queues by checking
+	 * number of virtual functions
+	 */
+	reg = IXGBE_READ_REG(hw, IXGBE_GCR_EXT);
+	switch (reg & IXGBE_GCR_EXT_VT_MODE_MASK) {
+	case IXGBE_GCR_EXT_VT_MODE_64:
+		queue_count = IXGBE_64VFS_QUEUES;
+		break;
+	case IXGBE_GCR_EXT_VT_MODE_32:
+		queue_count = IXGBE_32VFS_QUEUES;
+		break;
+	case IXGBE_GCR_EXT_VT_MODE_16:
+		queue_count = IXGBE_16VFS_QUEUES;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	*vf = queue / queue_count;
+
+	return 0;
+}
+
 static bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
 {
 	u32 tx_done = ixgbe_get_tx_completed(tx_ring);
@@ -1157,6 +1200,150 @@ void ixgbe_update_rx_ring_stats(struct ixgbe_ring *rx_ring,
 	q_vector->rx.total_packets += pkts;
 }
 
+/**
+ * ixgbe_pf_handle_tx_hang - handle Tx hang on PF
+ * @tx_ring: tx ring number
+ * @next: next ring
+ *
+ * Prints a message containing details about the tx hang.
+ */
+static void ixgbe_pf_handle_tx_hang(struct ixgbe_ring *tx_ring,
+				    unsigned int next)
+{
+	struct ixgbe_adapter *adapter = netdev_priv(tx_ring->netdev);
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	e_err(drv, "Detected Tx Unit Hang%s\n"
+		   "  Tx Queue             <%d>\n"
+		   "  TDH, TDT             <%x>, <%x>\n"
+		   "  next_to_use          <%x>\n"
+		   "  next_to_clean        <%x>\n"
+		   "tx_buffer_info[next_to_clean]\n"
+		   "  time_stamp           <%lx>\n"
+		   "  jiffies              <%lx>\n",
+	      ring_is_xdp(tx_ring) ? " (XDP)" : "",
+	      tx_ring->queue_index,
+	      IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
+	      IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
+	      tx_ring->next_to_use, next,
+	      tx_ring->tx_buffer_info[next].time_stamp, jiffies);
+
+	if (!ring_is_xdp(tx_ring))
+		netif_stop_subqueue(tx_ring->netdev,
+				    tx_ring->queue_index);
+}
+
+/**
+ * ixgbe_vf_handle_tx_hang - handle Tx hang on VF
+ * @adapter: structure containing ring specific data
+ * @vf: VF index
+ *
+ * Print a message containing details about malicious driver detection.
+ * Set malicious VF link down if the detection happened several times.
+ */
+static void ixgbe_vf_handle_tx_hang(struct ixgbe_adapter *adapter, u16 vf)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	if (adapter->hw.mac.type != ixgbe_mac_e610)
+		return;
+
+	e_warn(drv,
+	       "Malicious Driver Detection tx hang detected on PF %d VF %d MAC: %pM",
+	       hw->bus.func, vf, adapter->vfinfo[vf].vf_mac_addresses);
+
+	adapter->tx_hang_count[vf]++;
+	if (adapter->tx_hang_count[vf] == IXGBE_MAX_TX_VF_HANGS) {
+		ixgbe_set_vf_link_state(adapter, vf,
+					IFLA_VF_LINK_STATE_DISABLE);
+		adapter->tx_hang_count[vf] = 0;
+	}
+}
+
+static u32 ixgbe_poll_tx_icache(struct ixgbe_hw *hw, u16 queue, u16 idx)
+{
+	IXGBE_WRITE_REG(hw, IXGBE_TXDESCIC, queue * idx);
+	return IXGBE_READ_REG(hw, IXGBE_TXDESCIC);
+}
+
+/**
+ * ixgbe_check_illegal_queue - search for queue with illegal packet
+ * @adapter: structure containing ring specific data
+ * @queue: queue index
+ *
+ * Check if tx descriptor connected with input queue
+ * contains illegal packet.
+ *
+ * Returns: true if queue contain illegal packet.
+ */
+static bool ixgbe_check_illegal_queue(struct ixgbe_adapter *adapter,
+				      u16 queue)
+{
+	u32 hdr_len_reg, mss_len_reg, type_reg;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 mss_len, header_len, reg;
+
+	for (u16 i = 0; i < IXGBE_MAX_TX_DESCRIPTORS; i++) {
+		/* HW will clear bit IXGBE_TXDESCIC_READY when address
+		 * is written to address field. HW will set this bit
+		 * when iCache read is done, and data is ready at TIC_DWx.
+		 * Set descriptor address.
+		 */
+		read_poll_timeout(ixgbe_poll_tx_icache, reg,
+				  !(reg & IXGBE_TXDESCIC_READY), 0, 0, false,
+				  hw, queue, i);
+
+		/* read tx descriptor access registers */
+		hdr_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_VLAN_MACIP_LENS_REG));
+		type_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_TYPE_TUCMD_MLHL));
+		mss_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_MSS_L4LEN_IDX));
+
+		/* check if Advanced Context Descriptor */
+		if (FIELD_GET(IXGBE_ADVTXD_DTYP_MASK, type_reg) !=
+		    IXGBE_ADVTXD_DTYP_CTXT)
+			continue;
+
+		/* check for illegal MSS and Header length */
+		mss_len = FIELD_GET(IXGBE_ADVTXD_MSS_MASK, mss_len_reg);
+		header_len = FIELD_GET(IXGBE_ADVTXD_HEADER_LEN_MASK,
+				       hdr_len_reg);
+		if ((mss_len + header_len) > SZ_16K) {
+			e_warn(probe, "mss len + header len too long\n");
+			return true;
+		}
+	}
+
+	return false;
+}
+
+/**
+ * ixgbe_handle_mdd_event - handle mdd event
+ * @adapter: structure containing ring specific data
+ * @tx_ring: tx descriptor ring to handle
+ *
+ * Reset VF driver if malicious vf detected or
+ * illegal packet in an any queue detected.
+ */
+static void ixgbe_handle_mdd_event(struct ixgbe_adapter *adapter,
+				   struct ixgbe_ring *tx_ring)
+{
+	u16 vf, q;
+
+	if (adapter->vfinfo && ixgbe_check_mdd_event(adapter)) {
+		/* vf mdd info and malicious vf detected */
+		if (!ixgbe_get_vf_idx(adapter, tx_ring->queue_index, &vf))
+			ixgbe_vf_handle_tx_hang(adapter, vf);
+	} else {
+		/* malicious vf not detected */
+		for (q = 0; q < IXGBE_MAX_TX_QUEUES; q++) {
+			if (ixgbe_check_illegal_queue(adapter, q) &&
+			    !ixgbe_get_vf_idx(adapter, q, &vf))
+				/* illegal queue detected */
+				ixgbe_vf_handle_tx_hang(adapter, vf);
+		}
+	}
+}
+
 /**
  * ixgbe_clean_tx_irq - Reclaim resources after transmit completes
  * @q_vector: structure containing interrupt and ring information
@@ -1264,26 +1451,10 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
 	adapter->tx_ipsec += total_ipsec;
 
 	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
-		/* schedule immediate reset if we believe we hung */
-		struct ixgbe_hw *hw = &adapter->hw;
-		e_err(drv, "Detected Tx Unit Hang %s\n"
-			"  Tx Queue             <%d>\n"
-			"  TDH, TDT             <%x>, <%x>\n"
-			"  next_to_use          <%x>\n"
-			"  next_to_clean        <%x>\n"
-			"tx_buffer_info[next_to_clean]\n"
-			"  time_stamp           <%lx>\n"
-			"  jiffies              <%lx>\n",
-			ring_is_xdp(tx_ring) ? "(XDP)" : "",
-			tx_ring->queue_index,
-			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
-			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
-			tx_ring->next_to_use, i,
-			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
-
-		if (!ring_is_xdp(tx_ring))
-			netif_stop_subqueue(tx_ring->netdev,
-					    tx_ring->queue_index);
+		if (adapter->hw.mac.type == ixgbe_mac_e610)
+			ixgbe_handle_mdd_event(adapter, tx_ring);
+
+		ixgbe_pf_handle_tx_hang(tx_ring, i);
 
 		e_info(probe,
 		       "tx hang %d detected on queue %d, resetting adapter\n",
-- 
2.42.0

