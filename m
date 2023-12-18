Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE5D817730
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 17:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2F714059F;
	Mon, 18 Dec 2023 16:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2F714059F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702916146;
	bh=QYxfxiC+BwTd/gKjCQUebSQ8jt4iTK6YK9Gnqu1+IeA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Yl3MwG/9JzcE79T0IH92WrD8X0gDv88y8SLlKnsBLWl2ep2ekgMASgDhxx9Pf5IHw
	 MjuVPL4X/vuwNW/IelULxByeLZZYR7iqTKx+Cm2Ec0u5m9puiBosRfERf9f9vGJVsB
	 Fb3YjdKlIa4nr+QnR8LZVRxPGGlq/7Uddyzq4y4wI/tlPIOPp44EPQDLRx2PbmtSfA
	 p0VJetDnHGSXktDD29AVDhNxzqv4zLSGIWf9exZQ0zMo41NCohIh9rUXSzW2mY4ffU
	 4PrmO2R2O8NFlT/Db8YHEroAIay6bTvtW/v1xqcI+g8QOfq1sEIEYVaLt0dk0cqoeJ
	 VjpKVvm16Knuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HCSXDbvQhS7x; Mon, 18 Dec 2023 16:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4995404DD;
	Mon, 18 Dec 2023 16:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4995404DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 459491BF3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 07:17:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AE7C41693
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 07:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AE7C41693
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rm11Sph6vMjf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 07:17:39 +0000 (UTC)
X-Greylist: delayed 480 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 18 Dec 2023 07:17:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 649C341675
Received: from mail-m127105.qiye.163.com (mail-m127105.qiye.163.com
 [115.236.127.105])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 649C341675
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 07:17:37 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPV6:240e:3b7:3270:35d0:f136:8ef4:5e9e:94b4])
 by mail-m12741.qiye.163.com (Hmail) with ESMTPA id EE1229E0608;
 Mon, 18 Dec 2023 15:09:06 +0800 (CST)
From: Ke Xiao <xiaoke@sangfor.com.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Mon, 18 Dec 2023 15:08:50 +0800
Message-Id: <20231218070850.15870-1-xiaoke@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT0hNVhpLSh1CQkNMGU9MH1UTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTEtBSE4fS0EdSkhNQUMeHU9BTh5CHkFCTxlPWVdZFhoPEhUdFF
 lBWU9LSFVKTU9JTE5VSktLVUpCS0tZBg++
X-HM-Tid: 0a8c7bc1cba9b214kuuuee1229e0608
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDo6Pxw5CTwwKykpKigqGA0L
 FTcaCwtVSlVKTEtJQ0NISE9DSklMVTMWGhIXVQMSGhQQHjsIGhUcHRQJVRgUFlUYFUVZV1kSC1lB
 WUlPSx5BSBlMQUhJTEtBSE4fS0EdSkhNQUMeHU9BTh5CHkFCTxlPWVdZCAFZQU9CTUI3Bg++
