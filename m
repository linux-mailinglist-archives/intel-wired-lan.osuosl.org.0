Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 656D9542B9A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 11:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6863361037;
	Wed,  8 Jun 2022 09:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ntjg8060tI9B; Wed,  8 Jun 2022 09:31:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67DF761007;
	Wed,  8 Jun 2022 09:31:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3ECF61BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 369A461007
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:31:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czc6zr7Z-Biq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 09:31:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 16D3F60C12
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654680703; x=1686216703;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RZT9XgVKv+6J0NUX+FcrJhbkPWWiuIGOqTccxiRbSBM=;
 b=M2aSyQRJNiJa7kEgN2dxcJ6MFd1iCwqrOAzLR4A2Z+/sfMv5V3xEVJOT
 bB7aAZCpxXqdXDL+cDRWNQV64li4YZ4VvyYpN6ydmRNNxoFGXJqMKxMgs
 Uc7pj2UDaJq6DD65GHf3tIwEFyc5klGvLsFMG34ceEd5TwFNRlnp+pFTM
 V5wXPNNnJVD6ck5iU5LL57jaFY5z63g0g6rQIExEY5gFuPWHjd+uNr3Tz
 5GEaNaCZTgI1vdL6M8muCSKrpD2Cy2U9J9AVfBQLwzESlHTXUvt0c50q5
 0FzqXREkcsyLTusc38LWdk/I+RNaskqcCIv2X+OqVModjCDP3bshHoig6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="256658936"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="256658936"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:31:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="826859793"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jun 2022 02:31:37 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 11:29:24 +0200
Message-Id: <20220608092924.2986182-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Do not modify queue number
 when removing iavf driver
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
Cc: Jedrzej Jagielski <jedrzejjagielski@intel.com>,
 Grzegorz Szczurek <grzegorzxszczurek@intel.com>
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
Signed-off-by: Grzegorz Szczurek <grzegorzxszczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzejjagielski@intel.com>
---
v2: split patch series into 2 seperate patches; check the exact bit - do
not use the helper function
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
