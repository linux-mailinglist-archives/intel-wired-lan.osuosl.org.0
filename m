Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A4424D115
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Aug 2020 11:02:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC3F188634;
	Fri, 21 Aug 2020 09:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FteEk7PYGR5B; Fri, 21 Aug 2020 09:02:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22EA48868B;
	Fri, 21 Aug 2020 09:02:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD49D1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Aug 2020 09:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0168204CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Aug 2020 09:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+W9TExLFWxk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Aug 2020 09:01:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tc-sys-mailedm03.tc.baidu.com (mx55.baidu.com [61.135.168.55])
 by silver.osuosl.org (Postfix) with ESMTP id 41555203E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Aug 2020 09:01:57 +0000 (UTC)
Received: from localhost (cp01-cos-dev01.cp01.baidu.com [10.92.119.46])
 by tc-sys-mailedm03.tc.baidu.com (Postfix) with ESMTP id 29262450003C;
 Fri, 21 Aug 2020 17:01:54 +0800 (CST)
From: Li RongQing <lirongqing@baidu.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Aug 2020 17:01:54 +0800
Message-Id: <1598000514-5951-1-git-send-email-lirongqing@baidu.com>
X-Mailer: git-send-email 1.7.1
Subject: [Intel-wired-lan] [PATCH][next] i40e: switch kvzalloc to allocate
 rx/tx_bi buffer
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

when changes the rx/tx ring to 4096, rx/tx_bi needs an order
5 pages, and allocation maybe fail due to memory fragmentation
so switch to kvzalloc

 i40e 0000:1a:00.0 xgbe0: Changing Rx descriptor count from 512 to 4096
 ethtool: page allocation failure: order:5, mode:0x60c0c0(GFP_KERNEL|__GFP_COMP|__GFP_ZERO), nodemask=(null)
 ethtool cpuset=/ mems_allowed=0
 CPU: 34 PID: 47182 Comm: ethtool Kdump: loaded Tainted: G            E     4.19 #1
 Hardware name: Inspur BJINSPURV2G5Y72-32A/SN6115M5, BIOS 3.0.12 03/29/2018
 Call Trace:
  dump_stack+0x66/0x8b
  warn_alloc+0xff/0x1a0
  __alloc_pages_slowpath+0xcc9/0xd00
  __alloc_pages_nodemask+0x25e/0x2a0
  kmalloc_order+0x14/0x40
  kmalloc_order_trace+0x1d/0xb0
  i40e_setup_rx_descriptors+0x47/0x1e0 [i40e]
  i40e_set_ringparam+0x25e/0x7c0 [i40e]
  dev_ethtool+0x1fa3/0x2920
  ? inet_ioctl+0xe0/0x250
  ? __rtnl_unlock+0x25/0x40
  ? netdev_run_todo+0x5e/0x2f0
  ? dev_ioctl+0xb3/0x560
  dev_ioctl+0xb3/0x560
  sock_do_ioctl+0xae/0x150
  ? sock_ioctl+0x1c6/0x310
  sock_ioctl+0x1c6/0x310
  ? do_vfs_ioctl+0xa4/0x630
  ? dlci_ioctl_set+0x30/0x30
  do_vfs_ioctl+0xa4/0x630
  ? handle_mm_fault+0xe6/0x240
  ? __do_page_fault+0x288/0x510
  ksys_ioctl+0x70/0x80
  __x64_sys_ioctl+0x16/0x20
  do_syscall_64+0x5b/0x1b0
  entry_SYSCALL_64_after_hwframe+0x44/0xa9

Signed-off-by: Li RongQing <lirongqing@baidu.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a63548cb022d..1a817580b945 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3260,7 +3260,7 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	if (ring->vsi->type == I40E_VSI_MAIN)
 		xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
 
-	kfree(ring->rx_bi);
+	kvfree(ring->rx_bi);
 	ring->xsk_umem = i40e_xsk_umem(ring);
 	if (ring->xsk_umem) {
 		ret = i40e_alloc_rx_bi_zc(ring);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 5f9fe55bb66d..4dc7d6e6b226 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -674,7 +674,7 @@ void i40e_clean_tx_ring(struct i40e_ring *tx_ring)
 void i40e_free_tx_resources(struct i40e_ring *tx_ring)
 {
 	i40e_clean_tx_ring(tx_ring);
-	kfree(tx_ring->tx_bi);
+	kvfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 
 	if (tx_ring->desc) {
@@ -1273,7 +1273,7 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(tx_ring->tx_bi);
 	bi_size = sizeof(struct i40e_tx_buffer) * tx_ring->count;
-	tx_ring->tx_bi = kzalloc(bi_size, GFP_KERNEL);
+	tx_ring->tx_bi = kvzalloc(bi_size, GFP_KERNEL);
 	if (!tx_ring->tx_bi)
 		goto err;
 
@@ -1300,7 +1300,7 @@ int i40e_setup_tx_descriptors(struct i40e_ring *tx_ring)
 	return 0;
 
 err:
-	kfree(tx_ring->tx_bi);
+	kvfree(tx_ring->tx_bi);
 	tx_ring->tx_bi = NULL;
 	return -ENOMEM;
 }
@@ -1309,7 +1309,7 @@ int i40e_alloc_rx_bi(struct i40e_ring *rx_ring)
 {
 	unsigned long sz = sizeof(*rx_ring->rx_bi) * rx_ring->count;
 
-	rx_ring->rx_bi = kzalloc(sz, GFP_KERNEL);
+	rx_ring->rx_bi = kvzalloc(sz, GFP_KERNEL);
 	return rx_ring->rx_bi ? 0 : -ENOMEM;
 }
 
@@ -1394,7 +1394,7 @@ void i40e_free_rx_resources(struct i40e_ring *rx_ring)
 	if (rx_ring->vsi->type == I40E_VSI_MAIN)
 		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
 	rx_ring->xdp_prog = NULL;
-	kfree(rx_ring->rx_bi);
+	kvfree(rx_ring->rx_bi);
 	rx_ring->rx_bi = NULL;
 
 	if (rx_ring->desc) {
-- 
2.16.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
