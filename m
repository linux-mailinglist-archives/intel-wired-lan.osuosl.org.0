Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0406ACEAA3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jun 2025 09:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7233860817;
	Thu,  5 Jun 2025 07:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7N1M68vsxZXY; Thu,  5 Jun 2025 07:06:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80B1D6081C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749107185;
	bh=imPEb+hzDbQ9S4a2ifXtWyb/NuON1JNhicgJfJS0Nyk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xnGlbbwmDfB7fjO+iTuxn7AmLpiT2pkzgYUzF1i3vW2LegmuGQVgqGwZ19oQP8bu/
	 rGCcC9CuLtlskBUM/pQg1aO4sUSb9NrCot0DcHUiiIz4x1pBZtGaQ+QfT59w8rlTGh
	 /3LcwTW8bZO/tXs583jc+BFePdeLWejjLEswsOcamnqGrF8xhWiKBzOM2llWnmejKq
	 kcCSZCYpUz7LFy5fkt00KKLpoXQ2sF1q7RDyn+SGzG+B/zeZ8Dx/iT/iY2sJlkIUba
	 J29z6fhfy1kn93LmX/zSILhCwM4QxhKCKSGK1VSLHkXa6Nlwa7rK0FvWjzsinEc/oD
	 /eRzBf0gLBxlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80B1D6081C;
	Thu,  5 Jun 2025 07:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A3539DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 07:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9EFF482EA1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jun 2025 07:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BRPw_Ulk29Ah for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jun 2025 07:06:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4176582C8E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4176582C8E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4176582C8E
 for <intel-wired-lan@osuosl.org>; Thu,  5 Jun 2025 07:06:22 +0000 (UTC)
X-CSE-ConnectionGUID: Ldi4KYChQ/mXW3G/FzDqJA==
X-CSE-MsgGUID: zfzPK8wCQ16dAnmx9+Nbsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51127987"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51127987"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 00:06:22 -0700
X-CSE-ConnectionGUID: 6VgujRe4R829yxgGRXTQvA==
X-CSE-MsgGUID: +w7+D/gsTfiTObY+1bNJqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168588755"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 00:06:21 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Thu,  5 Jun 2025 10:06:17 +0300
Message-Id: <20250605070617.184882-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749107183; x=1780643183;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1agS8LR3tBuHfaWH0iHC+CVJd6ABV01/tcDdiCgT/XY=;
 b=idvdS/ohkASOZjQly+Gjqyq4DvuaVJ5wyJ646tMXWa8e0cuoBxxqOldo
 BKjV8YDVkseGX/YuQ8oC1vtKgeFj0w296v2/ymlqUFZdu7EszQGHT57tP
 cuVNeTHjSuFK8E9FI8yVZnHzM2qyESmYdzY3hiSL3i0Lk5O2rGzzCPewz
 8IPj7xyB5IPLcRjeCVg1OYu6o/80CGdqZxYWWHkqm8R8OLL8kSDOvmlls
 Jc9hbTFSqVorMTw2xqa9/XTpji6+Dq4kTZRmPc0iI4E2FqgFPJpkMPGrz
 HdPYVuPlKO5gRQS6hoPgp7LAtZF5op3EbI1dREbZC8H6LjcvZvr3EVK0I
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=idvdS/oh
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: disable L1.2 PCI-E
 link substate to avoid performance issue
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

I226 devices advertise support for the PCI-E link L1.2 substate. However,
due to a hardware limitation, the exit latency from this low-power state
is longer than the packet buffer can tolerate under high traffic
conditions. This can lead to packet loss and degraded performance.

To mitigate this, disable the L1.2 substate during both probe and resume
flows.

Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Fixes: 43546211738e ("igc: Add new device ID's")
---
 drivers/net/ethernet/intel/igc/igc_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27575a1e1777..65ec705eac33 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7074,6 +7074,8 @@ static int igc_probe(struct pci_dev *pdev,
 	const struct igc_info *ei = igc_info_tbl[ent->driver_data];
 	int err;
 
+	pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
+
 	err = pci_enable_device_mem(pdev);
 	if (err)
 		return err;
@@ -7498,6 +7500,8 @@ static int __igc_resume(struct device *dev, bool rpm)
 	pci_enable_wake(pdev, PCI_D3hot, 0);
 	pci_enable_wake(pdev, PCI_D3cold, 0);
 
+	pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
+
 	if (igc_init_interrupt_scheme(adapter, true)) {
 		netdev_err(netdev, "Unable to allocate memory for queues\n");
 		return -ENOMEM;
@@ -7623,6 +7627,7 @@ static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
 		pci_enable_wake(pdev, PCI_D3hot, 0);
 		pci_enable_wake(pdev, PCI_D3cold, 0);
 
+		pci_disable_link_state_locked(pdev, PCIE_LINK_STATE_L1_2);
 		/* In case of PCI error, adapter loses its HW address
 		 * so we should re-assign it here.
 		 */
-- 
2.34.1

