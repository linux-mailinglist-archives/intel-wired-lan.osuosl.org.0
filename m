Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A62653E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 355528686B;
	Thu, 10 Sep 2020 21:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vLPV33nVkBei; Thu, 10 Sep 2020 21:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED2018686A;
	Thu, 10 Sep 2020 21:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5E351BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DFA2120519
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X8jzrM5EGJuX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 15:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C6D020784
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:22 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 29705937C3914FA5C913;
 Thu, 10 Sep 2020 23:07:16 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Thu, 10 Sep 2020
 23:07:11 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>
Date: Thu, 10 Sep 2020 23:04:28 +0800
Message-ID: <20200910150429.31912-3-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200910150429.31912-1-wanghai38@huawei.com>
References: <20200910150429.31912-1-wanghai38@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:42:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next 2/3] e1000e: Fix some kernel-doc
 warnings in netdev.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixes the following W=1 kernel build warning(s):

drivers/net/ethernet/intel/e1000e/netdev.c:2525: warning: Excess function parameter 'adapter' description in 'e1000_update_itr'
drivers/net/ethernet/intel/e1000e/netdev.c:609: warning: Excess function parameter 'csum' description in 'e1000_rx_checksum'
drivers/net/ethernet/intel/e1000e/netdev.c:609: warning: Excess function parameter 'sk_buff' description in 'e1000_rx_checksum'
drivers/net/ethernet/intel/e1000e/netdev.c:6191: warning: Excess function parameter 'ifreq' description in 'e1000e_hwtstamp_set'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 664e8ccc88d2..4c5c4e8a14ba 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -601,8 +601,7 @@ static void e1000_receive_skb(struct e1000_adapter *adapter,
  * e1000_rx_checksum - Receive Checksum Offload
  * @adapter: board private structure
  * @status_err: receive descriptor status and error fields
- * @csum: receive descriptor csum field
- * @sk_buff: socket buffer with received data
+ * @skb: socket buffer with received data
  **/
 static void e1000_rx_checksum(struct e1000_adapter *adapter, u32 status_err,
 			      struct sk_buff *skb)
@@ -2507,7 +2506,6 @@ void e1000e_free_rx_resources(struct e1000_ring *rx_ring)
 
 /**
  * e1000_update_itr - update the dynamic ITR value based on statistics
- * @adapter: pointer to adapter
  * @itr_setting: current adapter->itr
  * @packets: the number of packets during this measurement interval
  * @bytes: the number of bytes during this measurement interval
@@ -6174,7 +6172,7 @@ static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
 /**
  * e1000e_hwtstamp_ioctl - control hardware time stamping
  * @netdev: network interface device structure
- * @ifreq: interface request
+ * @ifr: interface request
  *
  * Outgoing time stamping can be enabled and disabled. Play nice and
  * disable it when requested, although it shouldn't cause any overhead
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
