Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5425A145F6F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:53:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0687521FFB;
	Wed, 22 Jan 2020 23:53:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZ-lKcDAk9af; Wed, 22 Jan 2020 23:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2CDF2151E;
	Wed, 22 Jan 2020 23:53:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 953711BF281
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9207E86463
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WFytyOCZES_w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:53:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89CB986469
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:53:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:53:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="222189292"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jan 2020 15:53:25 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:20:41 -0800
Message-Id: <20200122152041.41498-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152041.41498-1-anthony.l.nguyen@intel.com>
References: <20200122152041.41498-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S37 15/15] ice: Trivial fixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a collection of trivial fixes including fixing whitespace, typos,
function headers, reverse Christmas tree, etc.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h  |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c      |  4 ++--
 drivers/net/ethernet/intel/ice/ice_dcb.c         |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c     |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c         |  7 ++++---
 drivers/net/ethernet/intel/ice/ice_main.c        |  4 +++-
 drivers/net/ethernet/intel/ice/ice_txrx.c        |  9 ++++-----
 drivers/net/ethernet/intel/ice/ice_type.h        |  2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  3 +--
 10 files changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 2722789fa703..210113eade20 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1691,6 +1691,7 @@ struct ice_aqc_get_pkg_info_resp {
 	__le32 count;
 	struct ice_aqc_get_pkg_info pkg_info[1];
 };
+
 /**
  * struct ice_aq_desc - Admin Queue (AQ) descriptor
  * @flags: ICE_AQ_FLAG_* flags
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e89b549b943d..873c632271b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -588,10 +588,10 @@ void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf)
 }
 
 /**
- * ice_get_itr_intrl_gran - determine int/intrl granularity
+ * ice_get_itr_intrl_gran
  * @hw: pointer to the HW struct
  *
- * Determines the ITR/intrl granularities based on the maximum aggregate
+ * Determines the ITR/INTRL granularities based on the maximum aggregate
  * bandwidth according to the device's configuration during power-on.
  */
 static void ice_get_itr_intrl_gran(struct ice_hw *hw)
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 713e8a892e14..adb8dab765c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -1323,13 +1323,13 @@ enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi)
 }
 
 /**
- * ice_aq_query_port_ets - query port ets configuration
+ * ice_aq_query_port_ets - query port ETS configuration
  * @pi: port information structure
  * @buf: pointer to buffer
  * @buf_size: buffer size in bytes
  * @cd: pointer to command details structure or NULL
  *
- * query current port ets configuration
+ * query current port ETS configuration
  */
 static enum ice_status
 ice_aq_query_port_ets(struct ice_port_info *pi,
@@ -1416,13 +1416,13 @@ ice_update_port_tc_tree_cfg(struct ice_port_info *pi,
 }
 
 /**
- * ice_query_port_ets - query port ets configuration
+ * ice_query_port_ets - query port ETS configuration
  * @pi: port information structure
  * @buf: pointer to buffer
  * @buf_size: buffer size in bytes
  * @cd: pointer to command details structure or NULL
  *
- * query current port ets configuration and update the
+ * query current port ETS configuration and update the
  * SW DB with the TC changes
  */
 enum ice_status
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 935797e962a2..0f4ca813a7ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -436,9 +436,9 @@ static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
 }
 
 /**
- * ice_dcb_sw_default_config - Apply a default DCB config
+ * ice_dcb_sw_dflt_cfg - Apply a default DCB config
  * @pf: PF to apply config to
- * @ets_willing: configure ets willing
+ * @ets_willing: configure ETS willing
  * @locked: was this function called with RTNL held
  */
 static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 4b29d1ae56a7..c0f58e08890e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3800,11 +3800,11 @@ ice_get_module_eeprom(struct net_device *netdev,
 static const struct ethtool_ops ice_ethtool_ops = {
 	.get_link_ksettings	= ice_get_link_ksettings,
 	.set_link_ksettings	= ice_set_link_ksettings,
-	.get_drvinfo            = ice_get_drvinfo,
-	.get_regs_len           = ice_get_regs_len,
-	.get_regs               = ice_get_regs,
-	.get_msglevel           = ice_get_msglevel,
-	.set_msglevel           = ice_set_msglevel,
+	.get_drvinfo		= ice_get_drvinfo,
+	.get_regs_len		= ice_get_regs_len,
+	.get_regs		= ice_get_regs,
+	.get_msglevel		= ice_get_msglevel,
+	.set_msglevel		= ice_set_msglevel,
 	.self_test		= ice_self_test,
 	.get_link		= ethtool_op_get_link,
 	.get_eeprom_len		= ice_get_eeprom_len,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7d546c75dcc6..3c9353d7b0ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1241,8 +1241,9 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
  *
  * Returns 0 on success or ENOMEM on failure.
  */
-int ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
-			const u8 *macaddr)
+int
+ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
+		    const u8 *macaddr)
 {
 	struct ice_fltr_list_entry *tmp;
 	struct ice_pf *pf = vsi->back;
@@ -2874,8 +2875,8 @@ static void ice_vsi_update_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctx)
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 {
 	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] = { 0 };
