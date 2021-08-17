Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E9C3EEDBA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 15:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E915F80BD0;
	Tue, 17 Aug 2021 13:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9859otNvYc0; Tue, 17 Aug 2021 13:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F5CC80BE2;
	Tue, 17 Aug 2021 13:49:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3696E1BF396
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 07:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3252060600
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 07:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6UKlZfjkc1WW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 07:54:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85A22605D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 07:54:20 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id oa17so30852406pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 00:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ypyY+Uqc+Z2ZZW93qVfCBhIjoZdHXKViPbFJWksLXyw=;
 b=zT3Q4BfuKTe1/h5Cue4i0alXI++5/qEOTcetPdbWNDd5BT1u+30szX/nxKKtPTtRYq
 OyAMbpKI3Pg3UuoEf8zSfz6l9unAlkyNJaeaL3Xtfq1lTw68wHfq2l5ruVozMW+e3H52
 //iG+wCIP7yoaBRB2Bc+mMrPeNGQPH+vJ2ydbT8NyCMra+lTstYuSk5bYmajOJPHvjwW
 syFKeRkNKYYmkpMX7lrasN2P2JdkhYdVrOpwCgSRSMGehDR0zc1MIyqbBoYgifWtf5w+
 Xkad6k7S9ga6IAk/T00DYnvU0m0R+x5RFYEcaAy6pX4GZh6vVWY39lEgGhJivvRbS/TO
 +IIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ypyY+Uqc+Z2ZZW93qVfCBhIjoZdHXKViPbFJWksLXyw=;
 b=DcaF+8s2cohwBv8LUr482beBRavJY/jT9h7cxxpqU3HLjmcQIxTn/kpnOo7R3MXQ4P
 +FpWY66lZwreED7pi5cgHyw74d7t2kWcep/bw5zP4eGQ5NN4ANZqweF8HVr4ApJ/YR0N
 uqIdS37U8l4G06BFzgb61t7bgEoRhtWf+VazOWKjIEC0olVV9oTpOLa0AsLUutcm4Zh9
 KCsZPuAiRYqT359KQn42FzIR+fLwL6sf5Q4Pqi9vPpAyQlx7g0mFK7amw//2XD+Guew/
 tyy+kGorYE4z9lxndejGIPP+NNJt1J4WhzDaTYp9u5dyGXzD4rE7VaenhDfNUNd1lHqk
 SlfA==
X-Gm-Message-State: AOAM531dUViF2AmnRur/plkXXVDHi5IGBrYRGQehfpozU0z8HSFIhPFH
 nI01vtQ4cuQcSAJNrw4KslqeLg==
X-Google-Smtp-Source: ABdhPJye1vzAfWWx07/uMcHku/JU3zMK/QgXPEu+ekIr4KWMO6ud6T6xHHof6LTdTXnfKmiOfg5fCw==
X-Received: by 2002:aa7:800b:0:b029:330:455f:57a8 with SMTP id
 j11-20020aa7800b0000b0290330455f57a8mr2381541pfi.7.1629186859912; 
 Tue, 17 Aug 2021 00:54:19 -0700 (PDT)
Received: from FVFX41FWHV2J.bytedance.net ([139.177.225.231])
 by smtp.gmail.com with ESMTPSA id j6sm1722212pgh.17.2021.08.17.00.54.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Aug 2021 00:54:19 -0700 (PDT)
From: Feng zhou <zhoufeng.zf@bytedance.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, jeffrey.t.kirsher@intel.com,
 magnus.karlsson@intel.com
Date: Tue, 17 Aug 2021 15:54:07 +0800
Message-Id: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 17 Aug 2021 13:49:34 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix NULL pointer dereference in
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
It becames 63.
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
lead to panic.
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

Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for
AF_XDP")
Signed-off-by: Feng Zhou <zhoufeng.zf@bytedance.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

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
