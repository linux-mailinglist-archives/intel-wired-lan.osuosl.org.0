Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1A33410BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 00:19:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4286C4EBDF;
	Thu, 18 Mar 2021 23:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7tsewgvg_fRw; Thu, 18 Mar 2021 23:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D7D44EBB8;
	Thu, 18 Mar 2021 23:19:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BCC71BF343
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 23:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65E2C81B6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 23:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRnRAbns18WQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Mar 2021 23:18:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 975D083CE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Mar 2021 23:18:59 +0000 (UTC)
IronPort-SDR: /r7c4Vb7KvImqZdZxcr0gntwyj4sqmBcMuXl8RxMReu0RiKRcQgo1MafFYaLTQsCD7/t3DHF1A
 48L2ejHwTzhw==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="176920009"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="176920009"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 16:18:58 -0700
IronPort-SDR: Zl7IpOcPeDvIMLwct1aJvl13OGWBdGWrQJlddWk6f4xecsxFLiRR3XpflAuIfW6V0MnnLpY/QW
 Kqf9s9rlJDPQ==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="406549328"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 16:18:56 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Mar 2021 16:18:52 -0700
Message-Id: <20210318231852.1796288-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next dev-queue v2 1/1] intel: clean up
 mismatched header comments
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

A bunch of header comments were showing warnings when compiling
with W=1. Fix them all at once. This changes only comments.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Warning examples look like this:
make W=1 M=drivers/net/ethernet/intel
.../iavf_fdir.c:744: warning: expecting prototype for iavf_fdir_fltr(). Prototype was for iavf_find_fdir_fltr_by_loc() instead
---
 drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c |  4 ++--
 .../net/ethernet/intel/fm10k/fm10k_debugfs.c   |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_main.c  |  4 ++--
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c   |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c  |  6 +++---
 drivers/net/ethernet/intel/i40e/i40e_ddp.c     |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c |  4 ++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c    |  6 +++---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c     |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_ptp.c     |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c     |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c    |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c    |  2 +-
 .../net/ethernet/intel/iavf/iavf_virtchnl.c    |  4 ++--
 drivers/net/ethernet/intel/igb/e1000_mbx.c     |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c      |  6 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c |  2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_common.c    | 15 +++++++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c  |  4 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c   |  5 +++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c  |  2 +-
 drivers/net/ethernet/intel/ixgbevf/vf.c        | 18 +++++++++++++-----
 27 files changed, 58 insertions(+), 50 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c b/drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c
