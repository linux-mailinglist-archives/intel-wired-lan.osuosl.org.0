Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BFF3BC0E3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E0483A3C;
	Mon,  5 Jul 2021 15:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJZLN-PdV2Bk; Mon,  5 Jul 2021 15:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BABD2831A5;
	Mon,  5 Jul 2021 15:38:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 000C31BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3883605FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6NhXp9NtFyu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:38:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 489BE60067
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:38:43 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id a127so16944398pfa.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IDYrvr7e+y4qJuJVWK50prV8u1HescEo/y+ADLAQaf8=;
 b=PonyqAIJXsmvJy35H2sDTQRsrDwQCSlBCJi+EOo8Ltnrfb6+X76OdmlF/Eh3YpmVhy
 2U6tApjeLwvFsNcYmnfRILK/feoCbyMr+Ud/QVU4oGWRjFlDS4UXMpNq4Nfw8K8asSXn
 iaXPPXpgUIP3RvrGxRU2KCkV5xBCcfh9PnIlRn2S0Qniffkey8LOPWat94pN+P+QHoxi
 EWsmFgGkcc3iaFc7W9CD7oSfG4VxWw7AJXnqgQUHuVMUALha47FLSTQLmkqsu9hUdnB5
 Amv78Foy6R3Pm0tjgzfDVd3og2MDEJCisC6lp+1PDBn/zzZ9VGY1ovDLw2XFIGjrT2Po
 A9dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IDYrvr7e+y4qJuJVWK50prV8u1HescEo/y+ADLAQaf8=;
 b=EjSxiZcaJQH5HCw2XoyoCvS+YMZ325zsy+CR6IVHC7n2oaSpkDgC2PAJHsUVfhGw3u
 x0Qvt0qWv4psc5LM4EnGoH/Drm4PCyvsYrfqd11RmODZAf6AdgvFPEzwDfePVA6S3auM
 gO6qiZSzLzMeg6fmzeJnvowc5WoXNfVCt7Ra24ZsUT8Lh6jRuWVL35ZC8ZjL1ht2KZ61
 IEthpkVjf4VAExHlgRwO8WQchk38pOB8JVDnpd2R5/m12Edn03dO2JI0Fttiencm57BS
 7rwKyKHmQwW5ZtvPj6QzNe0lxNSZGgk6YL10DJz0LFNSC/M/7ns4U/tO8coHe0nKCxSM
 KP9w==
X-Gm-Message-State: AOAM530gAknqECc2MQ4BQ5350XD+zWJs8CQtlgcjiUDUoPPb39coUAlx
 p1t7o/vgAuvBTW70x9sfRyk=
X-Google-Smtp-Source: ABdhPJw7++r/Zn8/TX309ovlM6NTQJlHLO7FSsTCHNi+lufAwJMwT/1u5ZU6SOMImWcTbhH+13ZGzw==
X-Received: by 2002:a63:fc02:: with SMTP id j2mr9700113pgi.235.1625499522715; 
 Mon, 05 Jul 2021 08:38:42 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:42 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:07 +0000
Message-Id: <20210705153814.11453-3-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 2/9] bonding: fix null dereference
 in bond_ipsec_add_sa()
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

If bond doesn't have real device, bond->curr_active_slave is null.
But bond_ipsec_add_sa() dereferences bond->curr_active_slave without
null checking.
So, null-ptr-deref would occur.

Test commands:
    ip link add bond0 type bond
    ip link set bond0 up
    ip x s add proto esp dst 14.1.1.1 src 15.1.1.1 spi \
0x07 mode transport reqid 0x07 replay-window 32 aead 'rfc4106(gcm(aes))' \
0x44434241343332312423222114131211f4f3f2f1 128 sel src 14.0.0.52/24 \
dst 14.0.0.70/24 proto tcp offload dev bond0 dir in

Splat looks like:
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 4 PID: 680 Comm: ip Not tainted 5.13.0-rc3+ #1168
RIP: 0010:bond_ipsec_add_sa+0xc4/0x2e0 [bonding]
Code: 85 21 02 00 00 4d 8b a6 48 0c 00 00 e8 75 58 44 ce 85 c0 0f 85 14
01 00 00 48 b8 00 00 00 00 00 fc ff df 4c 89 e2 48 c1 ea 03 <80> 3c 02
00 0f 85 fc 01 00 00 48 8d bb e0 02 00 00 4d 8b 2c 24 48
RSP: 0018:ffff88810946f508 EFLAGS: 00010246
RAX: dffffc0000000000 RBX: ffff88810b4e8040 RCX: 0000000000000001
RDX: 0000000000000000 RSI: ffffffff8fe34280 RDI: ffff888115abe100
RBP: ffff88810946f528 R08: 0000000000000003 R09: fffffbfff2287e11
R10: 0000000000000001 R11: ffff888115abe0c8 R12: 0000000000000000
R13: ffffffffc0aea9a0 R14: ffff88800d7d2000 R15: ffff88810b4e8330
FS:  00007efc5552e680(0000) GS:ffff888119c00000(0000)
knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000055c2530dbf40 CR3: 0000000103056004 CR4: 00000000003706e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
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
 ? xfrm_user_state_lookup.constprop.39+0x320/0x320 [xfrm_user]
 ? netlink_ack+0x9d0/0x9d0
 ? netlink_deliver_tap+0x17c/0xa50
 xfrm_netlink_rcv+0x68/0x80 [xfrm_user]
 netlink_unicast+0x41c/0x610
 ? netlink_attachskb+0x710/0x710
 netlink_sendmsg+0x6b9/0xb70
[ ...]

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
v1 -> v2:
 - no change

 drivers/net/bonding/bond_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index fd7b7f894917..e1009e169d42 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -411,6 +411,11 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 	rcu_read_lock();
 	bond = netdev_priv(bond_dev);
 	slave = rcu_dereference(bond->curr_active_slave);
+	if (!slave) {
+		rcu_read_unlock();
+		return -ENODEV;
+	}
+
 	xs->xso.real_dev = slave->dev;
 	bond->xs = xs;
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
