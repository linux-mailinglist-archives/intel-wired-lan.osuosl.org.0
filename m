Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FFC40C010
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 09:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CF0940554;
	Wed, 15 Sep 2021 07:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 64H7T4iHnDps; Wed, 15 Sep 2021 07:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00F9F40553;
	Wed, 15 Sep 2021 07:05:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A086E1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 07:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8DD4B4043B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 07:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hT6UsN4Q2UjQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Sep 2021 07:04:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DB7240407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 07:04:53 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id 18so1781794pfh.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Sep 2021 00:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2BWdhdicOR1qL0nUDLFCT++AnjlBgHiscLfuhjIbVtc=;
 b=teTMxolm7LhP6awEeeU3sKPcpdQ8IwvuUlEY5G3V2dVsLf3l0kXtAHDDZfnhB/xBLs
 0tQ5wfNt/7bqAjz3QK6dHICopSLvOQTTgxAP4fWp48NLNhTts8Ec9dgM1wOVDnQ3SwCL
 62nlkf+DqGQ86/PEijrh9mFZNyhiPzxJyIrzxJ5rHZKR2TBIyKl+Alwo5hiGPJPEiB5J
 g7TrC93KdA1xPeYBWF36wwLhc/CY7DE7w9qCJlkVuT7r+dN8jEGTWuC+r58pKlS6yLNO
 v518QxpJ8MoYVYOFTmlsyIvJYeuqS3iw0zk1h1ZtmLEsOEv6mA+yWCl41Bc7QY8rT/qK
 +2lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2BWdhdicOR1qL0nUDLFCT++AnjlBgHiscLfuhjIbVtc=;
 b=16P0jDdnG3zht95aS6nfEQuqkVdJHaBq0JW8lRI9cUIebhnCtCslHRk+pFxWLRFAWG
 eUCU5dxJ0yi79QW6NmdLh0kVRpcnXkPH/H2hDVjZeyJZYheGwITca9LIiNNfe9uwKg0i
 TLjsBlbtMHEjmpiY/9OfmHsRZglD1qclKZ9XP1U6MK+Q6covKsiGbgALedeVsd3e8yJU
 Vh8lyxxgJN8GdH//DQasALR0V+8egakYyty6SGI44uije0npyqZivh/xNInLBqAXe0hh
 Gb+vjvdiLLude5zDaHhyCuChnfXhQEZBV4wnT66CMueDfHSQzgr9CMOWNkO2YnISiEDR
 uNFQ==
X-Gm-Message-State: AOAM5328DQZ1umJ8u1pU7XktYXDTz2C6vb0Ar3BHEyBYIUzheuKQLUPU
 7qyOEdwUnHaXlUASAqtx7LqnEQ==
X-Google-Smtp-Source: ABdhPJxP5vXMShjKBRCkNc71Ozvp3iP6RY6OfumaxCx0NalgMg5dpxxYkJchi6kulDztfPbyucxGfw==
X-Received: by 2002:a63:4610:: with SMTP id t16mr19179215pga.176.1631689493251; 
 Wed, 15 Sep 2021 00:04:53 -0700 (PDT)
Received: from C02F52LSML85.bytedance.net ([139.177.225.251])
 by smtp.gmail.com with ESMTPSA id s192sm14079655pgc.23.2021.09.15.00.04.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Sep 2021 00:04:52 -0700 (PDT)
From: Feng zhou <zhoufeng.zf@bytedance.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, jeffrey.t.kirsher@intel.com,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com
Date: Wed, 15 Sep 2021 15:04:40 +0800
Message-Id: <20210915070440.6540-1-zhoufeng.zf@bytedance.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3] ixgbe: Fix NULL pointer dereference in
 ixgbe_xdp_setup
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
Cc: duanxiongchun@bytedance.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, zhengqi.arch@bytedance.com,
 chenying.kernel@bytedance.com, intel-wired-lan@lists.osuosl.org,
 songmuchun@bytedance.com, zhoufeng.zf@bytedance.com, bpf@vger.kernel.org,
 wangdongdong.6@bytedance.com, zhouchengming@bytedance.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Feng Zhou <zhoufeng.zf@bytedance.com>

The ixgbe driver currently generates a NULL pointer dereference with
some machine (online cpus < 63). This is due to the fact that the
maximum value of num_xdp_queues is nr_cpu_ids. Code is in
"ixgbe_set_rss_queues"".

Here's how the problem repeats itself:
Some machine (online cpus < 63), And user set num_queues to 63 through
ethtool. Code is in the "ixgbe_set_channels",
	adapter->ring_feature[RING_F_FDIR].limit = count;

It becomes 63.

