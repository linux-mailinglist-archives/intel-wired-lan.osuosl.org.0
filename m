Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD7E959E3F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA6AE4057B;
	Wed, 21 Aug 2024 13:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tY018wgV9Niw; Wed, 21 Aug 2024 13:12:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52FCD40251
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724245922;
	bh=Ijsmf1S7cQCxjEqWDSlH4Np/kGLd40zJcWwBvSyUlLs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5UFCC8xZkPg5a9tZMlfqyDnU++02qG7jbUk1oRYxb0PkeJIXJ1BW3ZA5/x/JvjO7o
	 WQilHETOzRcZjpY20T0avahn2lshxO+uOfmYCMxEPbr3nvmEyDaiG7Zdw9tjiNF/bg
	 pEk+LSdHu0/GsvSHoVxC7MVDzX9Rs/Ux4tI6yPV01XNU3zmt1yvSLBHcZwGVYWvboS
	 efH3N6u02m8g++dKrw0p24hoHpzlQEmfiMdkMy3qKg2tMCa+MttUR/7ibwEAVtL2yP
	 M7oXwXhCAjnIFsbedzOskTkoDX7nrzQV+W1UdckfHplfHLTlYXuo+t7tcS/MfIIaY/
	 N82uJbfxRpy0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52FCD40251;
	Wed, 21 Aug 2024 13:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C92FC1BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B76528118A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RVrXWiN8gVef for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:11:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7ED1C81186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7ED1C81186
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7ED1C81186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:59 +0000 (UTC)
X-CSE-ConnectionGUID: G1Ivf5ryQnerGU/xDEbRvA==
X-CSE-MsgGUID: 6KBmZpczSVelC1P3LCvvCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26356944"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26356944"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:11:59 -0700
X-CSE-ConnectionGUID: CxnJhrElSwCoRShEB7iIJA==
X-CSE-MsgGUID: tvdhHlvFSBqcVkoqNWQLzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65432416"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 21 Aug 2024 06:11:57 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2024 15:09:56 +0200
Message-ID: <20240821130957.55043-5-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724245919; x=1755781919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S0SuDOxXEcb5ECCIwmfDR8ubR/KdoYHaZ4j+apNszNM=;
 b=Li0U7acJrdfPzllGWTV6MGZa44bjDh6gb2ZPX3f4AwFOe1n6itTGH3bv
 2w6cnLDuSQPHlH0sjFB3NXzv10icxkQ9Wxl+JU9fWHnGTz8hKy6BFxqDf
 BRe1xGShZx502jueibNzEFJ1FcZAJftWboWRfO0QQI5tYPvXqDM501dq/
 7FUwuFlFV0cGOLHLBLtk65+/Llh2GkKwzwzM22OfinkMkGPMz42/V+mR1
 jxJNYLkocU4vjRSNzjJPhhnES7MXFviWUvwJq7q7HpmeOHBdigbB5dqVj
 Mq0oFOicrEIhTKw66sjasATh3Xq2kOawKufZceOK9/BMl6Xqkd6+8peRr
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Li0U7acJ
Subject: [Intel-wired-lan] [PATCH iwl-next v6 4/5] ice: Use ice_adapter for
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
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use struct ice_adapter to hold shared PTP data and control PTP
related actions instead of auxbus. This allows significant code
simplification and faster access to the container fields used in
the PTP support code.

Move the PTP port list to the ice_adapter container to simplify
the code and avoid race conditions which could occur due to the
synchronous nature of the initialization/access and
certain memory saving can be achieved by moving PTP data into
the ice_adapter itself.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adapter.c |   6 +
 drivers/net/ethernet/intel/ice/ice_adapter.h |  17 +++
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 115 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |   5 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |   5 +
 5 files changed, 105 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 903d0bc9e3e5..01a08cfd0090 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -50,11 +50,17 @@ static struct ice_adapter *ice_adapter_new(void)
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
index eb7cac01c242..e233225848b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -4,18 +4,34 @@
 #ifndef _ICE_ADAPTER_H_
 #define _ICE_ADAPTER_H_
 