-	struct ice_vsi_ctx *ctx;
 	struct ice_pf *pf = vsi->back;
+	struct ice_vsi_ctx *ctx;
 	enum ice_status status;
 	struct device *dev;
 	int i, ret = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2297a5a5c572..1bf6d21c38e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3179,7 +3179,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	struct ice_hw *hw;
 	int err;
 
-	/* this driver uses devres, see Documentation/driver-api/driver-model/devres.rst */
+	/* this driver uses devres, see
+	 * Documentation/driver-api/driver-model/devres.rst
+	 */
 	err = pcim_enable_device(pdev);
 	if (err)
 		return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 1d4755acca3d..4de61dbedd36 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -644,7 +644,7 @@ static bool ice_page_is_reserved(struct page *page)
  * Update the offset within page so that Rx buf will be ready to be reused.
  * For systems with PAGE_SIZE < 8192 this function will flip the page offset
  * so the second half of page assigned to Rx buffer will be used, otherwise
- * the offset is moved by the @size bytes
+ * the offset is moved by "size" bytes
  */
 static void
 ice_rx_buf_adjust_pg_offset(struct ice_rx_buf *rx_buf, unsigned int size)
@@ -1619,11 +1619,11 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 {
 	u64 td_offset, td_tag, td_cmd;
 	u16 i = tx_ring->next_to_use;
-	skb_frag_t *frag;
 	unsigned int data_len, size;
 	struct ice_tx_desc *tx_desc;
 	struct ice_tx_buf *tx_buf;
 	struct sk_buff *skb;
+	skb_frag_t *frag;
 	dma_addr_t dma;
 
 	td_tag = off->td_l2tag1;
@@ -1736,9 +1736,8 @@ ice_tx_map(struct ice_ring *tx_ring, struct ice_tx_buf *first,
 	ice_maybe_stop_tx(tx_ring, DESC_NEEDED);
 
 	/* notify HW of packet */
-	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
+	if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more())
 		writel(i, tx_ring->tail);
-	}
 
 	return;
 
@@ -2076,7 +2075,7 @@ static bool __ice_chk_linearize(struct sk_buff *skb)
 	frag = &skb_shinfo(skb)->frags[0];
 
 	/* Initialize size to the negative value of gso_size minus 1. We
-	 * use this as the worst case scenerio in which the frag ahead
+	 * use this as the worst case scenario in which the frag ahead
 	 * of us only provides one byte which is why we are limited to 6
 	 * descriptors for a single transmit as the header and previous
 	 * fragment are already consuming 2 descriptors.
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 5224b066730a..bf67f6df5333 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -521,7 +521,7 @@ struct ice_hw {
 	struct ice_fw_log_cfg fw_log;
 
 /* Device max aggregate bandwidths corresponding to the GL_PWR_MODE_CTL
- * register. Used for determining the ITR/intrl granularity during
+ * register. Used for determining the ITR/INTRL granularity during
  * initialization.
  */
 #define ICE_MAX_AGG_BW_200G	0x0
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6d78bcdd162d..1874bfa65796 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1093,7 +1093,6 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	 * finished resetting.
 	 */
 	for (i = 0, v = 0; i < 10 && v < pf->num_alloc_vfs; i++) {
-
 		/* Check each VF in sequence */
 		while (v < pf->num_alloc_vfs) {
 			u32 reg;
@@ -2612,8 +2611,8 @@ static int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	struct ice_pf *pf = vf->pf;
 	u16 max_allowed_vf_queues;
 	u16 tx_rx_queue_left;
-	u16 cur_queues;
 	struct device *dev;
+	u16 cur_queues;
 
 	dev = ice_pf_to_dev(pf);
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
