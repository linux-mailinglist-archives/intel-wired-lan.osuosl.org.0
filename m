Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yBpjF+FORGq/sQoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 01:18:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C616E89FA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 01:18:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=7XwYJBVu;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCA606112E;
	Tue, 30 Jun 2026 23:18:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A1kg2oXMykIy; Tue, 30 Jun 2026 23:18:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F01BF61132
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782861533;
	bh=Cpj+ZXPaPqtgebibN6r9KLNEWMAtKVdURrqLQxZgCo4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7XwYJBVuFGlTpniKM4zZgCNHYw9IHBMeyWRyfwwguYGsOSYOv/wk4l2xovlnvetuZ
	 uMBrAblIgLeRQHqWamjjyk7qS6aru9e3lImiAxGrR4+J55asfKonmq2vL2WUkciOMf
	 HmKlMvrbq4RaS+1KuMPTYXROB0fbZkCPXyKsZLlNDeDNzamQhzXl9jSpyCM2lkzFDu
	 rTdWyVieJD6YL2VLHF7sr8Yaa/25lEt/S4SXgb56UuSwx5Iv/FCYXPtaH289+MKC89
	 zAkFA7vGESklBvKxcJEcDHSXuiE6g6fzHpQPy33MToQiU7U4NsJhvrV9FLiStVqqW+
	 AHKU5jIoE3fOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F01BF61132;
	Tue, 30 Jun 2026 23:18:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E2760149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C877B83639
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lksHtPOlMCfN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 23:18:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D67F283626
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D67F283626
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D67F283626
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:49 +0000 (UTC)
X-CSE-ConnectionGUID: tyiVOIKVTouH2x+AWVUQag==
X-CSE-MsgGUID: 4v6bsHIfQoGIXScJcGOzZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="86135273"
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="86135273"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 16:18:47 -0700
X-CSE-ConnectionGUID: CxYeZMv+QqWMYotHj7eKrQ==
X-CSE-MsgGUID: 8JxB16EySlOLHuL8lp0c8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="251972110"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa008.jf.intel.com with ESMTP; 30 Jun 2026 16:18:48 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, jay.bhat@intel.com,
 ivan.d.barrera@intel.com, aleksandr.loktionov@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com,
 linux-pci@vger.kernel.org, madhu.chittim@intel.com, decot@google.com,
 willemb@google.com, sheenamo@google.com, lukas@wunner.de
Date: Tue, 30 Jun 2026 16:18:54 -0700
Message-Id: <20260630231854.11536-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260630231854.11536-1-emil.s.tantilov@intel.com>
References: <20260630231854.11536-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782861530; x=1814397530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=YX59OsC0UbD4E7dkcf3fLu0vydLhleMUl/5KrQV5rUI=;
 b=hFL7KEM+TLKM0G6oDFliZJK4hJuB4ESB+1Owr9xNT1N8zIhPriVAAojk
 8SKdCGxl2Kk+/uJ4wNKYrNjKu20ZAlkY39gkK2eChGRDCCW7JUqPlPN+l
 LDbZ/o719HG+GiB8A+5x/cBe5IvIo/IVAszuKi+7lvrcjl/DMudpbfPR9
 pzJ9vVlqXyrAx2oxAgUdlEGuHmBIFhqhxGORXYXPTLAaUrD7b7VBAZos4
 dkmQm2RFEZ2gfdb0zH2D9MJypxptd1sax/86f+1Gm0BpexB1mVH5YebmE
 VS1IR8Eja6pElYRFkU9uTBh8m9TmcgqdxkkrR0z3/VDaq+dskv3cpLGIl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hFL7KEM+
Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/2] idpf: implement pci error
 handlers
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1C616E89FA

Add callbacks to handle PCI errors and FLR reset. When preparing to handle
reset on the bus, the driver must stop all operations that can lead to MMIO
access in order to prevent HW errors. To accomplish this, introduce helper
idpf_reset_prepare() that gets called prior to FLR or when PCI error is
detected. Upon resume the recovery is done through the existing reset path
by starting the event task.

The following callbacks are implemented:
.reset_prepare runs the first portion of the generic reset path leading up
to the part where we wait for the reset to complete.
.reset_done/resume runs the recovery part of the reset handling.
.error_detected is the callback dealing with PCI errors, similar to the
prepare call, we stop all operations, prior to attempting a recovery.
.slot_reset is the callback attempting to restore the device, provided a
PCI reset was initiated due to an error on the bus.

