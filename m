Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC5E72E558
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 16:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C54C61184;
	Tue, 13 Jun 2023 14:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C54C61184
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686665752;
	bh=bxE14YiEHDIxTsry5Pxz+Y4wTc7zlPMmk5Ps1VijO8c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dljXEmMEcBnHUpT6vSCupiUd2gTocZNM1uYpmbl8XrKoo7KMnpZ8ZXQRR0zKL2eLB
	 dP8f1zIugxwVAZZ6PbWAydKUmN35z0KpoTFjLGJ5ck+qrQfY8PIhOZPd9JMaPXMCsP
	 TSxcypvhOn9mMe+rOH74QJNkpne97aUs1sGSkNyxwhAKvoBn56lKmr1/Dj3wSReE4w
	 T//J2yixAjjizxarGXU3ChzlpGMPB9KYDIeIR1tg170XVue9qNyY6d253w1RG5LEvY
	 QTkt0lhBIkAEO2iEWT//P+YP63JGBXdnEo9tI3Y/4OgumuV7caUxU0ZyEuIc+jo4xl
	 A5P9cYGVivcNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTN-2yNh7VA4; Tue, 13 Jun 2023 14:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41E2E6101E;
	Tue, 13 Jun 2023 14:15:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41E2E6101E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07CB01BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E25DA827DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E25DA827DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrUMmMS8zSr3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 14:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D35C982333
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D35C982333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="337981478"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337981478"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 07:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="856105033"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="856105033"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2023 07:15:39 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E332C35429;
 Tue, 13 Jun 2023 15:15:38 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 10:12:53 -0400
Message-Id: <20230613141253.57811-3-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230613141253.57811-1-przemyslaw.kitszel@intel.com>
References: <20230613141253.57811-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686665741; x=1718201741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fXbqSxpn9AGXpGn4aK8oz7MZ9LkP4yXAnvA+ZTILu5U=;
 b=Wdr4yRv6nOCb6rINqRAcF5rLIqF+p5oAjlZpA44F8kK9uUx44575jBv3
 xrWPTzNupWtGFFaJc4ctYrdtU02lZCaxlAtASTmU93kUIjkGH9jN86Lj7
 atd68mPVzWQVfGS1lTBcRSot9g9N6Ig/k2MPCsFJvET7HeXzG3K7ivY/I
 tZvutiXmHTt52X2mLNBlhGeKfJ1rqksJhsglM8hy235Z72+sm3ce3yIWK
 CijUVZ7TmhTPrx7BKNqwy1DqJ05mm8HnkmAwlbogOdn1z2eda4gLEDsD7
 tCzEC3ljuSNnTC3OmLNZoCvrifa7J0pszVmq9zTvDi4B49upNrevVvEWy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wdr4yRv6
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] iavf: make functions static
 where possible
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make static all the possible funnctions.

Move iavf_force_wb() up to avoid forward declaration.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h      | 10 -----
 drivers/net/ethernet/intel/iavf/iavf_main.c | 14 +++----
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 ++++++++++-----------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h |  4 --
 4 files changed, 28 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 8f29af80de8c..8cbdebc5b698 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -526,9 +526,6 @@ void iavf_schedule_finish_config(struct iavf_adapter *adapter);
 void iavf_reset(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
 void iavf_update_stats(struct iavf_adapter *adapter);
-void iavf_reset_interrupt_capability(struct iavf_adapter *adapter);
-int iavf_init_interrupt_scheme(struct iavf_adapter *adapter);
-void iavf_irq_enable_queues(struct iavf_adapter *adapter);
 void iavf_free_all_tx_resources(struct iavf_adapter *adapter);
 void iavf_free_all_rx_resources(struct iavf_adapter *adapter);
 
@@ -582,12 +579,6 @@ void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
 void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
-int iavf_replace_primary_mac(struct iavf_adapter *adapter,
-			     const u8 *new_mac);
-void
-iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
-			       netdev_features_t prev_features,
-			       netdev_features_t features);
 void iavf_add_fdir_filter(struct iavf_adapter *adapter);
 void iavf_del_fdir_filter(struct iavf_adapter *adapter);
 void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
@@ -595,5 +586,4 @@ void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
 int iavf_wait_for_reset(struct iavf_adapter *adapter);
-int iavf_lock_timeout(struct mutex *lock, unsigned int msecs);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index adb9d3fe1a28..a61d1692c91d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -284,7 +284,7 @@ void iavf_free_virt_mem(struct iavf_hw *hw, struct iavf_virt_mem *mem)
  *
  * Returns 0 on success, negative on failure
  **/
