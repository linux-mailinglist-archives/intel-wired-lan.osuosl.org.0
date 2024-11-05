Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6636C9BD7D3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 22:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5124E81159;
	Tue,  5 Nov 2024 21:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5jsWOex8GeXo; Tue,  5 Nov 2024 21:49:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1915281163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730843364;
	bh=xkSLmz0jyTh9UvuaN+Xs5yW8T1ElCllNPlg/dLdA4/I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JSqJXXfiwMLMuVHbyVTIs0F+lGfvDukeJFQiSa75AW0UexlrwNJ054TTpurxDGGKW
	 pzl11EreXFZqR9h1GjSJ7M7EfDXGtYYfzxWo40dl3fqFCwvdyrOyjABaJGQRxFYgMn
	 mXGMcPIKyc6/mlsWzH1a/EmCABEdxEsmcoGdN4H82aQDsxHJTt9Y6zyG/kXLzc69Xd
	 hzoqQJbQ/cz9BbFXGjKscRGv2nSM+Avajai33a1cssx8KGyWJAdLP8siyUOOdFA/EP
	 iU0snlQlXTxzgudX2GTHjIvjVagSauPsDnCQjZWzbr/SFah/gI8YNmLase9Q2JAwjg
	 i8Ivnk3J7E63g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1915281163;
	Tue,  5 Nov 2024 21:49:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A33CB8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF49B80DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x_N1Oh_N_u2f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 21:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=tarun.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC3CF81154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC3CF81154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC3CF81154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 21:49:17 +0000 (UTC)
X-CSE-ConnectionGUID: j2F0AueLTta2In80knwZaQ==
X-CSE-MsgGUID: EX9JMB9VRhu5dKnb2wuxKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30735926"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30735926"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 13:49:16 -0800
X-CSE-ConnectionGUID: Wg8QJlc8TxOSOUWkDNs8Dw==
X-CSE-MsgGUID: +hsLn0LgSgeVBVEHzhFFQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="85010419"
Received: from coyotepass-34596-p1.jf.intel.com ([10.166.80.48])
 by orviesa008.jf.intel.com with ESMTP; 05 Nov 2024 13:49:06 -0800
From: Tarun K Singh <tarun.k.singh@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  5 Nov 2024 13:48:58 -0500
Message-ID: <20241105184859.741473-4-tarun.k.singh@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241105184859.741473-1-tarun.k.singh@intel.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730843358; x=1762379358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fs47b3k7TnzdYnjiKW2cihXESV17iIsj1HH+Y7Az+Ng=;
 b=I68fro5KjF0z83xApwH9KuuUOnM1VELuywf2XcD3y7+MXDUYnQ2G1Dv2
 DuqlmIzfIsp+BZd0xkGan7e7N+tNjElQBJ2YVzWmdZL4Uv6lsM/8Y23fE
 Cjb32vw6etbmV/gza+Ki/VfjJ8ohCVKdHZdvm+cAGJhGlqED22JvGadEO
 5RYUtBgDbcBVWYN/mEoyU0MGu1UHN6AeRW7VL9ExX9VUFdSuTGjUDmC3d
 FmprdinYIYZMtBmQRms4VBCkpR4zUJIqexX7xRkn1LQESaJGAUTbPB1om
 Xkh3XhmrL/Jn9RKdRwihiqlcWxVYp9C9pix0jOAAmQZs4F2dfvzmWHGTQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I68fro5K
Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/4] idpf: Add init, reinit,
 and deinit control lock
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

Add new 'vport_init_lock' to prevent locking issue.

The existing 'vport_cfg_lock' was controlling the vport initialization,
re-initialization due to reset, and de-initialization of code flow.
In addition to controlling the above behavior it was also controlling
the parallel netdevice calls such as open/close from Linux OS, which
can happen independent of re-init or de-init of the vport(s). If first
one such as re-init or de-init is going on then the second operation
to config the netdevice with OS should not take place. The first
operation (init or de-init) takes the precedence if both are to happen
simultaneously.

