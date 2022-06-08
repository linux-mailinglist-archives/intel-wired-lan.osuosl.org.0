Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD26542BB1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 11:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 516C641A3C;
	Wed,  8 Jun 2022 09:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqyS_X9RpDLR; Wed,  8 Jun 2022 09:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05172418F5;
	Wed,  8 Jun 2022 09:39:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CE4B1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0807D418F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zHXg7q81U8yr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 09:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D695418A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654681163; x=1686217163;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fgN4LW6QZnap7UJPsUokqYYW3hZtU+PdLSBM0FgeiBU=;
 b=Z2CCy5Ah91ovhGcI79xEeBsVH5NB/b+T0qKWAgfxsYEhSodHIGXCQKPc
 xg87wm/HM2WRu8A+5Lxo0y4LsClRsrmfbt9Hsa/7O0bdtgQfkNaHLMWLm
 Fw7+XEE0rWUvk0WLD3toDHt8UxofP3OA+GfD4O5Lf6mFq3o0/aiy+4Um7
 LRvWGin/e+bsIg6s1Y0Ni2ZHKfSHbG6gbo9Te2s3/B+/uZVUJC8UidX+s
 AL4oExDCV20CpbMhoYEnIpRfYHbBSPwN590P5BA/LLYdiMOiFnhcZ9ImR
 FWi8aMKB8TZUMbBD7nGXy4N9y/kyCP5McH503S88apjeXSXJxtrEWZKSG g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="257266834"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="257266834"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:39:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="565840334"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga002.jf.intel.com with ESMTP; 08 Jun 2022 02:39:20 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 11:37:08 +0200
Message-Id: <20220608093708.2986414-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Do not modify queue
 number when removing iavf driver
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

If VF has configured tc qdisc with number of queues less than original
set and then the driver went in removing process, tc resources are also
releasing. Attempt of modify real num tx/rx in this state is causing
call trace, because kernel is trying to release uninitialized queues

Fix it by not modifying the number of queues when removing a driver

Call Trace:
  net_rx_queue_update_kobjects+0x10c/0x160
  netdev_unregister_kobject+0x4b/0x80
  rollback_registered_many+0x27b/0x550
  rollback_registered+0x56/0x90
  unregister_netdevice_queue+0x73/0xb0
  unregister_netdev+0x18/0x20
  iavf_remove+0x421/0x440 [iavf]
  pci_device_remove+0x3b/0xc0
  device_release_driver_internal+0x18c/0x250
  driver_detach+0x39/0x6d
  bus_remove_driver+0x77/0xc9
  pci_unregister_driver+0x2d/0xb0
  iavf_exit_module+0xc/0xb9a [iavf]
  __x64_sys_delete_module+0x139/0x270
  do_syscall_64+0x5b/0x1b0
  entry_SYSCALL_64_after_hwframe+0x65/0xca
 RIP: 0033:0x7f6e29645a8b
 Code: 73 01 c3 48 8b 0d fd 03 2c 00 f7 d8 64 89 01 48 83 c8 ff c3 66 2e 0f
       1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 05 <48> 3d 01
       f0 ff ff 73 01 c3 48 8b 0d cd 03 2c 00 f7 d8 64 89 01 48
 RSP: 002b:00007ffccf5b8098 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
 RAX: ffffffffffffffda RBX: 000055b5545f6c40 RCX: 00007f6e29645a8b
 RDX: 0000000000000000 RSI: 0000000000000800 RDI: 000055b5545f6ca8
 RBP: 000055b5545f6ca8 R08: 00007ffccf5b7041 R09: 0000000000000000
 R10: 00007f6e296b7f60 R11: 0000000000000206 R12: 0000000000000000
 R13: 0000000000000000 R14: 000055b5545f6ca8 R15: 00007ffccf5b9490

Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: split patch series into 2 seperate patches; check the exact bit - do
not use the helper function
v3: correct email addresses
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index f3ecb3bca33d..81a2666acdde 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3471,6 +3471,9 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 		}
 	}
 exit:
+	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
+		return 0;
+
 	return ret;
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
