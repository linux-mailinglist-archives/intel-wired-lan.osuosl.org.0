Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E99753BC0E4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96DD383A42;
	Mon,  5 Jul 2021 15:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RvsgOTO8PmB; Mon,  5 Jul 2021 15:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7016F8339C;
	Mon,  5 Jul 2021 15:38:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAC0F1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA06D40164
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MO4-aKM_ScDr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:38:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D94D400EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:46 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id o18so17994566pgu.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lMSSdoWiTyyXbHxY8RuHT5ZkkeUWhPJEXNlMOqEppmY=;
 b=JjH+MLdJgwevILRyRtDlrWI/UyJQKA69mnaa43RRVamwhiB7ngebuZHkPh3Yqlr1x7
 A6PM561okVOKamdcq2mGn21UUz8uWhg3005qns54kQGpUWwRAO2K3CaKfkVBF9/rhEzX
 NqAPjZ6b9eNHNdhxlnvmzAZUpKcRSc6H8mO2uNSXIhRrpffue6SIHLINweXNr08lXqHt
 zzn34udUYb/J0f4Dg8SEV0LZeMantEOi0v5sCnL8EpNMWoG1QFenVXjiG17J5sVOysGy
 apoRP2QMACzezgo3D4JL+TwCz75f/N0Pb8flCdfIYttI4SC2u2xkHB+roBoDUGZajlha
 rxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lMSSdoWiTyyXbHxY8RuHT5ZkkeUWhPJEXNlMOqEppmY=;
 b=c2l/gTqzFwW+B0jIaf0ndWsMscIO6SHVqSzM9jTelOSnvA+B/VEbIWUWS8CGg85DsO
 I+yvk+6w3pIpe4+JAu62DjRfwDTFvw3TzSAcBleApjvpr9dMrOMtjmdyjiA36YDf0cjK
 JXS7YdcOymerpZneFp2ZPn96NgwVSoOlLiWx7jkzRjs9iNFn5CSbTRPw9DDRH8f+J18f
 FIaAusv8KbNGwnHhH4LgALxjlte1ROkoluVD0W/6yDfbsLvlbdnPlum8AfVlQiizNAyO
 PjTFBaaBgSUF4geTAQRORJoCeD3uJuLSo9o113qrMkCNcbPGRoFYzoCFlxZv1+ias03a
 dFWQ==
X-Gm-Message-State: AOAM533HgrVgReL/+hp+rPk35TbB/TLv3SoFq7I1vl0cX4eNaS9ORR0Z
 G/XRkKVVlLoBIhZNNAkgfuY=
X-Google-Smtp-Source: ABdhPJygmUHiM0ZWSgSUTOVaBrR29PMSQNxWjAf/APb0Xr+u82oIRuZhde1kOmrX4w8pRwULVBPjbA==
X-Received: by 2002:aa7:86c4:0:b029:316:98ff:30c with SMTP id
 h4-20020aa786c40000b029031698ff030cmr15617765pfo.66.1625499526135; 
 Mon, 05 Jul 2021 08:38:46 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:45 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:08 +0000
Message-Id: <20210705153814.11453-4-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 3/9] net: netdevsim: use
 xso.real_dev instead of xso.dev in callback functions of struct xfrmdev_ops
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
So, netdevsim should always use real_dev instead of dev.
Of course, real_dev always not be null.

Test commands:
    ip netns add A
    ip netns exec A bash
    modprobe netdevsim
    echo "1 1" > /sys/bus/netdevsim/new_device
    ip link add bond0 type bond mode active-backup
    ip link set eth0 master bond0
    ip link set eth0 up
    ip link set bond0 up
    ip x s add proto esp dst 14.1.1.1 src 15.1.1.1 spi 0x07 mode \
transport reqid 0x07 replay-window 32 aead 'rfc4106(gcm(aes))' \
0x44434241343332312423222114131211f4f3f2f1 128 sel src 14.0.0.52/24 \
dst 14.0.0.70/24 proto tcp offload dev bond0 dir in

Splat looks like:
BUG: spinlock bad magic on CPU#5, kworker/5:1/53
 lock: 0xffff8881068c2cc8, .magic: 11121314, .owner: <none>/-1,
.owner_cpu: -235736076
CPU: 5 PID: 53 Comm: kworker/5:1 Not tainted 5.13.0-rc3+ #1168
Workqueue: events linkwatch_event
Call Trace:
 dump_stack+0xa4/0xe5
 do_raw_spin_lock+0x20b/0x270
 ? rwlock_bug.part.1+0x90/0x90
 _raw_spin_lock_nested+0x5f/0x70
 bond_get_stats+0xe4/0x4c0 [bonding]
 ? rcu_read_lock_sched_held+0xc0/0xc0
 ? bond_neigh_init+0x2c0/0x2c0 [bonding]
 ? dev_get_alias+0xe2/0x190
 ? dev_get_port_parent_id+0x14a/0x360
 ? rtnl_unregister+0x190/0x190
 ? dev_get_phys_port_name+0xa0/0xa0
 ? memset+0x1f/0x40
 ? memcpy+0x38/0x60
 ? rtnl_phys_switch_id_fill+0x91/0x100
 dev_get_stats+0x8c/0x270
 rtnl_fill_stats+0x44/0xbe0
 ? nla_put+0xbe/0x140
 rtnl_fill_ifinfo+0x1054/0x3ad0
[ ... ]

Fixes: 272c2330adc9 ("xfrm: bail early on slave pass over skb")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v1 -> v2:
 - no change

 drivers/net/netdevsim/ipsec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/netdevsim/ipsec.c b/drivers/net/netdevsim/ipsec.c
index 3811f1bde84e..b80ed2ffd45e 100644
--- a/drivers/net/netdevsim/ipsec.c
+++ b/drivers/net/netdevsim/ipsec.c
@@ -85,7 +85,7 @@ static int nsim_ipsec_parse_proto_keys(struct xfrm_state *xs,
 				       u32 *mykey, u32 *mysalt)
 {
 	const char aes_gcm_name[] = "rfc4106(gcm(aes))";
-	struct net_device *dev = xs->xso.dev;
+	struct net_device *dev = xs->xso.real_dev;
 	unsigned char *key_data;
 	char *alg_name = NULL;
 	int key_len;
@@ -134,7 +134,7 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs)
 	u16 sa_idx;
 	int ret;
 
-	dev = xs->xso.dev;
+	dev = xs->xso.real_dev;
 	ns = netdev_priv(dev);
 	ipsec = &ns->ipsec;
 
@@ -194,7 +194,7 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs)
 
 static void nsim_ipsec_del_sa(struct xfrm_state *xs)
 {
-	struct netdevsim *ns = netdev_priv(xs->xso.dev);
+	struct netdevsim *ns = netdev_priv(xs->xso.real_dev);
 	struct nsim_ipsec *ipsec = &ns->ipsec;
 	u16 sa_idx;
 
@@ -211,7 +211,7 @@ static void nsim_ipsec_del_sa(struct xfrm_state *xs)
 
 static bool nsim_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 {
-	struct netdevsim *ns = netdev_priv(xs->xso.dev);
+	struct netdevsim *ns = netdev_priv(xs->xso.real_dev);
 	struct nsim_ipsec *ipsec = &ns->ipsec;
 
 	ipsec->ok++;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