index c45315472245..86397c564dfc 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_dcbnl.c
@@ -105,7 +105,7 @@ static int fm10k_dcbnl_ieee_setpfc(struct net_device *dev, struct ieee_pfc *pfc)
 }
 
 /**
- * fm10k_dcbnl_ieee_getdcbx - get the DCBX configuration for the device
+ * fm10k_dcbnl_getdcbx - get the DCBX configuration for the device
  * @dev: netdev interface for the device
  *
  * Returns that we support only IEEE DCB for this interface
@@ -116,7 +116,7 @@ static u8 fm10k_dcbnl_getdcbx(struct net_device __always_unused *dev)
 }
 
 /**
- * fm10k_dcbnl_ieee_setdcbx - get the DCBX configuration for the device
+ * fm10k_dcbnl_setdcbx - get the DCBX configuration for the device
  * @dev: netdev interface for the device
  * @mode: new mode for this device
  *
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c b/drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c
index 1d27b2fb23af..5c77054d67c6 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_debugfs.c
@@ -185,7 +185,7 @@ void fm10k_dbg_q_vector_init(struct fm10k_q_vector *q_vector)
 }
 
 /**
- * fm10k_dbg_free_q_vector_dir - setup debugfs for the q_vectors
+ * fm10k_dbg_q_vector_exit - setup debugfs for the q_vectors
  * @q_vector: q_vector to allocate directories for
  **/
 void fm10k_dbg_q_vector_exit(struct fm10k_q_vector *q_vector)
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 247f44f4cb30..3362f26d7f99 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -1774,7 +1774,7 @@ static void fm10k_free_q_vectors(struct fm10k_intfc *interface)
 }
 
 /**
- * f10k_reset_msix_capability - reset MSI-X capability
+ * fm10k_reset_msix_capability - reset MSI-X capability
  * @interface: board private structure to initialize
  *
  * Reset the MSI-X capability back to its starting state
@@ -1787,7 +1787,7 @@ static void fm10k_reset_msix_capability(struct fm10k_intfc *interface)
 }
 
 /**
- * f10k_init_msix_capability - configure MSI-X capability
+ * fm10k_init_msix_capability - configure MSI-X capability
  * @interface: board private structure to initialize
  *
  * Attempt to configure the interrupts using the best available
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 3e970e20695d..30ca9ee1900b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -692,7 +692,7 @@ static bool fm10k_mbx_tx_complete(struct fm10k_mbx_info *mbx)
 }
 
 /**
- *  fm10k_mbx_deqeueue_rx - Dequeues the message from the head in the Rx FIFO
+ *  fm10k_mbx_dequeue_rx - Dequeues the message from the head in the Rx FIFO
  *  @hw: pointer to hardware structure
  *  @mbx: pointer to mailbox
  *
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index c0780c3624c8..af1b0cde3670 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1417,7 +1417,7 @@ s32 fm10k_iov_msg_lport_state_pf(struct fm10k_hw *hw, u32 **results,
 }
 
 /**
- *  fm10k_update_stats_hw_pf - Updates hardware related statistics of PF
+ *  fm10k_update_hw_stats_pf - Updates hardware related statistics of PF
  *  @hw: pointer to hardware structure
  *  @stats: pointer to the stats structure to update
  *
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index abaa36538ab1..dd65aaa2207f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -2220,7 +2220,7 @@ i40e_status i40e_aq_set_vsi_vlan_promisc(struct i40e_hw *hw,
 }
 
 /**
- * i40e_get_vsi_params - get VSI configuration info
+ * i40e_aq_get_vsi_params - get VSI configuration info
  * @hw: pointer to the hw struct
  * @vsi_ctx: pointer to a vsi context struct
  * @cmd_details: pointer to command details structure or NULL
@@ -2474,7 +2474,7 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
 }
 
 /**
- * i40e_updatelink_status - update status of the HW network link
+ * i40e_update_link_info - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
 noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
@@ -4947,7 +4947,7 @@ u8 i40e_get_phy_address(struct i40e_hw *hw, u8 dev_num)
 }
 
 /**
- * i40e_blink_phy_led
+ * i40e_blink_phy_link_led
  * @hw: pointer to the HW structure
  * @time: time how long led will blinks in secs
  * @interval: gap between LED on and off in msecs
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ddp.c b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
index 5e08f100c413..e1069ae658ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ddp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ddp.c
@@ -77,7 +77,7 @@ static bool i40e_ddp_profiles_overlap(struct i40e_profile_info *new,
 }
 
 /**
- * i40e_ddp_does_profiles_ - checks if DDP overlaps with existing one.
+ * i40e_ddp_does_profile_overlap - checks if DDP overlaps with existing one.
  * @hw: HW data structure
  * @pinfo: DDP profile information structure
  *
diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index d7c13ca9be7d..e8230da29f05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -651,7 +651,7 @@ static void i40e_dbg_dump_vsi_no_seid(struct i40e_pf *pf)
 }
 
 /**
- * i40e_dbg_dump_stats - handles dump stats write into command datum
+ * i40e_dbg_dump_eth_stats - handles dump stats write into command datum
  * @pf: the i40e_pf created in command write
  * @estats: the eth stats structure to be dumped
  **/