When user use xdp, "ixgbe_set_rss_queues" will set queues num.
	adapter->num_rx_queues = rss_i;
	adapter->num_tx_queues = rss_i;
	adapter->num_xdp_queues = ixgbe_xdp_queues(adapter);

And rss_i's value is from
	f = &adapter->ring_feature[RING_F_FDIR];
	rss_i = f->indices = f->limit;

So "num_rx_queues" > "num_xdp_queues", when run to "ixgbe_xdp_setup",
	for (i = 0; i < adapter->num_rx_queues; i++)
		if (adapter->xdp_ring[i]->xsk_umem)

It leads to panic.

Call trace:
[exception RIP: ixgbe_xdp+368]
RIP: ffffffffc02a76a0  RSP: ffff9fe16202f8d0  RFLAGS: 00010297
RAX: 0000000000000000  RBX: 0000000000000020  RCX: 0000000000000000
RDX: 0000000000000000  RSI: 000000000000001c  RDI: ffffffffa94ead90
RBP: ffff92f8f24c0c18   R8: 0000000000000000   R9: 0000000000000000
R10: ffff9fe16202f830  R11: 0000000000000000  R12: ffff92f8f24c0000
R13: ffff9fe16202fc01  R14: 000000000000000a  R15: ffffffffc02a7530
ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
 7 [ffff9fe16202f8f0] dev_xdp_install at ffffffffa89fbbcc
 8 [ffff9fe16202f920] dev_change_xdp_fd at ffffffffa8a08808
 9 [ffff9fe16202f960] do_setlink at ffffffffa8a20235
10 [ffff9fe16202fa88] rtnl_setlink at ffffffffa8a20384
11 [ffff9fe16202fc78] rtnetlink_rcv_msg at ffffffffa8a1a8dd
12 [ffff9fe16202fcf0] netlink_rcv_skb at ffffffffa8a717eb
13 [ffff9fe16202fd40] netlink_unicast at ffffffffa8a70f88
14 [ffff9fe16202fd80] netlink_sendmsg at ffffffffa8a71319
15 [ffff9fe16202fdf0] sock_sendmsg at ffffffffa89df290
16 [ffff9fe16202fe08] __sys_sendto at ffffffffa89e19c8
17 [ffff9fe16202ff30] __x64_sys_sendto at ffffffffa89e1a64
18 [ffff9fe16202ff38] do_syscall_64 at ffffffffa84042b9
19 [ffff9fe16202ff50] entry_SYSCALL_64_after_hwframe at ffffffffa8c0008c

So I fix ixgbe_max_channels so that it will not allow a setting of queues 
to be higher than the num_online_cpus(). And when run to ixgbe_xdp_setup, 
take the smaller value of num_rx_queues and num_xdp_queues.

Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for
AF_XDP")
Signed-off-by: Feng Zhou <zhoufeng.zf@bytedance.com>
---
v1:
- Fix "ixgbe_max_channels" callback so that it will not allow a setting of 
queues to be higher than the num_online_cpus().
v2:
- Modify commit message
more details can be seen from here:
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210817075407.11961-1-zhoufeng.zf@bytedance.com/
https://lore.kernel.org/netdev/20210903064013.9842-1-zhoufeng.zf@bytedance.com/
Thanks to Maciej Fijalkowski and Paul Menzel for yours advice.

 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 8 ++++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 4ceaca0f6ce3..21321d164708 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3204,7 +3204,7 @@ static unsigned int ixgbe_max_channels(struct ixgbe_adapter *adapter)
 		max_combined = ixgbe_max_rss_indices(adapter);
 	}
 
-	return max_combined;
+	return min_t(int, max_combined, num_online_cpus());
 }
 
 static void ixgbe_get_channels(struct net_device *dev,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 14aea40da50f..5db496cc5070 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10112,6 +10112,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct bpf_prog *old_prog;
 	bool need_reset;
+	int num_queues;
 
 	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
 		return -EINVAL;
@@ -10161,11 +10162,14 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 	/* Kick start the NAPI context if there is an AF_XDP socket open
 	 * on that queue id. This so that receiving will start.
 	 */
-	if (need_reset && prog)
-		for (i = 0; i < adapter->num_rx_queues; i++)
+	if (need_reset && prog) {
+		num_queues = min_t(int, adapter->num_rx_queues,
+			adapter->num_xdp_queues);
+		for (i = 0; i < num_queues; i++)
 			if (adapter->xdp_ring[i]->xsk_pool)
 				(void)ixgbe_xsk_wakeup(adapter->netdev, i,
 						       XDP_WAKEUP_RX);
+	}
 
 	return 0;
 }
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