Use of single lock cause deadlock and inconsistent behavior of code
flow. E.g. when driver undergoes reset via 'idpf_init_hard_reset', it
acquires the 'vport_cfg_lock', and during this process it tries to
unregister netdevice which may call 'idpf_stop' which tries to acquire
same lock causing it to deadlock.

To address above, add new lock 'vport_init_lock' which control the
initialization, re-initialization, and de-initialization flow.
The 'vport_cfg_lock' now exclusively controls the vport config
operations.

Add vport config lock around 'idpf_vport_stop()' and 'idpf_vport_open()'
to protect close and open operation at the same time.

Add vport init lock around 'idpf_sriv_configure()' to protect it from
load and removal path. To accomplish it, use existing function
as wrapper and introduce another function 'idpf_sriov_config_vfs'
which is used inside the lock.

In idpf_remove, change 'idpf_sriov_configure' to
'idpf_sriov_config_vfs', and move inside the init lock.

Use these two locks in the following precedence:
'vport_init_lock' first, then 'vport_cfg_lock'.

Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Tarun K Singh <tarun.k.singh@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      | 25 +++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_lib.c  | 41 ++++++++++++++++++---
 drivers/net/ethernet/intel/idpf/idpf_main.c |  7 +++-
 3 files changed, 67 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 8dea2dd784af..34dbdc7d6c88 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -526,6 +526,7 @@ struct idpf_vc_xn_manager;
  * @crc_enable: Enable CRC insertion offload
  * @req_tx_splitq: TX split or single queue model to request
  * @req_rx_splitq: RX split or single queue model to request
+ * @vport_init_lock: Lock to protect vport init, re-init, and deinit flow
  * @vport_cfg_lock: Lock to protect the vport config flow
  * @vector_lock: Lock to protect vector distribution
  * @queue_lock: Lock to protect queue distribution
@@ -583,6 +584,7 @@ struct idpf_adapter {
 	bool req_tx_splitq;
 	bool req_rx_splitq;
 
+	struct mutex vport_init_lock;
 	struct mutex vport_cfg_lock;
 	struct mutex vector_lock;
 	struct mutex queue_lock;
@@ -786,6 +788,28 @@ static inline u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter)
 	return le16_to_cpu(adapter->caps.max_tx_hdr_size);
 }
 
+/**
+ * idpf_vport_init_lock -acquire init/deinit control lock
+ * @adapter: private data struct
+ *
+ * It controls and protect vport initialization, re-initialization,
+ * and deinitialization code flow and its resources. This
+ * lock is only used by non-datapath code.
+ */
+static inline void idpf_vport_init_lock(struct idpf_adapter *adapter)
+{
+	mutex_lock(&adapter->vport_init_lock);
+}
+
+/**
+ * idpf_vport_init_unlock - release vport init lock
+ * @adapter: private data struct
+ */
+static inline void idpf_vport_init_unlock(struct idpf_adapter *adapter)
+{
+	mutex_unlock(&adapter->vport_init_lock);
+}
+
 /**
  * idpf_vport_cfg_lock - Acquire the vport config lock
  * @adapter: private data struct
@@ -827,6 +851,7 @@ void idpf_set_ethtool_ops(struct net_device *netdev);
 void idpf_vport_intr_write_itr(struct idpf_q_vector *q_vector,
 			       u16 itr, bool tx);
 int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs);
+int idpf_sriov_config_vfs(struct pci_dev *pdev, int num_vfs);
 
 u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
 bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 778dc71fbf4a..931d0f988c95 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1000,7 +1000,10 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	unsigned int i = vport->idx;
 
 	idpf_deinit_mac_addr(vport);
+
+	idpf_vport_cfg_lock(adapter);
 	idpf_vport_stop(vport);
+	idpf_vport_cfg_unlock(adapter);
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
@@ -1522,8 +1525,11 @@ void idpf_init_task(struct work_struct *work)
 	/* Once state is put into DOWN, driver is ready for dev_open */
 	np = netdev_priv(vport->netdev);
 	np->state = __IDPF_VPORT_DOWN;