-int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
+static int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
 {
 	unsigned int wait, delay = 10;
 
@@ -395,7 +395,7 @@ static void iavf_irq_disable(struct iavf_adapter *adapter)
  * iavf_irq_enable_queues - Enable interrupt for all queues
  * @adapter: board private structure
  **/
-void iavf_irq_enable_queues(struct iavf_adapter *adapter)
+static void iavf_irq_enable_queues(struct iavf_adapter *adapter)
 {
 	struct iavf_hw *hw = &adapter->hw;
 	int i;
@@ -1036,8 +1036,8 @@ struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
  *
  * Do not call this with mac_vlan_list_lock!
  **/
-int iavf_replace_primary_mac(struct iavf_adapter *adapter,
-			     const u8 *new_mac)
+static int iavf_replace_primary_mac(struct iavf_adapter *adapter,
+				    const u8 *new_mac)
 {
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *new_f;
@@ -1888,7 +1888,7 @@ static void iavf_free_q_vectors(struct iavf_adapter *adapter)
  * @adapter: board private structure
  *
  **/
-void iavf_reset_interrupt_capability(struct iavf_adapter *adapter)
+static void iavf_reset_interrupt_capability(struct iavf_adapter *adapter)
 {
 	if (!adapter->msix_entries)
 		return;
@@ -1903,7 +1903,7 @@ void iavf_reset_interrupt_capability(struct iavf_adapter *adapter)
  * @adapter: board private structure to initialize
  *
  **/
-int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
+static int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
 {
 	int err;
 
@@ -2272,7 +2272,7 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
  * the watchdog if any changes are requested to expedite the request via
  * virtchnl.
  **/
-void
+static void
 iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
 			       netdev_features_t prev_features,
 			       netdev_features_t features)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index e989feda133c..8c5f6096b002 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -54,7 +54,7 @@ static void iavf_unmap_and_free_tx_resource(struct iavf_ring *ring,
  * iavf_clean_tx_ring - Free any empty Tx buffers
  * @tx_ring: ring to be cleaned
  **/
-void iavf_clean_tx_ring(struct iavf_ring *tx_ring)
+static void iavf_clean_tx_ring(struct iavf_ring *tx_ring)
 {
 	unsigned long bi_size;
 	u16 i;
@@ -110,7 +110,7 @@ void iavf_free_tx_resources(struct iavf_ring *tx_ring)
  * Since there is no access to the ring head register
  * in XL710, we need to use our local copies
  **/
-u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
+static u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
 {
 	u32 head, tail;
 
@@ -127,6 +127,24 @@ u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw)
 	return 0;
 }
 
+/**
+ * iavf_force_wb - Issue SW Interrupt so HW does a wb
+ * @vsi: the VSI we care about
+ * @q_vector: the vector on which to force writeback
+ **/
+static void iavf_force_wb(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector)
+{
+	u32 val = IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
+		  IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK | /* set noitr */
+		  IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_MASK |
+		  IAVF_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_MASK
+		  /* allow 00 to be written to the index */;
+
+	wr32(&vsi->back->hw,
+	     IAVF_VFINT_DYN_CTLN1(q_vector->reg_idx),
+	     val);
+}
+
 /**
  * iavf_detect_recover_hung - Function to detect and recover hung_queues
  * @vsi:  pointer to vsi struct with tx queues
@@ -352,25 +370,6 @@ static void iavf_enable_wb_on_itr(struct iavf_vsi *vsi,
 	q_vector->arm_wb_state = true;
 }
 
-/**
- * iavf_force_wb - Issue SW Interrupt so HW does a wb
- * @vsi: the VSI we care about
- * @q_vector: the vector  on which to force writeback
- *
- **/
-void iavf_force_wb(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector)
-{
-	u32 val = IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
-		  IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK | /* set noitr */
-		  IAVF_VFINT_DYN_CTLN1_SWINT_TRIG_MASK |
-		  IAVF_VFINT_DYN_CTLN1_SW_ITR_INDX_ENA_MASK
-		  /* allow 00 to be written to the index */;
-
-	wr32(&vsi->back->hw,
-	     IAVF_VFINT_DYN_CTLN1(q_vector->reg_idx),
-	     val);
-}
-
 static inline bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
 					struct iavf_ring_container *rc)
 {
@@ -687,7 +686,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
  * iavf_clean_rx_ring - Free Rx buffers
  * @rx_ring: ring to be cleaned
  **/
-void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
+static void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
 {
 	unsigned long bi_size;
 	u16 i;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
index 2624bf6d009e..7e6ee32d19b6 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
@@ -442,15 +442,11 @@ static inline unsigned int iavf_rx_pg_order(struct iavf_ring *ring)
 
 bool iavf_alloc_rx_buffers(struct iavf_ring *rxr, u16 cleaned_count);
 netdev_tx_t iavf_xmit_frame(struct sk_buff *skb, struct net_device *netdev);
-void iavf_clean_tx_ring(struct iavf_ring *tx_ring);
-void iavf_clean_rx_ring(struct iavf_ring *rx_ring);
 int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring);
 int iavf_setup_rx_descriptors(struct iavf_ring *rx_ring);
 void iavf_free_tx_resources(struct iavf_ring *tx_ring);
 void iavf_free_rx_resources(struct iavf_ring *rx_ring);
 int iavf_napi_poll(struct napi_struct *napi, int budget);
-void iavf_force_wb(struct iavf_vsi *vsi, struct iavf_q_vector *q_vector);
-u32 iavf_get_tx_pending(struct iavf_ring *ring, bool in_sw);
 void iavf_detect_recover_hung(struct iavf_vsi *vsi);
 int __iavf_maybe_stop_tx(struct iavf_ring *tx_ring, int size);
 bool __iavf_chk_linearize(struct sk_buff *skb);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
