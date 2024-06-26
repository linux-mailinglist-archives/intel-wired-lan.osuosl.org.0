Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFC8917D34
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 12:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 094B180B1D;
	Wed, 26 Jun 2024 10:04:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9sXaOdRLRwNG; Wed, 26 Jun 2024 10:04:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70D8F80B35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719396276;
	bh=/CH6THrkuHCmUbKsAnpfylNEiM9FRdKwyQ8p4gmGbmM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CM64wRGKDsF1Hw9HhVw9rMxjw5DwtolSjjEi444Nd3k+bGHkMWX7dkUV2jAHfjjbc
	 3zQNdYKdWHyG/1k6KVHKLfUaVxD059D+9p2AjC4nEBLUjd6GwHDiSLpci+6EQv1KOJ
	 mMER1IMSWkkBqh06EVBniODx93aw9VsVm8t9MP+aG+5TZlbQq1bz0azXMqa0216jOt
	 KE5a2ujq9eQdxV+5V+PbVVwUpWsRsoRusGgOT9OwiNsVlLTvtGWMveTulAuJXmEUoE
	 AT031VNPRH0edz81Gtkwus7vrJkr/clw8zOIVf5CME09SG9g1UhZqemnyligP21kPJ
	 edz1y+o5MxgGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70D8F80B35;
	Wed, 26 Jun 2024 10:04:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A52381BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90BD680AD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyxhu-sO3bZF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 10:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 81E2180AB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81E2180AB6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81E2180AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 10:04:29 +0000 (UTC)
X-CSE-ConnectionGUID: 1vWSw1FMSa6wQ1Ix9u7k2Q==
X-CSE-MsgGUID: Snbm86UZTrKE846/qoMjDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27145099"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="27145099"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 03:04:29 -0700
X-CSE-ConnectionGUID: mhdy4vsrR1yeufKp9sbErQ==
X-CSE-MsgGUID: rcymY2ztQlC+myW7AqpQuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="67162102"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa002.fm.intel.com with ESMTP; 26 Jun 2024 03:04:28 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2024 12:03:06 +0200
Message-ID: <20240626100307.64365-4-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626100307.64365-1-sergey.temerkhanov@intel.com>
References: <20240626100307.64365-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719396269; x=1750932269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OJMGntKl5KRQxI8fYBfWeblhAiI53uCQsT5F72yJvTQ=;
 b=U7NV+M1oDHm/KHX0NLDG317HBv0jlTd4U/VS1HCZ+iamS5P8nffi+Gc8
 iGhQeKIS2SrBA/WHBj5RxSZ7Y5SW0NEDMV6oEddWg1l1weMrnPISnnwP+
 BH4vu3xioR4FrlcdlkI6DuWQ9fOBKR8YJHNrI0FS8YGVIxPFoabg8YlFt
 cTFQfAKW6fSFV86kXXccCQXzhDnsKmRUPSQ5IFbqhMuPluIjfFFTChv2+
 b5Dn15vXMu469OcLJf0sc9ZzELLCu5f2A0pdQ7b+1ujmhK2c5CKm39V5Z
 74DJme8mPyxxoNmNE/9pFLVYKq/IOR1qeKn/YTtVZ6eZl6j6F6VcKATes
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U7NV+M1o
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/4] ice: Use ice_adapter for
 PTP shared data instead of auxdev
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

- Use struct ice_adapter to hold shared PTP data and control PTP
related actions instead of auxbus. This allows significant code
simplification and faster access to the container fields used in
the PTP support code.

- Move the PTP port list to the ice_adapter container to simplify
the code and avoid race conditions which could occur due to the
synchronous nature of the initialization/access and
certain memory saving can be achieved by moving PTP data into
the ice_adapter itself.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.c |  6 ++
 drivers/net/ethernet/intel/ice/ice_adapter.h | 21 +++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 79 +++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h     | 24 +-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |  5 ++
 5 files changed, 92 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index ad84d8ad49a6..f3e195974a8e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -40,11 +40,17 @@ static struct ice_adapter *ice_adapter_new(void)
 	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
 	refcount_set(&adapter->refcount, 1);
 