@@ -1638,7 +1638,7 @@ static const struct file_operations i40e_dbg_command_fops = {
 static char i40e_dbg_netdev_ops_buf[256] = "";
 
 /**
- * i40e_dbg_netdev_ops - read for netdev_ops datum
+ * i40e_dbg_netdev_ops_read - read for netdev_ops datum
  * @filp: the opened file
  * @buffer: where to write the data for the user to read
  * @count: the size of the user's buffer
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 49aff236dc2a..9a04c77d664e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -212,7 +212,7 @@ static void __i40e_add_stat_strings(u8 **p, const struct i40e_stats stats[],
 }
 
 /**
- * 40e_add_stat_strings - copy stat strings into ethtool buffer
+ * i40e_add_stat_strings - copy stat strings into ethtool buffer
  * @p: ethtool supplied buffer
  * @stats: stat definitions array
  *
diff --git a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
index a3da422ab05b..d6e92ecddfbd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_lan_hmc.c
@@ -511,7 +511,7 @@ i40e_status i40e_configure_lan_hmc(struct i40e_hw *hw,
 }
 
 /**
- * i40e_delete_hmc_object - remove hmc objects
+ * i40e_delete_lan_hmc_object - remove hmc objects
  * @hw: pointer to the HW structure
  * @info: pointer to i40e_hmc_delete_obj_info struct
  *
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d0feb47c8b48..094fcf6ddc10 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2031,7 +2031,7 @@ static void i40e_undo_add_filter_entries(struct i40e_vsi *vsi,
 }
 
 /**
- * i40e_next_entry - Get the next non-broadcast filter from a list
+ * i40e_next_filter - Get the next non-broadcast filter from a list
  * @next: pointer to filter in list
  *
  * Returns the next non-broadcast filter in the list. Required so that we
@@ -5216,7 +5216,7 @@ static u8 i40e_pf_get_num_tc(struct i40e_pf *pf)
 }
 
 /**
- * i40e_pf_get_pf_tc_map - Get bitmap for enabled traffic classes
+ * i40e_pf_get_tc_map - Get bitmap for enabled traffic classes
  * @pf: PF being queried
  *
  * Return a bitmap for enabled traffic classes for this PF.
@@ -9481,7 +9481,7 @@ static void i40e_fdir_flush_and_replay(struct i40e_pf *pf)
 }
 
 /**
- * i40e_get_current_atr_count - Get the count of total FD ATR filters programmed
+ * i40e_get_current_atr_cnt - Get the count of total FD ATR filters programmed
  * @pf: board private structure
  **/
 u32 i40e_get_current_atr_cnt(struct i40e_pf *pf)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index e5cfd0178b7c..a25be9c73333 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -4,7 +4,7 @@
 #include "i40e_prototype.h"
 
 /**
- * i40e_init_nvm_ops - Initialize NVM function pointers
+ * i40e_init_nvm - Initialize NVM function pointers
  * @hw: pointer to the HW structure
  *
  * Setup the function pointers and the NVM info structure. Should be called
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 9379fb6b8fd4..20dbac4000f2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -638,7 +638,7 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
 }
 
 /**
- * i40e_ptp_update_latch_events - Read I40E_PRTTSYN_STAT_1 and latch events
+ * i40e_ptp_get_rx_events - Read I40E_PRTTSYN_STAT_1 and latch events
  * @pf: the PF data structure
  *
  * This function reads I40E_PRTTSYN_STAT_1 and updates the corresponding timers
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 5747a99122fb..8b5820921377 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3333,7 +3333,7 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 }
 
 /**
- * i40e_create_tx_ctx Build the Tx context descriptor
+ * i40e_create_tx_ctx - Build the Tx context descriptor
  * @tx_ring:  ring to create the descriptor on
  * @cd_type_cmd_tso_mss: Quad Word 1
  * @cd_tunneling: Quad Word 0 - bits 0-31
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index edddaf034638..d89c22347d9d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -628,7 +628,7 @@ void i40e_xsk_clean_rx_ring(struct i40e_ring *rx_ring)
 }
 
 /**
- * i40e_xsk_clean_xdp_ring - Clean the XDP Tx ring on shutdown
+ * i40e_xsk_clean_tx_ring - Clean the XDP Tx ring on shutdown
  * @tx_ring: XDP Tx ring
  **/
 void i40e_xsk_clean_tx_ring(struct i40e_ring *tx_ring)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 55a5dfb25621..d1d174765cea 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2558,7 +2558,7 @@ static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_validate_channel_config - validate queue mapping info
+ * iavf_validate_ch_config - validate queue mapping info
  * @adapter: board private structure
  * @mqprio_qopt: queue parameters
  *
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 23a51ebe13c5..3525eab8e9f9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -2105,7 +2105,7 @@ static int iavf_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 }
 
 /**
- * iavf_create_tx_ctx Build the Tx context descriptor
+ * iavf_create_tx_ctx - Build the Tx context descriptor
  * @tx_ring:  ring to create the descriptor on
  * @cd_type_cmd_tso_mss: Quad Word 1
  * @cd_tunneling: Quad Word 0 - bits 0-31
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 3d7643ea8d46..ab959aa71dc6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1007,7 +1007,7 @@ iavf_set_adapter_link_speed_from_vpe(struct iavf_adapter *adapter,
 }
 
 /**
- * iavf_enable_channel
+ * iavf_enable_channels
  * @adapter: adapter structure
  *
  * Request that the PF enable channels as specified by
@@ -1048,7 +1048,7 @@ void iavf_enable_channels(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_disable_channel
+ * iavf_disable_channels
  * @adapter: adapter structure
  *
  * Request that the PF disable channels that are configured
diff --git a/drivers/net/ethernet/intel/igb/e1000_mbx.c b/drivers/net/ethernet/intel/igb/e1000_mbx.c
index 33cceb77e960..29383112bc19 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mbx.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mbx.c
@@ -441,7 +441,7 @@ static s32 igb_read_mbx_pf(struct e1000_hw *hw, u32 *msg, u16 size,
 }
 
 /**
- *  e1000_init_mbx_params_pf - set initial values for pf mailbox
+ *  igb_init_mbx_params_pf - set initial values for pf mailbox
  *  @hw: pointer to the HW structure
  *
  *  Initializes the hw->mbx struct to correct values for pf mailbox
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index c054e1955de2..6a0c04ff9bf7 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2035,7 +2035,7 @@ static void igb_power_down_link(struct igb_adapter *adapter)
 }
 
 /**
- * Detect and switch function for Media Auto Sense
+ * igb_check_swap_media -  Detect and switch function for Media Auto Sense
  * @adapter: address of the board private structure
  **/
 static void igb_check_swap_media(struct igb_adapter *adapter)
