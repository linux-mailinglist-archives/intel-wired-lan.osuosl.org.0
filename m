Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBATI5Gx3WmLhwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 05:16:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D02093F5350
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 05:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71B3984A4D;
	Tue, 14 Apr 2026 03:16:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 97xPHvfWiVPU; Tue, 14 Apr 2026 03:16:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B06FD84A4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776136590;
	bh=UBBfl4H/GrZPEzpy1Xwz25cPl+Pbc/PtQwaBDuVpV3g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yqbmfue17zl6GMTRT7gvFjT9qmwbM051iiwGRfDzNjiMIQjIua//lzSPDzlI64hbc
	 k5Vuh6wAG7cBMRaiNDKdAVA6AOhgK4e/JdwLDy1HuWlc5uKtvBmjKc+6XCOeOUGr5G
	 rjts67iwaOn/3j3Avw2LS2+UuNQNEN6uElP0Ivyv1rl8qtwjP08wLDmxG/ktHeAkZd
	 XBDEEV9dfwH8qMkC36EAS3gkTZjjYGDAqllrDjH7KQSptnTv4ZqojbgrR4r5ieEY98
	 fC2w0TRlDiSI4WMU3nk/lv7to239NQsBt5zMgRjuiwD5eJEjhyRvxf7ia+1JxM80td
	 qttCyOfD5oPlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B06FD84A4E;
	Tue, 14 Apr 2026 03:16:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F1ABF375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8336428BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zkNCyR7gPIG3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 03:16:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 79755428BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79755428BA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79755428BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 03:16:26 +0000 (UTC)
X-CSE-ConnectionGUID: x8/jj2jXQWG9AkiJy5PDmw==
X-CSE-MsgGUID: OZ8i6eWqRciEMDamCZ9vFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="87706583"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="87706583"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 20:16:26 -0700
X-CSE-ConnectionGUID: DUNMgJhcTS+4CscNgjf+Aw==
X-CSE-MsgGUID: 2dSd10edQ4Kgrb3jhu+rKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="226795517"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa007.fm.intel.com with ESMTP; 13 Apr 2026 20:16:25 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, jay.bhat@intel.com,
 ivan.d.barrera@intel.com, aleksandr.loktionov@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com,
 linux-pci@vger.kernel.org, madhu.chittim@intel.com, decot@google.com,
 willemb@google.com, sheenamo@google.com, lukas@wunner.de
Date: Mon, 13 Apr 2026 20:16:31 -0700
Message-Id: <20260414031631.2107-3-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20260414031631.2107-1-emil.s.tantilov@intel.com>
References: <20260414031631.2107-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776136586; x=1807672586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=8ikZyGWBrYDUmbI9iD2F/pftTxEbB0IwHGrbW3M86xc=;
 b=GWVhopSUiFPWEMQ0Jxd2tTN4KmX/rMNPiMHd6x5GPPsEHFKc4r9eumMQ
 IbA17XcEiy96AYEfrwb2Ox42kpCC/Gtn07VDw9wyVeAZ/woiyutWKM9Lh
 HcsM6X+uK2/Bin3fhmJtPD921Zji2UBUMA+q242xf4IeGh+4EYu6Op8fq
 jyMFhawtpIzuw93xAwCOXCyCnnWlQIWEEeGW9m860tC7H2Ou5r0TVeieZ
 PWyVGWzDCDX/BJi8cqcUUk/UE2gJp6gHkZfQeU5tWfjkuBezsaJyqry2m
 i7Sr7EEVjH6LqcQmx712USICIklIt9jMoW9RJSblwpFSOy1TpT6yEixgM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GWVhopSU
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] idpf: implement pci error
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.992];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D02093F5350
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add callbacks to handle PCI errors and FLR reset. When preparing to handle
reset on the bus, the driver must stop all operations that can lead to MMIO
access in order to prevent HW errors. To accomplish this introduce helper
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
PCI reset was initiated by the AER driver.

Whereas previously the init logic guaranteed netdevs during reset, the
addition of idpf_detach_and_close() to the PCI callbacks flow makes it
possible for the function to be called without netdevs. Add check to
avoid NULL pointer dereference in that case.

Co-developed-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Jay Bhat <jay.bhat@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h      |   3 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  13 ++-
 drivers/net/ethernet/intel/idpf/idpf_main.c | 112 ++++++++++++++++++++
 3 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index 1d0e32e47e87..164d2f3e233a 100644
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
index 7988836fbae0..1e706beb0098 100644
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
@@ -1925,6 +1932,7 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
 		goto unlock_mutex;
 	}
 
+check_rst_complete:
 	/* Wait for reset to complete */
 	err = idpf_check_reset_complete(adapter, &adapter->reset_reg);
 	if (err) {
@@ -1984,7 +1992,8 @@ void idpf_vc_event_task(struct work_struct *work)
 	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
 		goto func_reset;
 
-	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
+	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags) ||
+	    test_bit(IDPF_PCI_CB_RESET, adapter->flags))
 		goto drv_load;
 
 	return;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index d99f759c55e1..54fca25c09f7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -234,6 +234,7 @@ static int idpf_cfg_device(struct idpf_adapter *adapter)
 	if (err)
 		pci_dbg(pdev, "PCIe PTM is not supported by PCIe bus/controller\n");
 
+	pci_save_state(pdev);
 	pci_set_drvdata(pdev, adapter);
 
 	return 0;
@@ -360,6 +361,116 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return err;
 }
 
+static void idpf_reset_prepare(struct idpf_adapter *adapter)
+{
+	pci_dbg(adapter->pdev, "resetting\n");
+	set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+	cancel_delayed_work_sync(&adapter->serv_task);
+	cancel_delayed_work_sync(&adapter->vc_event_task);
+	idpf_detach_and_close(adapter);
+	idpf_idc_issue_reset_event(adapter->cdev_info);
+	idpf_vc_core_deinit(adapter);
+}
+
+/**
+ * idpf_pci_err_detected - PCI error detected, about to attempt recovery
+ * @pdev: PCI device struct
+ * @err: err detected
+ *
+ * Return: %PCI_ERS_RESULT_NEED_RESET to attempt recovery,
+ * %PCI_ERS_RESULT_DISCONNECT if recovery is not possible.
+ */
+static pci_ers_result_t
+idpf_pci_err_detected(struct pci_dev *pdev, pci_channel_state_t err)
+{
+	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
+
+	/* Shutdown the mailbox if PCI I/O is in a bad state to avoid MBX
+	 * timeouts during the prepare stage.
+	 */
+	if (pci_channel_offline(pdev))
+		libie_ctlq_xn_shutdown(adapter->xnm);
+
+	idpf_reset_prepare(adapter);
+
+	if (err == pci_channel_io_perm_failure)
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
+	if (readl(adapter->reset_reg.rstat) != 0xFFFFFFFF)
+		return PCI_ERS_RESULT_RECOVERED;
+
+	return PCI_ERS_RESULT_DISCONNECT;
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
+	/* Force a PFR when resuming from PCI error. */
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
+	pci_dbg(pdev, "reset: done\n");
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
@@ -377,5 +488,6 @@ static struct pci_driver idpf_driver = {
 	.sriov_configure	= idpf_sriov_configure,
 	.remove			= idpf_remove,
 	.shutdown		= idpf_shutdown,
+	.err_handler		= &idpf_pci_err_handler,
 };
 module_pci_driver(idpf_driver);
-- 
2.37.3

