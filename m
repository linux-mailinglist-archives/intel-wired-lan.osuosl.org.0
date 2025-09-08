Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDD9B48C6D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 13:43:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BF4C61C6D;
	Mon,  8 Sep 2025 11:43:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zL2CxdrPunFl; Mon,  8 Sep 2025 11:43:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0689361C50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757331835;
	bh=tfE6ypPtzQwGMiYYfdLwAziF9MZxYtjz6HjcGN2z3R8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f4aGFnnQjNb5+Pe7WqaKDJXXOb0m76+X4/qcxpc9rkcXEnERipUVNw7SZ05QcL5YF
	 +jtd54w0Q5xLauGwx/KlCGNlA3sTfDxNaIwLq54G4s91U8QiDNuvoKBMd2LVf5slE7
	 hfGaEnrGTTew6WEr/1SgLF9hCotxLm51+6mzvtGE3NTy2IN1jnqV2s5Q+UFjygGNo8
	 B0Swfhp+2B4yTS66JFngBIRe0kPpvCrfNIjH9+mmcLr6S/9b/vdIE0S+Kz8+8ne/xZ
	 Xoj+Lvgh55k8oY+1JtDxNuJ28SPu6M6bkIw/Q84gjWkiU6Ehpiq07QI/7T9YU8zzH6
	 YE5sVGd7FzNrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0689361C50;
	Mon,  8 Sep 2025 11:43:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3843CCA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A1DF8454B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vA77_jQ38QZ2 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 11:43:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 216FC84EEE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 216FC84EEE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 216FC84EEE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 11:43:52 +0000 (UTC)
X-CSE-ConnectionGUID: Atn7JYVnQ2OE7H+RStFuLQ==
X-CSE-MsgGUID: 7faNYaFNS+i9DAicKhO/rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63412832"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63412832"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:43:52 -0700
X-CSE-ConnectionGUID: dBSk5JCrQPGAQpWrxE/XYA==
X-CSE-MsgGUID: eRlHJ7igTCKapZAXWmW+9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177126087"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa005.fm.intel.com with ESMTP; 08 Sep 2025 04:43:50 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  8 Sep 2025 13:26:28 +0200
Message-Id: <20250908112629.1938159-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757331832; x=1788867832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQQcZdyB8cFgE8DjxHPhBobrOqtO5wT7FEQdEatMaTs=;
 b=U14b1kHd8Fz+/p8hMRvQF59Ho3B/IccZA+by+VfmMn89mIVA9J7ev/XV
 ZKRukPppK7d5jRhGzND067hSLdPdQvcSG+9VR+36ksrTowgTK5ZWCcpka
 gTj/6/RYJ+gaOzk69fk383DJ5z14a3V59FJ26I9K96hPY9hzsqEn5z2u/
 RLGSl2S0cpjDPryC36KB9e0SS5lbwpTi9w9amIrj1pQ3f/9mlEt3gBB6K
 1vXA/sBG8AKki5wz2Mf8RoSMO/5b1eHKfbR+fSK6aPxFkZTEXQqGzLda/
 BWQgf/K/dVMkV6HjmoNzeVoxjHuWHiWHbqpD2//5bKBk3LKruCGM86B/M
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U14b1kHd
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ixgbe: initialize aci.lock
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
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
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
-- 
2.31.1