+	mutex_init(&adapter->ports.lock);
+	INIT_LIST_HEAD(&adapter->ports.ports);
+
 	return adapter;
 }
 
 static void ice_adapter_free(struct ice_adapter *adapter)
 {
+	WARN_ON(!list_empty(&adapter->ports.ports));
+	mutex_destroy(&adapter->ports.lock);
+
 	kfree(adapter);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index 9d11014ec02f..45a42109ad3b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -4,22 +4,41 @@
 #ifndef _ICE_ADAPTER_H_
 #define _ICE_ADAPTER_H_
 
+#include <linux/types.h>
 #include <linux/spinlock_types.h>
 #include <linux/refcount_types.h>
 
 struct pci_dev;
+struct ice_pf;
+
+/**
+ * struct ice_port_list - data used to store the list of adapter ports
+ *
+ * This structure contains data used to maintain a list of adapter ports
+ *
+ * @ports: list of ports
+ * @lock: protect access to the ports list
+ */
+struct ice_port_list {
+	struct list_head ports;
+	/* To synchronize the ports list operations */
+	struct mutex lock;
+};
 
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
  * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
  *                        register of the PTP clock.
  * @refcount: Reference count. struct ice_pf objects hold the references.
+ * @ctrl_pf: Control PF of the adapter
  */
 struct ice_adapter {
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
-
 	refcount_t refcount;
+
+	struct ice_pf *ctrl_pf;
+	struct ice_port_list ports;
 };
 
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 8f9a449a851c..806dc666a43d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -821,8 +821,8 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 	struct ice_ptp_port *port;
 	unsigned int i;
 
-	mutex_lock(&pf->ptp.ports_owner.lock);
-	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member) {
+	mutex_lock(&pf->adapter->ports.lock);
+	list_for_each_entry(port, &pf->adapter->ports.ports, list_node) {
 		struct ice_ptp_tx *tx = &port->tx;
 
 		if (!tx || !tx->init)
@@ -830,7 +830,7 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 
 		ice_ptp_process_tx_tstamp(tx);
 	}
-	mutex_unlock(&pf->ptp.ports_owner.lock);
+	mutex_unlock(&pf->adapter->ports.lock);
 
 	for (i = 0; i < ICE_GET_QUAD_NUM(pf->hw.ptp.num_lports); i++) {
 		u64 tstamp_ready;
@@ -995,7 +995,7 @@ ice_ptp_flush_all_tx_tracker(struct ice_pf *pf)
 {
 	struct ice_ptp_port *port;
 
-	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member)
+	list_for_each_entry(port, &pf->adapter->ports.ports, list_node)
 		ice_ptp_flush_tx_tracker(ptp_port_to_pf(port), &port->tx);
 }
 
@@ -1592,10 +1592,10 @@ static void ice_ptp_restart_all_phy(struct ice_pf *pf)
 {
 	struct list_head *entry;
 
-	list_for_each(entry, &pf->ptp.ports_owner.ports) {
+	list_for_each(entry, &pf->adapter->ports.ports) {
 		struct ice_ptp_port *port = list_entry(entry,
 						       struct ice_ptp_port,
-						       list_member);
+						       list_node);
 
 		if (port->link_up)
 			ice_ptp_port_phy_restart(port);
@@ -2912,6 +2912,44 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
 }
 
+static int ice_ptp_setup_adapter(struct ice_pf *pf)
+{
+	if (!ice_pf_src_tmr_owned(pf) || !ice_is_primary(&pf->hw))
+		return -EPERM;
+
+	pf->adapter->ctrl_pf = pf;
+
+	return 0;
+}
+
+static int ice_ptp_setup_pf(struct ice_pf *pf)
+{
+	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
+	struct ice_ptp *ptp = &pf->ptp;
+
+	if (WARN_ON(!ctrl_ptp) || ice_get_phy_model(&pf->hw) == ICE_PHY_UNSUP)
+		return -ENODEV;
+
+	INIT_LIST_HEAD(&ptp->port.list_node);
+	mutex_lock(&pf->adapter->ports.lock);
+
+	list_add(&ptp->port.list_node,
+		 &pf->adapter->ports.ports);
+	mutex_unlock(&pf->adapter->ports.lock);
+
+	return 0;
+}
+
+static void ice_ptp_cleanup_pf(struct ice_pf *pf)
+{
+	struct ice_ptp *ptp = &pf->ptp;
+
+	if (ice_get_phy_model(&pf->hw) != ICE_PHY_UNSUP) {
+		mutex_lock(&pf->adapter->ports.lock);
+		list_del(&ptp->port.list_node);
+		mutex_unlock(&pf->adapter->ports.lock);
+	}
+}
 /**
  * ice_ptp_aux_dev_to_aux_pf - Get auxiliary PF handle for the auxiliary device
  * @aux_dev: auxiliary device to get the auxiliary PF for
@@ -3104,15 +3142,12 @@ static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
  */
 int ice_ptp_clock_index(struct ice_pf *pf)
 {
-	struct auxiliary_device *aux_dev;
-	struct ice_pf *owner_pf;
+	struct ice_ptp *ctrl_ptp = ice_get_ctrl_ptp(pf);
 	struct ptp_clock *clock;
 
-	aux_dev = &pf->ptp.port.aux_dev;
-	owner_pf = ice_ptp_aux_dev_to_owner_pf(aux_dev);
-	if (!owner_pf)
+	if (!ctrl_ptp)
 		return -1;
-	clock = owner_pf->ptp.clock;
+	clock = ctrl_ptp->clock;
 
 	return clock ? ptp_clock_index(clock) : -1;
 }
@@ -3368,18 +3403,25 @@ void ice_ptp_init(struct ice_pf *pf)
 	 * configure the PTP clock device to represent it.
 	 */
 	if (ice_pf_src_tmr_owned(pf)) {
+		err = ice_ptp_setup_adapter(pf);
+		if (err)
+			goto err_exit;
 		err = ice_ptp_init_owner(pf);
 		if (err)
-			goto err;
+			goto err_exit;
 	}
 
+	err = ice_ptp_setup_pf(pf);
+	if (err)
+		goto err_exit;
+
 	ptp->port.port_num = hw->pf_id;
 	if (ice_is_e825c(hw) && hw->ptp.is_2x50g_muxed_topo)
 		ptp->port.port_num = hw->pf_id * 2;
 
 	err = ice_ptp_init_port(pf, &ptp->port);
 	if (err)
-		goto err;
+		goto err_exit;
 
 	/* Start the PHY timestamping block */
 	ice_ptp_reset_phy_timestamping(pf);
@@ -3395,12 +3437,12 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	err = ice_ptp_init_work(pf, ptp);
 	if (err)
-		goto err;
+		goto err_exit;
 
 	dev_info(ice_pf_to_dev(pf), "PTP init successful\n");
 	return;
 
-err:
+err_exit:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
 		ptp_clock_unregister(ptp->clock);
@@ -3427,7 +3469,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_disable_timestamp_mode(pf);
 
-	ice_ptp_remove_auxbus_device(pf);
+	ice_ptp_cleanup_pf(pf);
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
@@ -3442,9 +3484,6 @@ void ice_ptp_release(struct ice_pf *pf)
 		pf->ptp.kworker = NULL;
 	}
 
-	if (ice_pf_src_tmr_owned(pf))
-		ice_ptp_unregister_auxbus_driver(pf);
-
 	if (!pf->ptp.clock)
 		return;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 1d87dd67284d..71c09acb5558 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -169,9 +169,8 @@ struct ice_ptp_tx {
  * ready for PTP functionality. It is used to track the port initialization
  * and determine when the port's PHY offset is valid.
  *
- * @list_member: list member structure of auxiliary device
+ * @list_node: list member structure
  * @tx: Tx timestamp tracking for this port
- * @aux_dev: auxiliary device associated with this port
  * @ov_work: delayed work task for tracking when PHY offset is valid
  * @ps_lock: mutex used to protect the overall PTP PHY start procedure
  * @link_up: indicates whether the link is up
@@ -179,9 +178,8 @@ struct ice_ptp_tx {
  * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
-	struct list_head list_member;
+	struct list_head list_node;
 	struct ice_ptp_tx tx;
-	struct auxiliary_device aux_dev;
 	struct kthread_delayed_work ov_work;
 	struct mutex ps_lock; /* protects overall PTP PHY start procedure */
 	bool link_up;
@@ -195,22 +193,6 @@ enum ice_ptp_tx_interrupt {
 	ICE_PTP_TX_INTERRUPT_ALL,
 };
 
-/**
- * struct ice_ptp_port_owner - data used to handle the PTP clock owner info
- *
- * This structure contains data necessary for the PTP clock owner to correctly
- * handle the timestamping feature for all attached ports.
- *
- * @aux_driver: the structure carring the auxiliary driver information
- * @ports: list of porst handled by this port owner
- * @lock: protect access to ports list
- */
-struct ice_ptp_port_owner {
-	struct auxiliary_driver aux_driver;
-	struct list_head ports;
-	struct mutex lock;
-};
-
 #define GLTSYN_TGT_H_IDX_MAX		4
 
 enum ice_ptp_state {
@@ -226,7 +208,6 @@ enum ice_ptp_state {
  * @state: current state of PTP state machine
  * @tx_interrupt_mode: the TX interrupt mode for the PTP clock
  * @port: data for the PHY port initialization procedure
- * @ports_owner: data for the auxiliary driver owner
  * @work: delayed work function for periodic tasks
  * @cached_phc_time: a cached copy of the PHC time for timestamp extension
  * @cached_phc_jiffies: jiffies when cached_phc_time was last updated
@@ -250,7 +231,6 @@ struct ice_ptp {
 	enum ice_ptp_state state;
 	enum ice_ptp_tx_interrupt tx_interrupt_mode;
 	struct ice_ptp_port port;
-	struct ice_ptp_port_owner ports_owner;
 	struct kthread_delayed_work work;
 	u64 cached_phc_time;
 	unsigned long cached_phc_jiffies;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..eceec2919159 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -451,6 +451,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 	}
 }
 
+static inline bool ice_is_primary(struct ice_hw *hw)
+{
+	return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M);
+}
+
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
-- 
2.43.0

