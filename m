Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mlMOE1bPUGp95QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:54:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C290739E00
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:54:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=sz7bysqp;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A8AE409D9;
	Fri, 10 Jul 2026 10:54:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PmiiHSo13uYD; Fri, 10 Jul 2026 10:54:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DDC6409D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783680851;
	bh=uNDYFJo13GPs6I7uspL6frmDhi8HsKAoCmHcJjw/5D0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sz7bysqpefysADjN8xZ5lausaOHdI3a7g0hXMjFzdayJfPIN4y2YGYhhCrgaoth7i
	 Gqptb5wFSw1M1cJwzbtYbFERJXTg28b0j7axsJOuMGVmgu8d0foGY9UqWCIsxKWA+n
	 ow+wwf0TkafxpTvKZ127cA4X1Mvee0N7ybLoZHdfb42fc8rZJN6N4tIo5ipv2i3blL
	 9AbROz+iaWaHOw8ZJ+idebTX+mLq7rYCX4tYiygx8PbjbP3yl4Jl2uKMEnki8b9tki
	 8TGhzo5Vdsi0X1OX+yzKDrc4zQbWWW/GukepdDsVm/rzKDUbR2rdd1ctGGtglbGoAs
	 6GHTeydLEyTYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DDC6409D5;
	Fri, 10 Jul 2026 10:54:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 157792FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0F1B81184
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLpEr81CUYwK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:54:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C7E3081174
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7E3081174
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C7E3081174
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:07 +0000 (UTC)
X-CSE-ConnectionGUID: B9efJzNvSC6L+9cwKKb1Iw==
X-CSE-MsgGUID: pZtBiN4pT4eAuYjboiqP9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86920270"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="86920270"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:54:07 -0700
X-CSE-ConnectionGUID: XEwqCZbuTB2AhqO+6IkBmw==
X-CSE-MsgGUID: lAfzOR/UQHuZ3JjkMszCVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259750960"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa005.fm.intel.com with ESMTP; 10 Jul 2026 03:54:06 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Fri, 10 Jul 2026 10:54:03 +0000
Message-ID: <20260710105403.1050025-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710105403.1050025-1-sergey.temerkhanov@intel.com>
References: <20260710105403.1050025-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783680848; x=1815216848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v+lj4eItScpbsuUVoYJ361waa9gsm1oFYCEJ7e2DDWI=;
 b=ithvUoiKwC3V6wtEQN5ItO9qXpL98VlUjDuLCebn74yMSqyi4WF5Oduq
 c59GbNE11io/SjUOqs9JBFb5XJ+a9tjgOdUVN3TjC0kHmfRSIQGdiJ/1Y
 fGWCU0roxXh9Yzj7rV+OBiJVN58Fn/4CAeQNY8cJuK7SkizQgvuFem56n
 bFDiVoBOfX3hz0GR2XIabmqJHVBQNRE1XibEr4FPpfcyXj5euMqSLEnZU
 xqrhkKzg/MDBsib5i3j9QlKKZ92ZUgC1+V7UEzJeTd2rXNOV+CkkpOdXS
 6hmtRQkhdH1CzeZ3kS9R6Tu4ia0mN9zQnEG+q3GX2em9y0f/lnQa/ONqC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ithvUoiK
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/2] ixgbe: Implement PCI
 reset handler
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C290739E00

Implement PCI device reset handler to allow the network device to
get re-initialized and function after a PCI-level reset.

This is necessary for the adapter to avoid TX queue timeouts
occurring after the PCI reset is performed via sysfs during
its operation.

The reset codepath may trigger a number of dependencies in the
reset of the driver, so that it is necessary to check if
the netdev is present and running there.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 42dac766c907..1865b604ace7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -12358,6 +12358,94 @@ static pci_ers_result_t ixgbe_io_slot_reset(struct pci_dev *pdev)
 	return result;
 }
 
+/**
+ * ixgbe_pci_reset_prepare - called before the pci bus is reset.
+ * @pdev: Pointer to PCI device
+ *
+ * Quiesce the driver in preparation for a PCI function reset. Called from
+ * pci_dev_save_and_disable() before the core saves config state and writes
+ * PCI_COMMAND_INTX_DISABLE to clear bus mastering and MMIO decode, so MMIO
+ * access to the device is still valid here.
+ */
+static void ixgbe_pci_reset_prepare(struct pci_dev *pdev)
+{
+	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
+	struct net_device *netdev;
+
+	if (!adapter)
+		return;
+
+	netdev = adapter->netdev;
+
+	rtnl_lock();
+	netif_device_detach(netdev);
+	if (netif_running(netdev))
+		ixgbe_close_suspend(adapter);
+	rtnl_unlock();
+
+	/* __IXGBE_RESETTING is intentionally not set here: it is spun on
+	 * while holding rtnl by ixgbe_reinit_locked(), ixgbe_dcbnl_devreset()
+	 * and the ethtool reset paths, so holding it across the rtnl drop
+	 * would deadlock those callers against ixgbe_pci_reset_done(), which
+	 * needs to re-acquire rtnl.  During the reset window concurrent
+	 * rtnl-holding paths must treat the netdev as detached, while teardown
+	 * paths also observe __IXGBE_DOWN set by ixgbe_down() via
+	 * ixgbe_close_suspend(), matching the existing ixgbe_io_error_detected()
+	 * flow.
+	 */
+
+	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
+		/* The service timer was already stopped by ixgbe_down() via
+		 * ixgbe_close_suspend(); if the netdev was not running, the
+		 * timer is not armed.  Only the currently queued service task
+		 * (if any) still needs to be flushed here.
+		 */
+		cancel_work_sync(&adapter->service_task);
+		clear_bit(__IXGBE_SERVICE_SCHED, &adapter->state);
+	}
+}
+
+/**
+ * ixgbe_pci_reset_done - called after the pci bus has been reset.
+ * @pdev: Pointer to PCI device
+ *
+ * Re-initialize the device after a PCI function reset. The PCI core has
+ * already called pci_restore_state() before invoking this callback, so the
+ * saved Command register (including bus mastering) is back in place.
+ */
+static void ixgbe_pci_reset_done(struct pci_dev *pdev)
+{
+	struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
+	struct net_device *netdev;
+	bool running;
+	int err = 0;
+
+	if (!adapter)
+		return;
+
+	netdev = adapter->netdev;
+
+	rtnl_lock();
+	adapter->hw.hw_addr = adapter->io_addr;
+	ixgbe_reset(adapter);
+	IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
+	running = netif_running(netdev);
+	if (running) {
+		err = ixgbe_open(netdev);
+		if (err) {
+			e_dev_err("Cannot re-open netdev after PCI reset: %d. A new reset is needed.\n",
+				  err);
+			dev_close(netdev);
+		}
+	}
+	/* Restore presence so userspace can retry later. If ixgbe_open() failed,
+	 * dev_close() cleared IFF_UP first so netif_device_attach() will not wake
+	 * Tx queues without a successful open.
+	 */
+	netif_device_attach(netdev);
+	rtnl_unlock();
+}
+
 /**
  * ixgbe_io_resume - called when traffic can start flowing again.
  * @pdev: Pointer to PCI device
@@ -12390,6 +12478,8 @@ static const struct pci_error_handlers ixgbe_err_handler = {
 	.error_detected = ixgbe_io_error_detected,
 	.slot_reset = ixgbe_io_slot_reset,
 	.resume = ixgbe_io_resume,
+	.reset_prepare = ixgbe_pci_reset_prepare,
+	.reset_done = ixgbe_pci_reset_done,
 };
 
 static DEFINE_SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend, ixgbe_resume);
-- 
2.53.0

