Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B035667E3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 12:26:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 867F140982;
	Tue,  5 Jul 2022 10:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 867F140982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657016779;
	bh=84KWXLh6vqHBMojxNKhss4Va5ccTMHmU677v8KfHyBE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vOZEIL7XzhUa9PMPRcuto0IxibnRhLDztoolWTtrc+Oj+2hiMxIIK0oJqIY+QlE4+
	 d0iZvPDwHjApVuYmtQ8RbnvCZ52c2zxydqLW/IYfPDmXyG2h13G2J4qEq1N/bsbfij
	 hIVVy7Xp/h+ggABLI0vFt6D6ep8UZzdopaCvTtkTt6mbqkjAVyzXLbRJhpmHvweJUe
	 neDCybcqFE66ErRwrIc16g8fEJAlaPJy1al5HA6nmKFzIE0RaXtlOWhrSlRD0UKZPk
	 nUeuVxnz7Ardk2de07rEVbTqaIq3OQbqvLpDe39mIgezRb4J2Sfl9DqrJm3PbAhQoz
	 MXX6jDPIPjD9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kytj4lMe8B4z; Tue,  5 Jul 2022 10:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1F3D4099A;
	Tue,  5 Jul 2022 10:26:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1F3D4099A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 607C01BF314
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 390684099A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 390684099A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uJxm9RKwTGI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 10:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 713A340982
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 713A340982
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 10:26:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="282073249"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="282073249"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:26:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="542902450"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:26:02 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Jul 2022 12:22:05 +0200
Message-Id: <20220705102205.25511-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.35.0.rc0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657016770; x=1688552770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y8ZoR7a/DAG7d2UQjaqgrqwiURlZLtZuB6UGgVY14T0=;
 b=kWnoRY5rt5X/wm4rlZl4DqOO6Um8KruOWPwcXZbZdMAbg5WiDaZQl12N
 jQ2VHbQ6T0+2WfmWDYuEyt1naaxtf6tlGjFHsJNez0cCwbFR/48Essw1H
 XyW8SStarlBdBi0Q3CbiiVq4bvYvtienbnHC+yB888H77DgHkX5QXOcZV
 BfFWUXcviwuMERUfFvPHE8frUVFu8k3st28y9rbGw7+Q6FIlorQXYkur3
 plmfK5wV4DoRt3EQJiF8R8QPJDS/ityl4UZsm/DtPE9HVgTD1g6DtFdGG
 NmPv+WCXS9QymFH0tnFSpuRvZnYSYmfXbjT1fGsosJ9nVrTOxUZ+Tj2qw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kWnoRY5r
Subject: [Intel-wired-lan] [PATCH net v4] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
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
Cc: Piotr Skajewski <piotrx.skajewski@intel.com>, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It is possible to disable VFs while the PF driver is processing requests
from the VF driver.  This can result in a panic.

