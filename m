Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3A431DBFD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Feb 2021 16:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7B5871F2;
	Wed, 17 Feb 2021 15:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E9ZNr5hX4NJb; Wed, 17 Feb 2021 15:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CCED8721C;
	Wed, 17 Feb 2021 15:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19FDF1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 11:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1352486CAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 11:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZThJJNl19CEH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Feb 2021 11:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AFED886CAB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Feb 2021 11:26:47 +0000 (UTC)
IronPort-SDR: +yKdD+ax2QLmzNzjQsdErJtd9ny1dEzs2Ig6wAUQUIRz9bsMv7ptbvDby/euRgCTNdDfuze42j
 bg0n1DHzBIcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="179661361"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="179661361"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 03:26:47 -0800
IronPort-SDR: AjMv6f/4Q7arAtEG1jjPKZCzBzP3ipEoJqHZPFpIy6h+3oM83TmazB7g7HxHp70GSrPCretjJc
 f6FGnzT5Mmow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399918340"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2021 03:26:45 -0800
From: =?UTF-8?q?Micha=C5=82=20Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Feb 2021 11:25:24 +0000
Message-Id: <1613561124-15464-1-git-send-email-michal.maloszewski@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Wed, 17 Feb 2021 15:14:49 +0000
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL ptr dereference on
 VSI filter sync
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
Cc: =?UTF-8?q?Micha=C5=82=20Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the reason of null pointer dereference in sync vsi filters.
Added new I40E_VSI_RELEASING flag to signalize deleting and releasing
of VSI resources to sync this thread with sync filters subtask.
Without this patch it is possible to start update the vsi filter list
after vsi is removed, that's causing a kernel oops.

Fixes: 17652c6336fd("i40e: remove unused argument")
Reviewed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Reviewed-by: Fijalkowski, WitoldX <witoldx.fijalkowski@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      | 79 +++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 60 ++++++++++++++++------
 2 files changed, 124 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 425d620..558b0ae 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -158,6 +158,7 @@ enum i40e_vsi_state_t {
 	__I40E_VSI_OVERFLOW_PROMISC,
 	__I40E_VSI_REINIT_REQUESTED,
 	__I40E_VSI_DOWN_REQUESTED,
+	__I40E_VSI_RELEASING,
 	/* This must be last as it determines the size of the BITMAP */
 	__I40E_VSI_STATE_SIZE__,
 };
@@ -425,6 +426,8 @@ struct i40e_channel {
 	struct i40e_vsi *parent_vsi;
 };
 