X-Mailman-Approved-At: Mon, 18 Dec 2023 16:15:33 +0000
Subject: [Intel-wired-lan] [net PATCH v2] i40e: fix use-after-free in
 i40e_aqc_add_filters()
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, dinghui@sangfor.com.cn,
 linux-kernel@vger.kernel.org, zhangrui182@huawei.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, zhudi2@huawei.com,
 Ke Xiao <xiaoke@sangfor.com.cn>, shannon.nelson@amd.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 3116f59c12bd ("i40e: fix use-after-free in
i40e_sync_filters_subtask()") avoided use-after-free issues,
by increasing refcount during update the VSI filter list to
the HW. However, it missed the unicast situation.

When deleting an unicast FDB entry, the i40e driver will release
the mac_filter, and i40e_service_task will concurrently request
firmware to add the mac_filter, which will lead to the following
use-after-free issue.

Fix again for both netdev->uc and netdev->mc.

BUG: KASAN: use-after-free in i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
Read of size 2 at addr ffff888eb3452d60 by task kworker/8:7/6379

CPU: 8 PID: 6379 Comm: kworker/8:7 Kdump: loaded Tainted: G
Workqueue: i40e i40e_service_task [i40e]
Call Trace:
 dump_stack+0x71/0xab
 print_address_description+0x6b/0x290
 kasan_report+0x14a/0x2b0
 i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
 i40e_sync_vsi_filters+0x1676/0x39c0 [i40e]
 i40e_service_task+0x1397/0x2bb0 [i40e]
 process_one_work+0x56a/0x11f0
 worker_thread+0x8f/0xf40
 kthread+0x2a0/0x390
 ret_from_fork+0x1f/0x40

Allocated by task 21948:
 kasan_kmalloc+0xa6/0xd0
 kmem_cache_alloc_trace+0xdb/0x1c0
 i40e_add_filter+0x11e/0x520 [i40e]
 i40e_addr_sync+0x37/0x60 [i40e]
 __hw_addr_sync_dev+0x1f5/0x2f0
 i40e_set_rx_mode+0x61/0x1e0 [i40e]
 dev_uc_add_excl+0x137/0x190
 i40e_ndo_fdb_add+0x161/0x260 [i40e]
 rtnl_fdb_add+0x567/0x950
 rtnetlink_rcv_msg+0x5db/0x880
 netlink_rcv_skb+0x254/0x380
 netlink_unicast+0x454/0x610
 netlink_sendmsg+0x747/0xb00
 sock_sendmsg+0xe2/0x120
 __sys_sendto+0x1ae/0x290
 __x64_sys_sendto+0xdd/0x1b0
 do_syscall_64+0xa0/0x370
 entry_SYSCALL_64_after_hwframe+0x65/0xca

Freed by task 21948:
 __kasan_slab_free+0x137/0x190
 kfree+0x8b/0x1b0
 __i40e_del_filter+0x116/0x1e0 [i40e]
 i40e_del_mac_filter+0x16c/0x300 [i40e]
 i40e_addr_unsync+0x134/0x1b0 [i40e]
 __hw_addr_sync_dev+0xff/0x2f0
 i40e_set_rx_mode+0x61/0x1e0 [i40e]
 dev_uc_del+0x77/0x90
 rtnl_fdb_del+0x6a5/0x860
 rtnetlink_rcv_msg+0x5db/0x880
 netlink_rcv_skb+0x254/0x380
 netlink_unicast+0x454/0x610
 netlink_sendmsg+0x747/0xb00
 sock_sendmsg+0xe2/0x120
 __sys_sendto+0x1ae/0x290
 __x64_sys_sendto+0xdd/0x1b0
 do_syscall_64+0xa0/0x370
 entry_SYSCALL_64_after_hwframe+0x65/0xca

Fixes: 3116f59c12bd ("i40e: fix use-after-free in i40e_sync_filters_subtask()")
Fixes: 41c445ff0f48 ("i40e: main driver core")
Signed-off-by: Ke Xiao <xiaoke@sangfor.com.cn>
Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
Cc: Di Zhu <zhudi2@huawei.com>
Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
v2:
- Order local variable declarations in Reverse Christmas Tree (RCT)

---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1ab8dbe2d880..d5633a440cca 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -107,12 +107,18 @@ static struct workqueue_struct *i40e_wq;
 static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
 				  struct net_device *netdev, int delta)
 {
+	struct netdev_hw_addr_list *ha_list;
 	struct netdev_hw_addr *ha;
 
 	if (!f || !netdev)
 		return;
 
-	netdev_for_each_mc_addr(ha, netdev) {
+	if (is_unicast_ether_addr(f->macaddr) || is_link_local_ether_addr(f->macaddr))
+		ha_list = &netdev->uc;
+	else
+		ha_list = &netdev->mc;
+
+	netdev_hw_addr_list_for_each(ha, ha_list) {
 		if (ether_addr_equal(ha->addr, f->macaddr)) {
 			ha->refcount += delta;
 			if (ha->refcount <= 0)
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