Whereas previously the init logic guaranteed netdevs during reset, the
addition of idpf_detach_and_close() to the PCI callbacks flow makes it
possible for the function to be called without netdevs. Add check to
avoid NULL pointer dereference in that case.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Jay Bhat <jay.bhat@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      |   3 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  13 ++-
 drivers/net/ethernet/intel/idpf/idpf_main.c | 122 ++++++++++++++++++++
 3 files changed, 136 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 470bc23c844c..a7fc850a4904 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -88,6 +88,7 @@ enum idpf_state {
  * @IDPF_REMOVE_IN_PROG: Driver remove in progress
  * @IDPF_MB_INTR_MODE: Mailbox in interrupt mode
  * @IDPF_VC_CORE_INIT: virtchnl core has been init
+ * @IDPF_PCI_CB_RESET: Reset via the PCI callbacks
  * @IDPF_FLAGS_NBITS: Must be last
  */
 enum idpf_flags {
@@ -97,6 +98,7 @@ enum idpf_flags {
 	IDPF_REMOVE_IN_PROG,
 	IDPF_MB_INTR_MODE,
 	IDPF_VC_CORE_INIT,
+	IDPF_PCI_CB_RESET,
 	IDPF_FLAGS_NBITS,
 };
 
@@ -1012,4 +1014,5 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
 int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
 				struct virtchnl2_flow_rule_add_del *rule,
 				enum virtchnl2_op opcode);
+void idpf_detach_and_close(struct idpf_adapter *adapter);
 #endif /* !_IDPF_H_ */
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 1c19cd1f9dd1..80d04e59e151 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -758,13 +758,16 @@ static int idpf_init_mac_addr(struct idpf_vport *vport,
 	return 0;
 }
 
-static void idpf_detach_and_close(struct idpf_adapter *adapter)
+void idpf_detach_and_close(struct idpf_adapter *adapter)
 {
 	int max_vports = adapter->max_vports;
 
 	for (int i = 0; i < max_vports; i++) {
 		struct net_device *netdev = adapter->netdevs[i];
 
+		if (!netdev)
+			continue;
+
 		/* If the interface is in detached state, that means the
 		 * previous reset was not handled successfully for this
 		 * vport.
@@ -1908,6 +1911,10 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 
 	dev_info(dev, "Device HW Reset initiated\n");
 
+	/* Reset has already happened, skip to recovery. */
+	if (test_and_clear_bit(IDPF_PCI_CB_RESET, adapter->flags))
+		goto check_rst_complete;
+
 	/* Prepare for reset */
 	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
 		reg_ops->trigger_reset(adapter, IDPF_HR_DRV_LOAD);
@@ -1926,6 +1933,7 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
+check_rst_complete:
 	/* Wait for reset to complete */
 	err = idpf_check_reset_complete(adapter, &adapter->reset_reg);
 	if (err) {
@@ -1985,7 +1993,8 @@ void idpf_vc_event_task(struct work_struct *work)
 	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
 		goto func_reset;
 
-	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
+	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags) ||
+	    test_bit(IDPF_PCI_CB_RESET, adapter->flags))
 		goto drv_load;
 
 	return;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 064bf3583824..1786a0dd026b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -238,6 +238,7 @@ static int idpf_cfg_device(struct idpf_adapter *adapter)
 	if (err)
 		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
 
+	pci_save_state(pdev);
 	pci_set_drvdata(pdev, adapter);
 
 	return 0;
@@ -364,6 +365,126 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return err;
 }
 
+static void idpf_reset_prepare(struct idpf_adapter *adapter)
+{
+	pci_dbg(adapter->pdev, "resetting\n");
+	cancel_delayed_work_sync(&adapter->serv_task);
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	cancel_delayed_work_sync(&adapter->init_task);
+	set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+	idpf_detach_and_close(adapter);
+	idpf_idc_issue_reset_event(adapter->cdev_info);
+	mutex_lock(&adapter->vport_ctrl_lock);
+	idpf_vc_core_deinit(adapter);
+	idpf_deinit_dflt_mbx(adapter);
+	mutex_unlock(&adapter->vport_ctrl_lock);
+}
+
+/**
+ * idpf_pci_err_detected - PCI error detected, about to attempt recovery
+ * @pdev: PCI device struct
+ * @state: PCI channel state
+ *
+ * Return: %PCI_ERS_RESULT_NEED_RESET to attempt recovery,
+ * %PCI_ERS_RESULT_DISCONNECT if recovery is not possible.
+ */
+static pci_ers_result_t
+idpf_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t state)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	/* Shutdown the mailbox if PCI I/O is in a bad state to avoid MBX
+	 * timeouts during the prepare stage.
+	 */
+	if (pci_channel_offline(pdev) && adapter->xnm)
+		libie_ctlq_xn_shutdown(adapter->xnm);
+
+	idpf_reset_prepare(adapter);
+
+	if (state == pci_channel_io_perm_failure)
+		return PCI_ERS_RESULT_DISCONNECT;
+
+	/* When called due to PCI error, driver will have to force PFR on
+	 * resume, in order to complete the recovery via the event task.
+	 */
+	set_bit(IDPF_PCI_CB_RESET, adapter->flags);
+
+	return PCI_ERS_RESULT_NEED_RESET;
+}
+
+/**
+ * idpf_pci_err_slot_reset - PCI undergoing reset
+ * @pdev: PCI device struct
+ *
+ * Reset PCI state and use a register read to see if we're good.
+ *
+ * Return: %PCI_ERS_RESULT_RECOVERED on success,
+ * %PCI_ERS_RESULT_DISCONNECT on failure.
+ */
+static pci_ers_result_t
+idpf_pci_err_slot_reset(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	pci_restore_state(pdev);
+	pci_set_master(pdev);
+	pci_wake_from_d3(pdev, false);
+
+	/* RSTAT register cannot have all bits set during normal operation
+	 * on current HW.
+	 */
+	if (PCI_POSSIBLE_ERROR(readl(adapter->reset_reg.rstat)))
+		return PCI_ERS_RESULT_DISCONNECT;
+
+	return PCI_ERS_RESULT_RECOVERED;
+}
+
+/**
+ * idpf_pci_err_resume - Resume operations after PCI error recovery
+ * @pdev: PCI device struct
+ */
+static void idpf_pci_err_resume(struct pci_dev *pdev)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	/* Trigger a reset, following PCI error, to allow recovery via the
+	 * regular reset handling path.
+	 */
+	if (test_and_set_bit(IDPF_PCI_CB_RESET, adapter->flags))
+		adapter->dev_ops.reg_ops.trigger_reset(adapter, IDPF_HR_FUNC_RESET);
+
+	queue_delayed_work(adapter->vc_event_wq,
+			   &adapter->vc_event_task,
+			   msecs_to_jiffies(300));
+}
+
+/**
+ * idpf_pci_err_reset_prepare - Prepare driver for PCI reset
+ * @pdev: PCI device struct
+ */
+static void idpf_pci_err_reset_prepare(struct pci_dev *pdev)
+{
+	idpf_reset_prepare(pci_get_drvdata(pdev));
+}
+
+/**
+ * idpf_pci_err_reset_done - PCI err reset recovery complete
+ * @pdev: PCI device struct
+ */
+static void idpf_pci_err_reset_done(struct pci_dev *pdev)
+{
+	pci_dbg(pdev, "reset done\n");
+	idpf_pci_err_resume(pdev);
+}
+
+static const struct pci_error_handlers idpf_pci_err_handler = {
+	.error_detected = idpf_pci_err_detected,
+	.slot_reset = idpf_pci_err_slot_reset,
+	.reset_prepare = idpf_pci_err_reset_prepare,
+	.reset_done = idpf_pci_err_reset_done,
+	.resume = idpf_pci_err_resume,
+};
+
 /* idpf_pci_tbl - PCI Dev idpf ID Table
  */
 static const struct pci_device_id idpf_pci_tbl[] = {
@@ -381,5 +502,6 @@ static struct pci_driver idpf_driver = {
 	.sriov_configure	= idpf_sriov_configure,
 	.remove			= idpf_remove,
 	.shutdown		= idpf_shutdown,
+	.err_handler		= &idpf_pci_err_handler,
 };
 module_pci_driver(idpf_driver);
-- 
2.37.3