+struct i40e_ptp_pins_settings;
+
 static inline bool i40e_is_channel_macvlan(struct i40e_channel *ch)
 {
 	return !!ch->fwd;
@@ -641,12 +644,83 @@ struct i40e_pf {
 	struct i40e_rx_pb_config pb_cfg; /* Current Rx packet buffer config */
 	struct i40e_dcbx_config tmp_cfg;
 
+/* GPIO defines used by PTP */
+#define I40E_SDP3_2			18
+#define I40E_SDP3_3			19
+#define I40E_GPIO_4			20
+#define I40E_LED2_0			26
+#define I40E_LED2_1			27
+#define I40E_LED3_0			28
+#define I40E_LED3_1			29
+#define I40E_GLGEN_GPIO_SET_SDP_DATA_HI \
+	(1 << I40E_GLGEN_GPIO_SET_SDP_DATA_SHIFT)
+#define I40E_GLGEN_GPIO_SET_DRV_SDP_DATA \
+	(1 << I40E_GLGEN_GPIO_SET_DRIVE_SDP_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PRT_NUM_0 \
+	(0 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PRT_NUM_1 \
+	(1 << I40E_GLGEN_GPIO_CTL_PRT_NUM_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_RESERVED	BIT(2)
+#define I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_Z \
+	(1 << I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_DIR_OUT \
+	(1 << I40E_GLGEN_GPIO_CTL_PIN_DIR_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TRI_DRV_HI \
+	(1 << I40E_GLGEN_GPIO_CTL_TRI_CTL_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_OUT_HI_RST \
+	(1 << I40E_GLGEN_GPIO_CTL_OUT_CTL_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TIMESYNC_0 \
+	(3 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_TIMESYNC_1 \
+	(4 << I40E_GLGEN_GPIO_CTL_PIN_FUNC_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN \
+	(0x3F << I40E_GLGEN_GPIO_CTL_PHY_PIN_NAME_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_OUT_DEFAULT \
+	(1 << I40E_GLGEN_GPIO_CTL_OUT_DEFAULT_SHIFT)
+#define I40E_GLGEN_GPIO_CTL_PORT_0_IN_TIMESYNC_0 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
+#define I40E_GLGEN_GPIO_CTL_PORT_1_IN_TIMESYNC_0 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_0 | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
+#define I40E_GLGEN_GPIO_CTL_PORT_0_OUT_TIMESYNC_1 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 | I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
+	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_0)
+#define I40E_GLGEN_GPIO_CTL_PORT_1_OUT_TIMESYNC_1 \
+	(I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN | \
+	 I40E_GLGEN_GPIO_CTL_TIMESYNC_1 | I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
+	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | I40E_GLGEN_GPIO_CTL_DIR_OUT | \
+	 I40E_GLGEN_GPIO_CTL_RESERVED | I40E_GLGEN_GPIO_CTL_PRT_NUM_1)
+#define I40E_GLGEN_GPIO_CTL_LED_INIT \
+	(I40E_GLGEN_GPIO_CTL_PRT_NUM_NA_Z | \
+	 I40E_GLGEN_GPIO_CTL_DIR_OUT | \
+	 I40E_GLGEN_GPIO_CTL_TRI_DRV_HI | \
+	 I40E_GLGEN_GPIO_CTL_OUT_HI_RST | \
+	 I40E_GLGEN_GPIO_CTL_OUT_DEFAULT | \
+	 I40E_GLGEN_GPIO_CTL_NOT_FOR_PHY_CONN)
+#define I40E_PRTTSYN_AUX_1_INSTNT \
+	(1 << I40E_PRTTSYN_AUX_1_INSTNT_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_ENABLE \
+	(1 << I40E_PRTTSYN_AUX_0_OUT_ENA_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_CLK_MOD	(3 << I40E_PRTTSYN_AUX_0_OUTMOD_SHIFT)
+#define I40E_PRTTSYN_AUX_0_OUT_ENABLE_CLK_MOD \
+	(I40E_PRTTSYN_AUX_0_OUT_ENABLE | I40E_PRTTSYN_AUX_0_OUT_CLK_MOD)
+#define I40E_PTP_HALF_SECOND		500000000LL /* nano seconds */
+#define I40E_PTP_2_SEC_DELAY		2
+
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info ptp_caps;
 	struct sk_buff *ptp_tx_skb;
 	unsigned long ptp_tx_start;
 	struct hwtstamp_config tstamp_config;
 	struct timespec64 ptp_prev_hw_time;
+	struct work_struct ptp_pps_work;
+	struct work_struct ptp_extts0_work;
+	struct work_struct ptp_extts1_work;
 	ktime_t ptp_reset_start;
 	struct mutex tmreg_lock; /* Used to protect the SYSTIME registers. */
 	u32 ptp_adj_mult;
@@ -654,10 +728,14 @@ struct i40e_pf {
 	u32 tx_hwtstamp_skipped;
 	u32 rx_hwtstamp_cleared;
 	u32 latch_event_flags;
+	u64 ptp_pps_start;
+	u32 pps_delay;
 	spinlock_t ptp_rx_lock; /* Used to protect Rx timestamp registers. */
+	struct ptp_pin_desc ptp_pin[3];
 	unsigned long latch_events[4];
 	bool ptp_tx;
 	bool ptp_rx;
+	struct i40e_ptp_pins_settings *ptp_pins;
 	u16 rss_table_size; /* HW RSS table size */
 	u32 max_bw;
 	u32 min_bw;
@@ -1165,6 +1243,7 @@ void i40e_ptp_save_hw_time(struct i40e_pf *pf);
 void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
 void i40e_ptp_init(struct i40e_pf *pf);
 void i40e_ptp_stop(struct i40e_pf *pf);
+int i40e_ptp_alloc_pins(struct i40e_pf *pf);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
 i40e_status i40e_get_partition_bw_setting(struct i40e_pf *pf);
 i40e_status i40e_set_partition_bw_setting(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 630258e..de7b6f5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1561,6 +1561,7 @@ int i40e_del_mac_filter(struct i40e_vsi *vsi, const u8 *macaddr)
 static int i40e_set_mac(struct net_device *netdev, void *p)
 {
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct sockaddr addr_tmp = {0};
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
 	struct i40e_hw *hw = &pf->hw;
@@ -1591,8 +1592,11 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 	 * - Copy new address
 	 * - Add new address to MAC filter
 	 */
+
+	ether_addr_copy(addr_tmp.sa_data, netdev->dev_addr);
+
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
-	i40e_del_mac_filter(vsi, netdev->dev_addr);
+	i40e_del_mac_filter(vsi, addr_tmp.sa_data);
 	ether_addr_copy(netdev->dev_addr, addr->sa_data);
 	i40e_add_mac_filter(vsi, netdev->dev_addr);
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
@@ -2630,9 +2634,9 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 
 	for (v = 0; v < pf->num_alloc_vsi; v++) {
 		if (pf->vsi[v] &&
-		    (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED)) {
+		    (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED) &&
+		    !test_bit(__I40E_VSI_RELEASING, pf->vsi[v]->state)) {
 			int ret = i40e_sync_vsi_filters(pf->vsi[v]);
-
 			if (ret) {
 				/* come back and try again later */
 				set_bit(__I40E_MACVLAN_SYNC_PENDING,
@@ -4073,10 +4077,13 @@ static irqreturn_t i40e_intr(int irq, void *data)
 	if (icr0 & I40E_PFINT_ICR0_TIMESYNC_MASK) {
 		u32 prttsyn_stat = rd32(hw, I40E_PRTTSYN_STAT_0);
 
-		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK) {
-			icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
+		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_EVENT0_MASK)
+			schedule_work(&pf->ptp_extts0_work);
+
+		if (prttsyn_stat & I40E_PRTTSYN_STAT_0_TXTIME_MASK)
 			i40e_ptp_tx_hwtstamp(pf);
-		}
+
+		icr0 &= ~I40E_PFINT_ICR0_ENA_TIMESYNC_MASK;
 	}
 
 	/* If a critical error is pending we have no choice but to reset the
@@ -8115,7 +8122,8 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 		return -EOPNOTSUPP;
 
 	/* adding filter using src_port/src_ip is not supported at this stage */
-	if (filter->src_port || filter->src_ipv4 ||
+	if (filter->src_port ||
+	    (filter->src_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 	    !ipv6_addr_any(&filter->ip.v6.src_ip6))
 		return -EOPNOTSUPP;
 
@@ -8144,7 +8152,7 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 			cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_MAC_VLAN_PORT);
 		}
 
-	} else if (filter->dst_ipv4 ||
+	} else if ((filter->dst_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 		   !ipv6_addr_any(&filter->ip.v6.dst_ip6)) {
 		cld_filter.element.flags =
 				cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_IP_PORT);
@@ -12933,9 +12941,10 @@ out_err:
  * i40e_xdp_setup - add/remove an XDP program
  * @vsi: VSI to changed
  * @prog: XDP program
+ * @extack: netlink extended ack
  **/
-static int i40e_xdp_setup(struct i40e_vsi *vsi,
-			  struct bpf_prog *prog)
+static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
+			  struct netlink_ext_ack *extack)
 {
 	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
 	struct i40e_pf *pf = vsi->back;
@@ -12944,8 +12953,13 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	int i;
 
 	/* Don't allow frames that span over multiple buffers */
-	if (frame_size > vsi->rx_buf_len)
+	if (frame_size > vsi->rx_buf_len) {
+		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
+		dev_info(&pf->pdev->dev,
+			 "MTU of %u bytes is too large to enable XDP (maximum: %u bytes)\n",
+			 vsi->netdev->mtu, vsi->rx_buf_len);
 		return -EINVAL;
+	}
 
 	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
@@ -13254,7 +13268,7 @@ static int i40e_xdp(struct net_device *dev,
 
 	switch (xdp->command) {
 	case XDP_SETUP_PROG:
-		return i40e_xdp_setup(vsi, xdp->prog);
+		return i40e_xdp_setup(vsi, xdp->prog, xdp->extack);
 	case XDP_SETUP_XSK_POOL:
 		return i40e_xsk_pool_setup(vsi, xdp->xsk.pool,
 					   xdp->xsk.queue_id);
@@ -13289,8 +13303,6 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_set_vf_link_state	= i40e_ndo_set_vf_link_state,
 	.ndo_set_vf_spoofchk	= i40e_ndo_set_vf_spoofchk,
 	.ndo_set_vf_trust	= i40e_ndo_set_vf_trust,
-	.ndo_udp_tunnel_add	= udp_tunnel_nic_add_port,
-	.ndo_udp_tunnel_del	= udp_tunnel_nic_del_port,
 	.ndo_get_phys_port_id	= i40e_get_phys_port_id,
 	.ndo_fdb_add		= i40e_ndo_fdb_add,
 	.ndo_features_check	= i40e_features_check,
@@ -13776,6 +13788,7 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
 		return -ENODEV;
 	}
 
+	set_bit(__I40E_VSI_RELEASING, vsi->state);
 	uplink_seid = vsi->uplink_seid;
 	if (vsi->type != I40E_VSI_SRIOV) {
 		if (vsi->netdev_registered) {
@@ -15178,6 +15191,22 @@ err_switch_setup:
 }
 
 /**
+ * i40e_set_subsystem_device_id - set subsystem device id
+ * @hw: pointer to the hardware info
+ *
+ * Set PCI subsystem device id either from a pci_dev structure or
+ * a specific FW register.
+ **/
+static inline void i40e_set_subsystem_device_id(struct i40e_hw *hw)
+{
+	struct pci_dev *pdev = ((struct i40e_pf *)hw->back)->pdev;
+
+	hw->subsystem_device_id = pdev->subsystem_device ?
+		pdev->subsystem_device :
+		(ushort)(rd32(hw, I40E_PFPCI_SUBSYSID) & USHRT_MAX);
+}
+
+/**
  * i40e_probe - Device initialization routine
  * @pdev: PCI device information struct
  * @ent: entry in i40e_pci_tbl
@@ -15272,7 +15301,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	hw->device_id = pdev->device;
 	pci_read_config_byte(pdev, PCI_REVISION_ID, &hw->revision_id);
 	hw->subsystem_vendor_id = pdev->subsystem_vendor;
-	hw->subsystem_device_id = pdev->subsystem_device;
+	i40e_set_subsystem_device_id(hw);
 	hw->bus.device = PCI_SLOT(pdev->devfn);
 	hw->bus.func = PCI_FUNC(pdev->devfn);
 	hw->bus.bus_id = pdev->bus->number;
@@ -15447,6 +15476,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (is_valid_ether_addr(hw->mac.port_addr))
 		pf->hw_features |= I40E_HW_PORT_ID_VALID;
 
+	i40e_ptp_alloc_pins(pf);
 	pci_set_drvdata(pdev, pf);
 	pci_save_state(pdev);
 #ifdef CONFIG_I40E_DCB
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