BUG: unable to handle kernel paging request at 000000000000106c
PGD 0 P4D 0
Oops: 0000 [#1] SMP NOPTI
CPU: 8 PID: 0 Comm: swapper/8 Kdump: loaded Tainted: G I      --------- -
Hardware name: Dell Inc. PowerEdge R740/06WXJT, BIOS 2.8.2 08/27/2020
RIP: 0010:ixgbe_msg_task+0x4c8/0x1690 [ixgbe]
Code: 00 00 48 8d 04 40 48 c1 e0 05 89 7c 24 24 89 fd 48 89 44 24 10 83 ff
01 0f 84 b8 04 00 00 4c 8b 64 24 10 4d 03 a5 48 22 00 00 <41> 80 7c 24 4c
00 0f 84 8a 03 00 00 0f b7 c7 83 f8 08 0f 84 8f 0a
RSP: 0018:ffffb337869f8df8 EFLAGS: 00010002
RAX: 0000000000001020 RBX: 0000000000000000 RCX: 000000000000002b
RDX: 0000000000000002 RSI: 0000000000000008 RDI: 0000000000000006
RBP: 0000000000000006 R08: 0000000000000002 R09: 0000000000029780
R10: 00006957d8f42832 R11: 0000000000000000 R12: 0000000000001020
R13: ffff8a00e8978ac0 R14: 000000000000002b R15: ffff8a00e8979c80
FS:  0000000000000000(0000) GS:ffff8a07dfd00000(0000) knlGS:00000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000106c CR3: 0000000063e10004 CR4: 00000000007726e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <IRQ>
 ? ttwu_do_wakeup+0x19/0x140
 ? try_to_wake_up+0x1cd/0x550
 ? ixgbevf_update_xcast_mode+0x71/0xc0 [ixgbevf]
 ixgbe_msix_other+0x17e/0x310 [ixgbe]
 __handle_irq_event_percpu+0x40/0x180
 handle_irq_event_percpu+0x30/0x80
 handle_irq_event+0x36/0x53
 handle_edge_irq+0x82/0x190
 handle_irq+0x1c/0x30
 do_IRQ+0x49/0xd0
 common_interrupt+0xf/0xf

This can be eventually be reproduced with the following script:

while :
do
    echo 63 > /sys/class/net/<devname>/device/sriov_numvfs
    sleep 1
    echo 0 > /sys/class/net/<devname>/device/sriov_numvfs
    sleep 1
done

Add lock when disabling SR-IOV to prevent process VF mailbox communication.

Fixes: d773d1310625 ("ixgbe: Fix memory leak when SR-IOV VFs are direct assigned")
Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
---
changes in v2:
    - replace type spin_lock_bh to spin_lock
changes in v3:
    - replace type spin_lock to spin_lock_irqsave
changes in v4:
    - hold the lock only around adapter->num_vf instead adapter->vfinfo

 drivers/net/ethernet/intel/ixgbe/ixgbe.h       | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c  | 3 +++
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 6 ++++++
 3 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 921a4d977d65..8813b4dd6872 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -779,6 +779,7 @@ struct ixgbe_adapter {
 #ifdef CONFIG_IXGBE_IPSEC
 	struct ixgbe_ipsec *ipsec;
 #endif /* CONFIG_IXGBE_IPSEC */
+	spinlock_t vfs_lock;
 };
 
 static inline int ixgbe_determine_xdp_q_idx(int cpu)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c4a4954aa317..6c403f112d29 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6402,6 +6402,9 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 	/* n-tuple support exists, always init our spinlock */
 	spin_lock_init(&adapter->fdir_perfect_lock);
 
+	/* init spinlock to avoid concurrency of VF resources */
+	spin_lock_init(&adapter->vfs_lock);
+
 #ifdef CONFIG_IXGBE_DCB
 	ixgbe_init_dcb(adapter);
 #endif
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index d4e63f0644c3..a1e69c734863 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -205,10 +205,13 @@ void ixgbe_enable_sriov(struct ixgbe_adapter *adapter, unsigned int max_vfs)
 int ixgbe_disable_sriov(struct ixgbe_adapter *adapter)
 {
 	unsigned int num_vfs = adapter->num_vfs, vf;
+	unsigned long flags;
 	int rss;
 
+	spin_lock_irqsave(&adapter->vfs_lock, flags);
 	/* set num VFs to 0 to prevent access to vfinfo */
 	adapter->num_vfs = 0;
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 
 	/* put the reference to all of the vf devices */
 	for (vf = 0; vf < num_vfs; ++vf) {
@@ -1355,8 +1358,10 @@ static void ixgbe_rcv_ack_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	unsigned long flags;
 	u32 vf;
 
+	spin_lock_irqsave(&adapter->vfs_lock, flags);
 	for (vf = 0; vf < adapter->num_vfs; vf++) {
 		/* process any reset requests */
 		if (!ixgbe_check_for_rst(hw, vf))
@@ -1370,6 +1375,7 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 		if (!ixgbe_check_for_ack(hw, vf))
 			ixgbe_rcv_ack_from_vf(adapter, vf);
 	}
+	spin_unlock_irqrestore(&adapter->vfs_lock, flags);
 }
 
 static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
-- 
2.35.0.rc0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
