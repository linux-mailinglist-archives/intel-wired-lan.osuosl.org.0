Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C36893BC0E5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:38:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5000260875;
	Mon,  5 Jul 2021 15:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1agEWv9SxzZQ; Mon,  5 Jul 2021 15:38:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 320ED605FC;
	Mon,  5 Jul 2021 15:38:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE7701BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC91483A4C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjuPD7jJSUrj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:38:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1960C831A5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:50 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 cs1-20020a17090af501b0290170856e1a8aso15035653pjb.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yxNLjQak/ls2CeE+u1aPtfhRBK1qIZzO+wmLkN9GXjY=;
 b=kBEP6I9m//osXCubvNq7x3wBAW7PqhdDStGMw7WvHaHki0m6PSncVkz2Z3484n0G+t
 AAAS8gC6Wz8ajBzLcjt5wLsClxJJo4OeP1v6ds3lea/y6zD2bk9sV6ZkRBwKwr0kX3s3
 IslfSi1zfcmsYjQ6h1k9SdiNNfbNp+G2C1slQ8iTw3EeKxrPRJ4sbip3/9MM1n9tDJl9
 ktjNzxnLV/mBMuyiBYpdN2Rl+0253jnpl1KhmDHe6PtiFJOfrpoutGtFbM0CLnePDK0h
 kjx5AnyFY8xsEVuCfcuSi3C4OWNDDK+ncQUmSvXZwOvXYXzRltv+YoQ9zAM3L8DEBL/j
 nykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yxNLjQak/ls2CeE+u1aPtfhRBK1qIZzO+wmLkN9GXjY=;
 b=nDUZvuSF0S1s8R6V4FlBrQ4mpGl6yPpIU3lz+2JB/7I1H758mXmn6d+TpGg1m7xizy
 7fw75QHSS6svoHMZPiRL+KpYe6raTH03j1spLQRidGcJ+HrTRNjOnEmQ1fE7xNR7glyn
 MH/96Tt9YgDpMlhot0xFVaE3ddIGF2FWhV9JIb5kZlntnL9w6K6l7oDBSQfeG0EOC/u3
 40QlSPBNpgyigsi+ABUGpqtXLXinPgeRFRYKVTtSawN952P5VnWs28CeQZB5e/zAwQi1
 /TuFC4frtdygva8IikFfV1YQWaBH5ezLuk9lmQJ1hqYZn6NvPdcCmesDy8HihyR8ywEb
 fkQg==
X-Gm-Message-State: AOAM5328x4F2GSxpSK+kWziBRP/rTJtU56iz3vp8WB72INm8YbObqkix
 RlICYP8VfwhqaeeE4FNTaeM=
X-Google-Smtp-Source: ABdhPJxFWdmCNt3dcpuTqgtXWVH+DK8JNSVxXjzOOea8rbEJ0N537agocVw5rY/O5uGDnNjXtAmXMw==
X-Received: by 2002:a17:90a:5892:: with SMTP id
 j18mr16259929pji.18.1625499529515; 
 Mon, 05 Jul 2021 08:38:49 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:49 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:09 +0000
Message-Id: <20210705153814.11453-5-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 4/9] ixgbevf: use xso.real_dev
 instead of xso.dev in callback functions of struct xfrmdev_ops
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
Cc: ap420073@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are two pointers in struct xfrm_state_offload, *dev, *real_dev.
These are used in callback functions of struct xfrmdev_ops.
The *dev points whether bonding interface or real interface.
If bonding ipsec offload is used, it points bonding interface If not,
it points real interface.
And real_dev always points real interface.
So, ixgbevf should always use real_dev instead of dev.
Of course, real_dev always not be null.

Test commands:
    ip link add bond0 type bond
    #eth0 is ixgbevf interface
    ip link set eth0 master bond0
    ip link set bond0 up
    ip x s add proto esp dst 14.1.1.1 src 15.1.1.1 spi 0x07 mode \
transport reqid 0x07 replay-window 32 aead 'rfc4106(gcm(aes))' \
0x44434241343332312423222114131211f4f3f2f1 128 sel src 14.0.0.52/24 \
dst 14.0.0.70/24 proto tcp offload dev bond0 dir in