+#include <linux/types.h>
 #include <linux/spinlock_types.h>
 #include <linux/refcount_types.h>
 
 struct pci_dev;
 struct ice_pf;
 
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
+
 /**
  * struct ice_adapter - PCI adapter resources shared across PFs
  * @ptp_gltsyn_time_lock: Spinlock protecting access to the GLTSYN_TIME
  *                        register of the PTP clock.
  * @refcount: Reference count. struct ice_pf objects hold the references.
  * @ctrl_pf: Control PF of the adapter
+ * @ports: Ports list
  */
 struct ice_adapter {
 	refcount_t refcount;
@@ -23,6 +39,7 @@ struct ice_adapter {
 	spinlock_t ptp_gltsyn_time_lock;
 
 	struct ice_pf *ctrl_pf;
+	struct ice_port_list ports;
 };
 
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index f6c50063d374..6d92406819bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -62,7 +62,7 @@ static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf)
 	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
 }
 
-static __maybe_unused struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
+static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)
 {
 	struct ice_pf *ctrl_pf = ice_get_ctrl_pf(pf);
 
@@ -734,8 +734,8 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 	struct ice_ptp_port *port;
 	unsigned int i;
 
-	mutex_lock(&pf->ptp.ports_owner.lock);
-	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member) {
+	mutex_lock(&pf->adapter->ports.lock);
+	list_for_each_entry(port, &pf->adapter->ports.ports, list_node) {
 		struct ice_ptp_tx *tx = &port->tx;
 
 		if (!tx || !tx->init)
@@ -743,7 +743,7 @@ static enum ice_tx_tstamp_work ice_ptp_tx_tstamp_owner(struct ice_pf *pf)
 
 		ice_ptp_process_tx_tstamp(tx);
 	}
-	mutex_unlock(&pf->ptp.ports_owner.lock);
+	mutex_unlock(&pf->adapter->ports.lock);
 
 	for (i = 0; i < ICE_GET_QUAD_NUM(pf->hw.ptp.num_lports); i++) {
 		u64 tstamp_ready;
@@ -908,7 +908,7 @@ ice_ptp_flush_all_tx_tracker(struct ice_pf *pf)
 {
 	struct ice_ptp_port *port;
 
-	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member)
+	list_for_each_entry(port, &pf->adapter->ports.ports, list_node)
 		ice_ptp_flush_tx_tracker(ptp_port_to_pf(port), &port->tx);
 }
 
@@ -1508,10 +1508,10 @@ static void ice_ptp_restart_all_phy(struct ice_pf *pf)
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
@@ -2962,6 +2962,50 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	dev_err(ice_pf_to_dev(pf), "PTP reset failed %d\n", err);
 }
 
