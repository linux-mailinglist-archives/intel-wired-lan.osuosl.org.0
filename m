Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eMCLKyD/M2pNKgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 16:22:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEF26A0E8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 16:22:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qzT97Of7;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 192EE41405;
	Thu, 18 Jun 2026 14:22:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JSINotm0sIMS; Thu, 18 Jun 2026 14:22:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B1B741410
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781792538;
	bh=0a8Ji3Ohv29ElS8p0IfHeWjnVCGqMfxzFgJ9Xv/3xL4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qzT97Of7Fcflsqhjp1Z/7ffTnMzEpbPnWqLnGpPOh5DUuiD1bptpTQnYAKNNt0DWf
	 xl2XLzNAlCqLGOyniSBFR/yyV9nNm/GjzQ7g7B1l8q4kyeDXvk5HGHKbYsxfyAFk27
	 YkVShY+zb2ZCw/zWjqSYe/AJBuJ4ltwjarDJCyTruxapniuLboHl6MjilwBCxGFWnS
	 oUHSfoj6/furdLAF2Y93JYP9wKgG4GSoEtGzMo4XwzkycNBv5TZkOiu9ghr0awGG4f
	 IjkXHl461CdoO9hNkj4siG8dqO5fFuNZKGWRfVW3n93ec18sDkQN7yAE7JRHNsPhZn
	 kunKCHkNul4rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B1B741410;
	Thu, 18 Jun 2026 14:22:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13E15131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE7A561167
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:22:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YR7HTdiX2zjC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 14:22:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B19006115B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B19006115B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B19006115B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 14:22:15 +0000 (UTC)
X-CSE-ConnectionGUID: EnyFSJEMRzey/arS8Qfx3Q==
X-CSE-MsgGUID: cRug6WNbSXeQz0ULUxRvNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82629616"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82629616"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 07:22:14 -0700
X-CSE-ConnectionGUID: sLWbe4QjT8eXL7UIu4bBjQ==
X-CSE-MsgGUID: vBv+ppFORd+Xs4uDnzakJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="244214810"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa010.fm.intel.com with ESMTP; 18 Jun 2026 07:22:13 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	pmenzel@molgen.mpg.de
Date: Thu, 18 Jun 2026 14:22:12 +0000
Message-ID: <20260618142212.310475-1-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781792536; x=1813328536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iq3Ezql0D49y86sPQaYvb4jHBq6U1dI1ce9k61tPxSI=;
 b=LqbIHfFjYuZHZwK5/fWJndl7F+ewYHufXinRw0u7cNyeJ8tzJKSJoLE7
 saoWiT2/Bhlam27Wf/pTi5zdnNcrsonEbCT1Ub6850H0V6zoZQdEMgdyL
 uMlrKfPRj2LlpL7NQorVLILf+4rvGGykUvkB0pddjFQ3HqCGxeFeCtu1C
 JSTn5xsd/gv7zautZrEB6NhB1WY/pjSLTPcFWWoYfAHR68AxxODXnrvpF
 7696FB4ydA+mnXbog0BcgSM0Za4tfCHYtKFooWLVd6e8gW16vCNjjItWk
 bQ+IDiqNKwfeyqdYs9CyVpSH+fZc9RXlzru99xwg0kDliUf2afk4tqvIO
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LqbIHfFj
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Implement PCI reset
 handler
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0EEF26A0E8A

Implement PCI device reset handler to allow the network device to
get re-initialized and function after a PCI-level reset.

This is necessary for the adapter to avoid TX queue timeouts
occurring when the PCI reset is initiated via sysfs during
the operation

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---

Previous version: https://lore.kernel.org/netdev/MW4PR11MB6864BC9CA84F060AF7E0248480E42@MW4PR11MB6864.namprd11.prod.outlook.com/
v1->v2 changes: Rearranged the order of operations, switched to poll_timeout_us() macro

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 82 +++++++++++++++++++
 2 files changed, 83 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 594ccb28da20..c4b0c5bb89c6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -912,6 +912,7 @@ enum ixgbe_state_t {
 	__IXGBE_PTP_TX_IN_PROGRESS,
 	__IXGBE_RESET_REQUESTED,
 	__IXGBE_PHY_INIT_COMPLETE,
+	__IXGBE_PCIE_RESET_IN_PROGRESS,
 };
 
 struct ixgbe_cb {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2ac274c73d61..0fb64aef223e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -12352,6 +12352,86 @@ static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
 	return result;
 }
 
+/* 1500 us poll interval */
+#define IXGBE_RESET_PREP_POLL_INTERVAL_US 1500
+/* 2 second timeout to acquire reset lock before proceeding */
+#define IXGBE_RESET_PREP_TIMEOUT_US 2000000
+
+/**
+ * ixgbe_reset_prep - called before the pci bus is reset.
+ * @pdev: Pointer to PCI device
+ *
+ * Prepare the card for a reset, preventing the service task from running.
+ */
+static void ixgbe_reset_prep(struct pci_dev *pdev)
+{
+	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	if (poll_timeout_us(test_and_set_bit(__IXGBE_RESETTING, &adapter->state),
+			    test_bit(__IXGBE_RESETTING, &adapter->state),
+			    IXGBE_RESET_PREP_POLL_INTERVAL_US,
+			    IXGBE_RESET_PREP_TIMEOUT_US, false)) {
+		/* ixgbe_reset_done() will exit early if this happens.
+		 * A retry will be needed
+		 */
+		e_err(drv, "Timed out waiting for __IXGBE_RESETTING to be released. Reset is needed\n");
+		return;
+	}
+
+	/* Sync __IXGBE_RESETTING */
+	smp_mb__after_atomic();
+
+	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
+		/* Prevent the service task from being requeued in the timer callback */
+		timer_delete_sync(&adapter->service_timer);
+		/* Cancel any possibly queued service task */
+		cancel_work_sync(&adapter->service_task);
+	}
+
+	pci_clear_master(pdev);
+
+	set_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state);
+}
+
+/**
+ * ixgbe_reset_done - called after the pci bus has been reset.
+ * @pdev: Pointer to PCI device
+ *
+ * Allow the service task to run and schedule re-initialization.
+ */
+static void ixgbe_reset_done(struct pci_dev *pdev)
+{
+	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
+
+	if (!adapter)
+		return;
+
+	if (!test_and_clear_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state)) {
+		/* Should never get here */
+		e_err(drv, "Reset done called without PCIe reset in progress\n");
+		return;
+	}
+
+	pci_set_master(pdev);
+
+	/* Allow the service task to run */
+	if (!test_bit(__IXGBE_REMOVING, &adapter->state)) {
+		clear_bit(__IXGBE_RESETTING, &adapter->state);
+		/* Sync __IXGBE_RESETTING */
+		smp_mb__after_atomic();
+	}
+
+	/* Schedule re-initialization */
+	if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
+		set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
+		if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state))
+			mod_timer(&adapter->service_timer, jiffies + 1);
+	}
+}
+
 /**
  * ixgbe_io_resume - called when traffic can start flowing again.
  * @pdev: Pointer to PCI device
@@ -12384,6 +12464,8 @@ static const struct pci_error_handlers ixgbe_err_handler = {
 	.error_detected = ixgbe_io_error_detected,
 	.slot_reset = ixgbe_io_slot_reset,
 	.resume = ixgbe_io_resume,
+	.reset_prepare = ixgbe_reset_prep,
+	.reset_done = ixgbe_reset_done,
 };
 
 static DEFINE_SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);
-- 
2.53.0