Splat looks like:
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 6 PID: 688 Comm: ip Not tainted 5.13.0-rc3+ #1168
RIP: 0010:ixgbevf_ipsec_find_empty_idx+0x28/0x1b0 [ixgbevf]
Code: 00 00 0f 1f 44 00 00 55 53 48 89 fb 48 83 ec 08 40 84 f6 0f 84 9c
00 00 00 48 b8 00 00 00 00 00 fc ff df 48 89 fa 48 c1 ea 03 <0f> b6 04 02
84 c0 74 08 3c 01 0f 8e 4c 01 00 00 66 81 3b 00 04 0f
RSP: 0018:ffff8880089af390 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 0000000000000001
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffff8880089af4f8 R08: 0000000000000003 R09: fffffbfff4287e11
R10: 0000000000000001 R11: ffff888005de8908 R12: 0000000000000000
R13: ffff88810936a000 R14: ffff88810936a000 R15: ffff888004d78040
FS:  00007fdf9883a680(0000) GS:ffff88811a400000(0000)
knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055bc14adbf40 CR3: 000000000b87c005 CR4: 00000000003706e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 ixgbevf_ipsec_add_sa+0x1bf/0x9c0 [ixgbevf]
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? ixgbevf_ipsec_parse_proto_keys.isra.9+0x280/0x280 [ixgbevf]
 ? lock_acquire+0x191/0x720
 ? bond_ipsec_add_sa+0x48/0x350 [bonding]
 ? lockdep_hardirqs_on_prepare+0x3e0/0x3e0
 ? rcu_read_lock_held+0x91/0xa0
 ? rcu_read_lock_sched_held+0xc0/0xc0
 bond_ipsec_add_sa+0x193/0x350 [bonding]
 xfrm_dev_state_add+0x2a9/0x770
 ? memcpy+0x38/0x60
 xfrm_add_sa+0x2278/0x3b10 [xfrm_user]
 ? xfrm_get_policy+0xaa0/0xaa0 [xfrm_user]
 ? register_lock_class+0x1750/0x1750
 xfrm_user_rcv_msg+0x331/0x660 [xfrm_user]
 ? rcu_read_lock_sched_held+0x91/0xc0
 ? xfrm_user_state_lookup.constprop.39+0x320/0x320 [xfrm_user]
 ? find_held_lock+0x3a/0x1c0
 ? mutex_lock_io_nested+0x1210/0x1210
 ? sched_clock_cpu+0x18/0x170
 netlink_rcv_skb+0x121/0x350
[ ... ]

Fixes: 272c2330adc9 ("xfrm: bail early on slave pass over skb")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 - no change

 drivers/net/ethernet/intel/ixgbevf/ipsec.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index caaea2c920a6..e3e4676af9e4 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -211,7 +211,7 @@ struct xfrm_state *ixgbevf_ipsec_find_rx_state(struct ixgbevf_ipsec *ipsec,
 static int ixgbevf_ipsec_parse_proto_keys(struct xfrm_state *xs,
 					  u32 *mykey, u32 *mysalt)
 {
-	struct net_device *dev = xs->xso.dev;
+	struct net_device *dev = xs->xso.real_dev;
 	unsigned char *key_data;
 	char *alg_name = NULL;
 	int key_len;
@@ -260,12 +260,15 @@ static int ixgbevf_ipsec_parse_proto_keys(struct xfrm_state *xs,
  **/
 static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
 {
-	struct net_device *dev = xs->xso.dev;
-	struct ixgbevf_adapter *adapter = netdev_priv(dev);
-	struct ixgbevf_ipsec *ipsec = adapter->ipsec;
+	struct net_device *dev = xs->xso.real_dev;
+	struct ixgbevf_adapter *adapter;
+	struct ixgbevf_ipsec *ipsec;
 	u16 sa_idx;
 	int ret;
 
+	adapter = netdev_priv(dev);
+	ipsec = adapter->ipsec;
+
 	if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
 		netdev_err(dev, "Unsupported protocol 0x%04x for IPsec offload\n",
 			   xs->id.proto);
@@ -383,11 +386,14 @@ static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
  **/
 static void ixgbevf_ipsec_del_sa(struct xfrm_state *xs)
 {
-	struct net_device *dev = xs->xso.dev;
-	struct ixgbevf_adapter *adapter = netdev_priv(dev);
-	struct ixgbevf_ipsec *ipsec = adapter->ipsec;
+	struct net_device *dev = xs->xso.real_dev;
+	struct ixgbevf_adapter *adapter;
+	struct ixgbevf_ipsec *ipsec;
 	u16 sa_idx;
 
+	adapter = netdev_priv(dev);
+	ipsec = adapter->ipsec;
+
 	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
 		sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_RX_INDEX;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