-	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags))
+	if (test_and_clear_bit(IDPF_VPORT_UP_REQUESTED, vport_config->flags)) {
+		idpf_vport_cfg_lock(adapter);
 		idpf_vport_open(vport);
+		idpf_vport_cfg_unlock(adapter);
+	}
 
 	/* Spawn and return 'idpf_init_task' work queue until all the
 	 * default vports are created
@@ -1601,17 +1607,19 @@ static int idpf_sriov_ena(struct idpf_adapter *adapter, int num_vfs)
 }
 
 /**
- * idpf_sriov_configure - Configure the requested VFs
+ * idpf_sriov_config_vfs - Configure the requested VFs
  * @pdev: pointer to a pci_dev structure
  * @num_vfs: number of vfs to allocate
  *
  * Enable or change the number of VFs. Called when the user updates the number
  * of VFs in sysfs.
  **/
-int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs)
+int idpf_sriov_config_vfs(struct pci_dev *pdev, int num_vfs)
 {
 	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
 
+	lockdep_assert_held(&adapter->vport_init_lock);
+
 	if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_SRIOV)) {
 		dev_info(&pdev->dev, "SR-IOV is not supported on this device\n");
 
@@ -1634,6 +1642,26 @@ int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	return 0;
 }
 
+/**
+ * idpf_sriov_configure - Call idpf_sriov_config_vfs to configure
+ * @pdev: pointer to a pci_dev structure
+ * @num_vfs: number of vfs to allocate
+ *
+ * Enable or change the number of VFs. Called when the user updates the number
+ * of VFs in sysfs.
+ **/
+int idpf_sriov_configure(struct pci_dev *pdev, int num_vfs)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+	int ret;
+
+	idpf_vport_init_lock(adapter);
+	ret = idpf_sriov_config_vfs(pdev, num_vfs);
+	idpf_vport_init_unlock(adapter);
+
+	return ret;
+}
+
 /**
  * idpf_deinit_task - Device deinit routine
  * @adapter: Driver specific private structure
@@ -1733,7 +1761,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 	int err;
 	u16 i;
 
-	mutex_lock(&adapter->vport_cfg_lock);
+	idpf_vport_init_lock(adapter);
 
 	dev_info(dev, "Device HW Reset initiated\n");
 
@@ -1798,7 +1826,7 @@ static int idpf_init_hard_reset(struct idpf_adapter *adapter)
 		msleep(100);
 
 unlock_mutex:
-	mutex_unlock(&adapter->vport_cfg_lock);
+	idpf_vport_init_unlock(adapter);
 
 	return err;
 }
@@ -2155,6 +2183,9 @@ static int idpf_open(struct net_device *netdev)
 	struct idpf_vport *vport;
 	int err;
 
+	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
+		return 0;
+
 	idpf_vport_cfg_lock(adapter);
 	vport = idpf_netdev_to_vport(netdev);
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 0522b3a6f42c..04bbc048c829 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -28,10 +28,13 @@ static void idpf_remove(struct pci_dev *pdev)
 	 * end up in bad state.
 	 */
 	cancel_delayed_work_sync(&adapter->vc_event_task);
+
+	idpf_vport_init_lock(adapter);
 	if (adapter->num_vfs)
-		idpf_sriov_configure(pdev, 0);
+		idpf_sriov_config_vfs(pdev, 0);
 
 	idpf_vc_core_deinit(adapter);
+	idpf_vport_init_unlock(adapter);
 
 	/* Be a good citizen and leave the device clean on exit */
 	adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
@@ -72,6 +75,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	kfree(adapter->vcxn_mngr);
 	adapter->vcxn_mngr = NULL;
 
+	mutex_destroy(&adapter->vport_init_lock);
 	mutex_destroy(&adapter->vport_cfg_lock);
 	mutex_destroy(&adapter->vector_lock);
 	mutex_destroy(&adapter->queue_lock);
@@ -229,6 +233,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_cfg_hw;
 	}
 
+	mutex_init(&adapter->vport_init_lock);
 	mutex_init(&adapter->vport_cfg_lock);
 	mutex_init(&adapter->vector_lock);
 	mutex_init(&adapter->queue_lock);
-- 
2.46.0

