Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD000B48C6E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 13:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52EA442B55;
	Mon,  8 Sep 2025 11:43:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zKpcetUTn_yC; Mon,  8 Sep 2025 11:43:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF5294275A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757331836;
	bh=6f0Bww+anB3vxmP6VVrqSP1uhuf05NGpGWRklJ60p74=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cZlxSNJ5I9YsYAJoOxat8/vnzJqBGNhVMKp+lz5uxYqt0quN6b1iWRCLb2EwrwzYK
	 CvydNeS2LCUjlISLbil+25GWgq5bw45f3H7PTzws/6vZaBNTkfx85wiIsjD04uIvXa
	 UgAiLwGAoLfOSO1a7z6KP0jVG27xd1pZwNMIMOYDg2QsKfJUaKs0hgITZZmSum/tx+
	 CdpPcSFHZ2LZiqFiWBcm2Yxrvth4S2RDm+ee3t140yfe9M7kuU0PVujWZ9EyqTS/V8
	 v6I5A0Bba2LFYIY/eKdxnmnuHslYDC9s9G+YBWLMi8UejOH5XiPz3EvISKY5D7/TC8
	 IEylDDrJ6pYLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF5294275A;
	Mon,  8 Sep 2025 11:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D6401D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23C798469E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2bGX6QCCNjqW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7F5BB8454B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F5BB8454B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F5BB8454B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
X-CSE-ConnectionGUID: CdnQFCx7R3ypWiXcKyHgvg==
X-CSE-MsgGUID: ca2C50EoQ0i8hiBUGmyN7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63412837"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63412837"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:43:53 -0700
X-CSE-ConnectionGUID: PYbwz/gySpaq9McUCDIZrA==
X-CSE-MsgGUID: j+51e6ORQ1GhghtfBg7Slw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177126092"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 08 Sep 2025 04:43:52 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon,  8 Sep 2025 13:26:29 +0200
Message-Id: <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757331833; x=1788867833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xec1VPGHlx9EpynMQeGA+2Z16GYEO+EPbYhiVsEFspk=;
 b=OPEj/3jTc/J/+HlsbITvHGmdzqTVdVpD6qS3t86O0A2oSVUKwJCxqO6C
 kGtZVtB621fnNX0jNRDEgPmjhAlgPHS43DHZRZpIYgnjYoeOcE/NHYtHr
 aBMcQz6Gi0rvIqi9ezXBESrDp0ho/Oxxb7LcB/qb8clXTA8sWz6BvYfeh
 B8DangWFabTmuK4Qc93XF7amQAwEzwRKw/ik6QjaShf6Y6Zrf3i9ngqT+
 G4nCxVCh/oUdigqeXI8txx+SUQ7FfpNajimC0wQS+zPdvfon8UfeFAMD/
 ccz8Ia7UJkQYiNvKN/UMwiHux0EphlMvaQwYedEbUW3kh4vw2C5kACRoS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OPEj/3jT
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy aci.lock
 later within ixgbe_remove path
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

There's another issue with aci.lock and previous patch uncovers it.
aci.lock is being destroyed during removing ixgbe while some of the
ixgbe closing routines are still ongoing. These routines use Admin
Command Interface which require taking aci.lock which has been already
destroyed what leads to call trace.

[  +0.000004] DEBUG_LOCKS_WARN_ON(lock->magic != lock)
[  +0.000007] WARNING: CPU: 12 PID: 10277 at kernel/locking/mutex.c:155 mutex_lock+0x5f/0x70
[  +0.000002] Call Trace:
[  +0.000003]  <TASK>
[  +0.000006]  ixgbe_aci_send_cmd+0xc8/0x220 [ixgbe]
[  +0.000049]  ? try_to_wake_up+0x29d/0x5d0
[  +0.000009]  ixgbe_disable_rx_e610+0xc4/0x110 [ixgbe]
[  +0.000032]  ixgbe_disable_rx+0x3d/0x200 [ixgbe]
[  +0.000027]  ixgbe_down+0x102/0x3b0 [ixgbe]
[  +0.000031]  ixgbe_close_suspend+0x28/0x90 [ixgbe]
[  +0.000028]  ixgbe_close+0xfb/0x100 [ixgbe]
[  +0.000025]  __dev_close_many+0xae/0x220
[  +0.000005]  dev_close_many+0xc2/0x1a0
[  +0.000004]  ? kernfs_should_drain_open_files+0x2a/0x40
[  +0.000005]  unregister_netdevice_many_notify+0x204/0xb00
[  +0.000006]  ? __kernfs_remove.part.0+0x109/0x210
[  +0.000006]  ? kobj_kset_leave+0x4b/0x70
[  +0.000008]  unregister_netdevice_queue+0xf6/0x130
[  +0.000006]  unregister_netdev+0x1c/0x40
[  +0.000005]  ixgbe_remove+0x216/0x290 [ixgbe]
[  +0.000021]  pci_device_remove+0x42/0xb0
[  +0.000007]  device_release_driver_internal+0x19c/0x200
[  +0.000008]  driver_detach+0x48/0x90
[  +0.000003]  bus_remove_driver+0x6d/0xf0
[  +0.000006]  pci_unregister_driver+0x2e/0xb0
[  +0.000005]  ixgbe_exit_module+0x1c/0xc80 [ixgbe]

Same as for the previous commit, the issue has been highlighted by the
commit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path").

Move destroying aci.lock to the end of ixgbe_remove(), as this
simply fixes the issue.

Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 18cae81dc794..4aa4ca603584 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11891,10 +11891,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	set_bit(__IXGBE_REMOVING, &adapter->state);
 	cancel_work_sync(&adapter->service_task);
 
-	if (adapter->hw.mac.type == ixgbe_mac_e610) {
+	if (adapter->hw.mac.type == ixgbe_mac_e610)
 		ixgbe_disable_link_status_events(adapter);
-		mutex_destroy(&adapter->hw.aci.lock);
-	}
 
 	if (adapter->mii_bus)
 		mdiobus_unregister(adapter->mii_bus);
@@ -11954,6 +11952,9 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	disable_dev = !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
 	free_netdev(netdev);
 
+	if (adapter->hw.mac.type == ixgbe_mac_e610)
+		mutex_destroy(&adapter->hw.aci.lock);
+
 	if (disable_dev)
 		pci_disable_device(pdev);
 }
-- 
2.31.1

