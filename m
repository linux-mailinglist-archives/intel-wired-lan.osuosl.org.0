Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD752ADB28A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 15:52:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6FD998048E;
	Mon, 16 Jun 2025 13:52:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2uS88kWiFdN; Mon, 16 Jun 2025 13:52:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5BA380532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750081954;
	bh=ZqgJTIhg7iSMIBl5K+qfEaosU7aiutQuyXZGQz/k4Oo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SYU3N+v5OpfTs/AYZH5sCrta5MfndXfpXnzZPAKnO9nj/4PXYjKuPPJCtmHyDe0eu
	 1fCwJSvpGd6eRq+nNA0LAAD/FsSUnF1lnV5l/bBa+ur0duXgohHSaoIqaDDdrgHsW5
	 UdFp60ln80ktH5xiMUYBSJ37QhF1rJbs8Lw6VYBoxN58T3E3JoQy5Y043A4qDkLHGw
	 J6WiXi42yIMpjfgY1KVfslr2DXgct01i6+/OWempdWLio3yFdGxIXodF1tRPA6eTIC
	 /qV28RpUprqMqcTDLHGiuu89+7yHl7xkWMOFCJZGHFVJLgZ0FpTqzIbAUQ5/8WmlrD
	 JOkHn+x6bjsYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5BA380532;
	Mon, 16 Jun 2025 13:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F03216B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 13:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B4B280D8A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 13:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KQi38zUywxqL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 13:52:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E58B680CB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E58B680CB4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E58B680CB4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 13:52:31 +0000 (UTC)
X-CSE-ConnectionGUID: BEHyJCJhRXSps25vY5MmNw==
X-CSE-MsgGUID: Gg+5vfjjREySH9EmaWY0WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="74758752"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="74758752"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 06:52:26 -0700
X-CSE-ConnectionGUID: ZBlJptONQkaeR5d+jI1KUg==
X-CSE-MsgGUID: VJnSZJrpSKeMAIz1gubSjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="148382406"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa007.fm.intel.com with ESMTP; 16 Jun 2025 06:52:24 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 16 Jun 2025 15:36:36 +0200
Message-Id: <20250616133636.1304288-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750081952; x=1781617952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tmGIZrqUdKwsTfypfMjWY4BiQcvZrniX9b2OdyQnEfA=;
 b=NaU3XpiDCsCm2XuDaCgo/Vv1CSNxOOYOP4LY+iyG6ThhWmgwHFVllYrs
 GYcxeDnUVq12mv99Sx7r5pQob/hlI7TiO6satvE1OywaE7OrBM+Wauj50
 eOv2XF2elvJfPqI7HUQiL28si5+mzl+7/QXVyMbN/yksHDgwH8ayi1CY/
 4hLjrG06GU/rSuexYhIxa3Mb8Iu92FgR+nJE0C+4ohViLuIJBqQqe+dIB
 dNqQfzPbDBDeIdwiBuXBJawhwoFX7aCtwEEUtzzOwut5F6aC9QCVxoYYw
 0GJYj52GrCFxii8s8V81P5N6ynhgK2xmvRoqps/GQ2YW/c6UYGhOF4hZl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NaU3XpiD
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: initialize aci.lock
 before it's used
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

Currently aci.lock is initialized too late. A bunch of ACI callbacks
using the lock are called prior it's initialized.

Commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path")
highlights that issue what results in call trace.

[    4.092899] DEBUG_LOCKS_WARN_ON(lock->magic != lock)
[    4.092910] WARNING: CPU: 0 PID: 578 at kernel/locking/mutex.c:154 mutex_lock+0x6d/0x80
[    4.098757] Call Trace:
[    4.098847]  <TASK>
[    4.098922]  ixgbe_aci_send_cmd+0x8c/0x1e0 [ixgbe]
[    4.099108]  ? hrtimer_try_to_cancel+0x18/0x110
[    4.099277]  ixgbe_aci_get_fw_ver+0x52/0xa0 [ixgbe]
[    4.099460]  ixgbe_check_fw_error+0x1fc/0x2f0 [ixgbe]
[    4.099650]  ? usleep_range_state+0x69/0xd0
[    4.099811]  ? usleep_range_state+0x8c/0xd0
[    4.099964]  ixgbe_probe+0x3b0/0x12d0 [ixgbe]
[    4.100132]  local_pci_probe+0x43/0xa0
[    4.100267]  work_for_cpu_fn+0x13/0x20
[    4.101647]  </TASK>

Move aci.lock mutex initialization to ixgbe_sw_init() before any ACI
command is sent. Along with that move also related SWFW semaphore in
order to reduce size of ixgbe_probe() and that way all locks are
initialized in ixgbe_sw_init().

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 03d31e5b131d..18cae81dc794 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6801,6 +6801,13 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 		break;
 	}
 
+	/* Make sure the SWFW semaphore is in a valid state */
+	if (hw->mac.ops.init_swfw_sync)
+		hw->mac.ops.init_swfw_sync(hw);
+
+	if (hw->mac.type == ixgbe_mac_e610)
+		mutex_init(&hw->aci.lock);
+
 #ifdef IXGBE_FCOE
 	/* FCoE support exists, always init the FCoE lock */
 	spin_lock_init(&adapter->fcoe.lock);
@@ -11473,10 +11480,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto err_sw_init;
 
-	/* Make sure the SWFW semaphore is in a valid state */
-	if (hw->mac.ops.init_swfw_sync)
-		hw->mac.ops.init_swfw_sync(hw);
-
 	if (ixgbe_check_fw_error(adapter))
 		return ixgbe_recovery_probe(adapter);
 
@@ -11680,8 +11683,6 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	ether_addr_copy(hw->mac.addr, hw->mac.perm_addr);
 	ixgbe_mac_set_default_filter(adapter);
 
-	if (hw->mac.type == ixgbe_mac_e610)
-		mutex_init(&hw->aci.lock);
 	timer_setup(&adapter->service_timer, ixgbe_service_timer, 0);
 
 	if (ixgbe_removed(hw->hw_addr)) {
@@ -11837,9 +11838,9 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	devl_unlock(adapter->devlink);
 	ixgbe_release_hw_control(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
+err_sw_init:
 	if (hw->mac.type == ixgbe_mac_e610)
 		mutex_destroy(&adapter->hw.aci.lock);
-err_sw_init:
 	ixgbe_disable_sriov(adapter);
 	adapter->flags2 &= ~IXGBE_FLAG2_SEARCH_FOR_SFP;
 	iounmap(adapter->io_addr);

base-commit: a76bd1156de9fd1d4be4502cbb5160a709ff4cd7
-- 
2.31.1