+static bool ice_is_primary(struct ice_hw *hw)
+{
+	return ice_is_e825c(hw) && ice_is_dual(hw) ?
+		!!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M) : true;
+}
+
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
@@ -3013,9 +3057,9 @@ static int ice_ptp_auxbus_probe(struct auxiliary_device *aux_dev,
 	if (WARN_ON(!owner_pf))
 		return -ENODEV;
 
-	INIT_LIST_HEAD(&aux_pf->ptp.port.list_member);
+	INIT_LIST_HEAD(&aux_pf->ptp.port.list_node);
 	mutex_lock(&owner_pf->ptp.ports_owner.lock);
-	list_add(&aux_pf->ptp.port.list_member,
+	list_add(&aux_pf->ptp.port.list_node,
 		 &owner_pf->ptp.ports_owner.ports);
 	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
 
@@ -3032,7 +3076,7 @@ static void ice_ptp_auxbus_remove(struct auxiliary_device *aux_dev)
 	struct ice_pf *aux_pf = ice_ptp_aux_dev_to_aux_pf(aux_dev);
 
 	mutex_lock(&owner_pf->ptp.ports_owner.lock);
-	list_del(&aux_pf->ptp.port.list_member);
+	list_del(&aux_pf->ptp.port.list_node);
 	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
 }
 
@@ -3092,7 +3136,7 @@ ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
  * ice_ptp_register_auxbus_driver - Register PTP auxiliary bus driver
  * @pf: Board private structure
  */
-static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
+static int __always_unused ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 {
 	struct auxiliary_driver *aux_driver;
 	struct ice_ptp *ptp;
@@ -3135,7 +3179,7 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
  * ice_ptp_unregister_auxbus_driver - Unregister PTP auxiliary bus driver
  * @pf: Board private structure
  */
-static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
+static void __always_unused ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
 {
 	struct auxiliary_driver *aux_driver = &pf->ptp.ports_owner.aux_driver;
 
@@ -3154,15 +3198,12 @@ static void ice_ptp_unregister_auxbus_driver(struct ice_pf *pf)
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
@@ -3222,15 +3263,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 	if (err)
 		goto err_clk;
 
-	err = ice_ptp_register_auxbus_driver(pf);
-	if (err) {
-		dev_err(ice_pf_to_dev(pf), "Failed to register PTP auxbus driver");
-		goto err_aux;
-	}
-
 	return 0;
-err_aux:
-	ptp_clock_unregister(pf->ptp.clock);
 err_clk:
 	pf->ptp.clock = NULL;
 err_exit:
@@ -3306,7 +3339,7 @@ static void ice_ptp_release_auxbus_device(struct device *dev)
  * ice_ptp_create_auxbus_device - Create PTP auxiliary bus device
  * @pf: Board private structure
  */
-static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
+static __always_unused int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 {
 	struct auxiliary_device *aux_dev;
 	struct ice_ptp *ptp;
@@ -3353,7 +3386,7 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
  * ice_ptp_remove_auxbus_device - Remove PTP auxiliary bus device
  * @pf: Board private structure
  */
-static void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
+static __always_unused void ice_ptp_remove_auxbus_device(struct ice_pf *pf)
 {
 	struct auxiliary_device *aux_dev = &pf->ptp.port.aux_dev;
 
@@ -3417,19 +3450,26 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* If this function owns the clock hardware, it must allocate and
 	 * configure the PTP clock device to represent it.
 	 */
-	if (ice_pf_src_tmr_owned(pf)) {
+	if (ice_pf_src_tmr_owned(pf) && ice_is_primary(hw)) {
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
@@ -3437,20 +3477,16 @@ void ice_ptp_init(struct ice_pf *pf)
 	/* Configure initial Tx interrupt settings */
 	ice_ptp_cfg_tx_interrupt(pf);
 
-	err = ice_ptp_create_auxbus_device(pf);
-	if (err)
-		goto err;
-
 	ptp->state = ICE_PTP_READY;
 
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
@@ -3477,7 +3513,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	/* Disable timestamping for both Tx and Rx */
 	ice_ptp_disable_timestamp_mode(pf);
 
-	ice_ptp_remove_auxbus_device(pf);
+	ice_ptp_cleanup_pf(pf);
 
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
@@ -3492,9 +3528,6 @@ void ice_ptp_release(struct ice_pf *pf)
 		pf->ptp.kworker = NULL;
 	}
 
-	if (ice_pf_src_tmr_owned(pf))
-		ice_ptp_unregister_auxbus_driver(pf);
-
 	if (!pf->ptp.clock)
 		return;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index b8ab162a5538..cc36d6ffdc8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -138,7 +138,7 @@ struct ice_ptp_tx {
  * ready for PTP functionality. It is used to track the port initialization
  * and determine when the port's PHY offset is valid.
  *
- * @list_member: list member structure of auxiliary device
+ * @list_node: list member structure
  * @tx: Tx timestamp tracking for this port
  * @aux_dev: auxiliary device associated with this port
  * @ov_work: delayed work task for tracking when PHY offset is valid
@@ -148,7 +148,7 @@ struct ice_ptp_tx {
  * @port_num: the port number this structure represents
  */
 struct ice_ptp_port {
-	struct list_head list_member;
+	struct list_head list_node;
 	struct ice_ptp_tx tx;
 	struct auxiliary_device aux_dev;
 	struct kthread_delayed_work ov_work;
@@ -174,6 +174,7 @@ enum ice_ptp_tx_interrupt {
  * @ports: list of porst handled by this port owner
  * @lock: protect access to ports list
  */
+
 struct ice_ptp_port_owner {
 	struct auxiliary_driver aux_driver;
 	struct list_head ports;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index fc946fcd28b9..1a61d4826271 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -468,6 +468,11 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 	}
 }
 
+static inline bool ice_is_dual(struct ice_hw *hw)
+{
+	return !!(hw->dev_caps.nac_topo.mode & ICE_NAC_TOPO_DUAL_M);
+}
+
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
-- 
2.43.0