@@ -4027,7 +4027,7 @@ static int igb_sw_init(struct igb_adapter *adapter)
 }
 
 /**
- *  igb_open - Called when a network interface is made active
+ *  __igb_open - Called when a network interface is made active
  *  @netdev: network interface device structure
  *  @resuming: indicates whether we are in a resume call
  *
@@ -4145,7 +4145,7 @@ int igb_open(struct net_device *netdev)
 }
 
 /**
- *  igb_close - Disables a network interface
+ *  __igb_close - Disables a network interface
  *  @netdev: network interface device structure
  *  @suspending: indicates we are in a suspend call
  *
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index cdfff510a27b..e324e42fab2d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -1351,7 +1351,7 @@ static u32 ixgbe_atr_compute_sig_hash_82599(union ixgbe_atr_hash_dword input,
 }
 
 /**
- *  ixgbe_atr_add_signature_filter_82599 - Adds a signature hash filter
+ *  ixgbe_fdir_add_signature_filter_82599 - Adds a signature hash filter
  *  @hw: pointer to hardware structure
  *  @input: unique input dword
  *  @common: compressed common input dword
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 8d5a01be1d99..03ccbe6b66d2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -2708,7 +2708,7 @@ s32 ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
 }
 
 /**
- *  ixgbe_enable_rx_buff - Enables the receive data path
+ *  ixgbe_enable_rx_buff_generic - Enables the receive data path
  *  @hw: pointer to hardware structure
  *
  *  Enables the receive data path
@@ -3030,14 +3030,14 @@ s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 }
 
 /**
+ *  ixgbe_set_vmdq_san_mac_generic - Associate VMDq pool index with a rx address
+ *  @hw: pointer to hardware struct
+ *  @vmdq: VMDq pool index
+ *
  *  This function should only be involved in the IOV mode.
  *  In IOV mode, Default pool is next pool after the number of
  *  VFs advertized and not 0.
  *  MPSAR table needs to be updated for SAN_MAC RAR [hw->mac.san_mac_rar_index]
- *
- *  ixgbe_set_vmdq_san_mac - Associate default VMDq pool index with a rx address
- *  @hw: pointer to hardware struct
- *  @vmdq: VMDq pool index
  **/
 s32 ixgbe_set_vmdq_san_mac_generic(struct ixgbe_hw *hw, u32 vmdq)
 {
@@ -3897,7 +3897,7 @@ static s32 ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
 }
 
 /**
- *  ixgbe_get_thermal_sensor_data - Gathers thermal sensor data
+ *  ixgbe_get_thermal_sensor_data_generic - Gathers thermal sensor data
  *  @hw: pointer to hardware structure
  *
  *  Returns the thermal sensor data structure
@@ -4055,8 +4055,7 @@ void ixgbe_get_orom_version(struct ixgbe_hw *hw,
 }
 
 /**
- *  ixgbe_get_oem_prod_version Etrack ID from EEPROM
- *
+ *  ixgbe_get_oem_prod_version - Etrack ID from EEPROM
  *  @hw: pointer to hardware structure
  *  @nvm_ver: pointer to output structure
  *
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 3ba5c2faea54..834488c0c77b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -225,7 +225,7 @@ static s32 ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
 }
 
 /**
- * ixgbe_check_from_parent - Determine whether PCIe info should come from parent
+ * ixgbe_pcie_from_parent - Determine whether PCIe info should come from parent
  * @hw: hw specific details
  *
  * This function is used by probe to determine whether a device's PCI-Express
@@ -6164,7 +6164,7 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 }
 
 /**
- * ixgbe_eee_capable - helper function to determine EEE support on X550
+ * ixgbe_set_eee_capable - helper function to determine EEE support on X550
  * @adapter: board private structure
  */
 static void ixgbe_set_eee_capable(struct ixgbe_adapter *adapter)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index cb685e917b0c..24aa97f993ca 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -464,12 +464,13 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 }
 
 /**
- *  ixgbe_read_phy_mdi - Reads a value from a specified PHY register without
- *  the SWFW lock
+ *  ixgbe_read_phy_reg_mdi - read PHY register
  *  @hw: pointer to hardware structure
  *  @reg_addr: 32 bit address of PHY register to read
  *  @device_type: 5 bit device type
  *  @phy_data: Pointer to read data from PHY register
+ *
+ *  Reads a value from a specified PHY register without the SWFW lock
  **/
 s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
 		       u16 *phy_data)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index 4b93ba149ec5..d5cfb51ff648 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -701,7 +701,7 @@ static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
 }
 
 /**
- * ixgbe_release_nvm_semaphore - Release hardware semaphore
+ * ixgbe_release_swfw_sync_semaphore - Release hardware semaphore
  * @hw: pointer to hardware structure
  *
  * This function clears hardware semaphore bits.
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 5e339afa682a..9724ffb16518 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -1248,7 +1248,7 @@ static s32 ixgbe_get_bus_info_X550em(struct ixgbe_hw *hw)
 }
 
 /**
- * ixgbe_fw_recovery_mode - Check FW NVM recovery mode
+ * ixgbe_fw_recovery_mode_X550 - Check FW NVM recovery mode
  * @hw: pointer t hardware structure
  *
  * Returns true if in FW NVM recovery mode.
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index bfe6dfcec4ab..5fc347abab3c 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -121,9 +121,11 @@ static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
 }
 
 /**
+ * ixgbevf_hv_reset_hw_vf - reset via Hyper-V
+ * @hw: pointer to private hardware struct
+ *
  * Hyper-V variant; the VF/PF communication is through the PCI
  * config space.
- * @hw: pointer to private hardware struct
  */
 static s32 ixgbevf_hv_reset_hw_vf(struct ixgbe_hw *hw)
 {
@@ -513,9 +515,11 @@ static s32 ixgbevf_update_mc_addr_list_vf(struct ixgbe_hw *hw,
 }
 
 /**
- * Hyper-V variant - just a stub.
+ * ixgbevf_hv_update_mc_addr_list_vf - stub
  * @hw: unused
  * @netdev: unused
+ *
+ * Hyper-V variant - just a stub.
  */
 static s32 ixgbevf_hv_update_mc_addr_list_vf(struct ixgbe_hw *hw,
 					     struct net_device *netdev)
@@ -564,9 +568,11 @@ static s32 ixgbevf_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 }
 
 /**
- * Hyper-V variant - just a stub.
+ * ixgbevf_hv_update_xcast_mode - stub
  * @hw: unused
  * @xcast_mode: unused
+ *
+ * Hyper-V variant - just a stub.
  */
 static s32 ixgbevf_hv_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 {
@@ -608,7 +614,7 @@ static s32 ixgbevf_set_vfta_vf(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 }
 
 /**
- * Hyper-V variant - just a stub.
+ * ixgbevf_hv_set_vfta_vf - * Hyper-V variant - just a stub.
  * @hw: unused
  * @vlan: unused
  * @vind: unused
@@ -726,11 +732,13 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
 }
 
 /**
- * Hyper-V variant; there is no mailbox communication.
+ * ixgbevf_hv_check_mac_link_vf - check link
  * @hw: pointer to private hardware struct
  * @speed: pointer to link speed
  * @link_up: true is link is up, false otherwise
  * @autoneg_wait_to_complete: unused
+ *
+ * Hyper-V variant; there is no mailbox communication.
  */
 static s32 ixgbevf_hv_check_mac_link_vf(struct ixgbe_hw *hw,
 					ixgbe_link_speed *speed,

base-commit: 1d6c0c9c33e8a72d75b254af8247cdc1cd203345
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
