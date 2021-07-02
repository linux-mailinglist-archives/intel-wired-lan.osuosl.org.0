Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A1A3BA225
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 16:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78018402A1;
	Fri,  2 Jul 2021 14:27:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiKpdV_KemfT; Fri,  2 Jul 2021 14:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D2F440259;
	Fri,  2 Jul 2021 14:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30A2E1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C192423B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UcKAzPA4HVeT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 14:27:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82716423BC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:28 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id a2so9712439pgi.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 07:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ae52QNnE0pHQHMrza2GfE9HuoTMbli8q1cxcOb1VCWs=;
 b=tQLJjd4T5G8PVo+StjSIf6mpCwfBtjO1/LESbFs6Cb6EuXm1jd3y4ezbteUI+sW2Hk
 BSKvd8I4FsuVMSXXhpes8W88oPV2ePaoRiWQovn2+ZzDGcASvFoGRE1hfR+rOyrNabmD
 6hsWO7CIZG2nTmImpZcbuKAwREBU9/0Bl7q8xHbYN5dIl8qL9mzfWNQa7hzX72L4N570
 OYVzHDypvdQTMTvnofDTXA4+MSjAItEx2CSFz/Ubf76kYZUGtzsKXgVy9+ZqaGFC/rIv
 3/+q9hNoCKw5RZWlsWSoHIzA7xnJPcEBjnAVoslwF2zU9mc4PKorcwgxdFWcmlZtWP3m
 SstQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ae52QNnE0pHQHMrza2GfE9HuoTMbli8q1cxcOb1VCWs=;
 b=ryaUwNdqe2Yd3LdCHw0yadHMbTFVzQB0fRJPO3F2Msm919t0gFrtD6XblTjCwEAm2p
 1x2jqeQmE5+Vez63NbvE8u10G1bmh2qmY2bAT9vMxfBk+QRw5d0hgV/0KzleD0evxpDI
 51MW1pDihIT2W62QJEOR2fXNbzker5tZGMc9yS3qKCc9unlGh0Wh3Hguzqu+CaijN8vJ
 mXns2L2q4fLblZeDJEmv7DdvVc6Zs7MC8dpYu+uEGRlWzLR9n9wF4OgbBw9P7AA5GH8s
 PnXRPYqxoP/YEIe6+kURZk/uh4N0S157x1SrK8hM7NHYVbOMEz48CzPsnKPvIvKbcM4C
 0/QQ==
X-Gm-Message-State: AOAM531JSGamt245YhbUw0u+TtbgzHh0gnhDTOxWdLYMFC39KbkA4Ib8
 OuML/3pXrvCe+1IgbeAWXes=
X-Google-Smtp-Source: ABdhPJyLsYnDdIe8Gy9RFoACQZY0DvExLuIY2ntl0HyABtJG1qsRHnI3CiqcqmW6o91cmOrVnnmPTA==
X-Received: by 2002:a62:e50c:0:b029:2f9:b9b1:d44f with SMTP id
 n12-20020a62e50c0000b02902f9b9b1d44fmr5711054pff.42.1625236047986; 
 Fri, 02 Jul 2021 07:27:27 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id nr12sm12683747pjb.1.2021.07.02.07.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 07:27:27 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, jarod@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jul 2021 14:26:43 +0000
Message-Id: <20210702142648.7677-4-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210702142648.7677-1-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net 3/8] net: netdevsim: use xso.real_dev
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
