Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 746143BA22E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 16:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F5F960B96;
	Fri,  2 Jul 2021 14:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXU4GBW_Qkr3; Fri,  2 Jul 2021 14:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2787260BA4;
	Fri,  2 Jul 2021 14:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EB6D1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8AEE660BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m35yqtIA6tcS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 14:27:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0AC6E60BA2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:44 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id l19so424057plg.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 07:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MjLUbGH0MGrlBm4hWaTXQtXhGGiwb0l8vU/Dm19x2C0=;
 b=qvUB4Hp1ERDHSFHgMOLgazpHt96sJfyf8ZvAgp5Oo4qQSxmfjqCrCLiMHcJ2rF3nSL
 ErUHEsL2O/SKK3E6BQQByPYgbTODERF02oCKw90ysLd6N3nob8B0D1KYsWO7Oud+WpvS
 vcMGnwcvzhpngkjnTmaDqYiedEBg+3HoDsDJ5nBucdCRbsM7wbNzvm4fqbfEImZTHSC5
 spJ9TGTH7jOt41HMyZWwkmLogq06oMyOYAEvr66NWZl7u5+1Gr239/s8Z8uwqGmi9S+r
 ISa7LSJ6uchuCfV+cv0l4l3wDNwFZSihBtfPRxhG8cGon0qTYecLfcrIq+9Qgw37ZCT5
 w9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MjLUbGH0MGrlBm4hWaTXQtXhGGiwb0l8vU/Dm19x2C0=;
 b=gOtnUw6tbjyW28FatjtLHQRLReoh/1bwWZ7IF28DWP42a5X5BdatCvhODmxUTNMwEA
 8xkyfUn9AndScJjuqSW1w9XAhX2NWdKS4L2HmDGJzAH5qUO2qrWJJQUarU89Z+Mj24z/
 Ovh/8u0qh3oFF1qWt2STKfkNEWOg7tvFja2qelG1IhoithJQ8pM91IQIatuEKA9RIOPS
 V41vP/LL1Srgdk4lZ5EY9jVJnvvCFlcIV78EXuFrKvi93Qhk7vW6STlFj2Vg0c2Zb0SQ
 CXtaXHp1W/DLOqGtI9wQfzTBwNOWS/D0C2vxLDeOiIKpe8/5sMBwDrYcWXh70HHHlbx8
 e60w==
X-Gm-Message-State: AOAM533OS0sS7domsLwH8vwhOeI+/tCi+XUXlkl1b9KrcGr9guWw0M5U
 f9+29RAeFXHZ8bIAjIbOKm4=
X-Google-Smtp-Source: ABdhPJzuGqTXJAuqGlKdJAxPv/xVGKVmguNmlZOMHLMPfj9525bAE8E3BL5e8iGNoVfh+Br0u98U4w==
X-Received: by 2002:a17:902:c611:b029:122:847c:66e9 with SMTP id
 r17-20020a170902c611b0290122847c66e9mr88936plr.82.1625236064509; 
 Fri, 02 Jul 2021 07:27:44 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id nr12sm12683747pjb.1.2021.07.02.07.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 07:27:44 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, jarod@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jul 2021 14:26:48 +0000
Message-Id: <20210702142648.7677-9-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210702142648.7677-1-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net 8/8] bonding: fix suspicious RCU usage
 in bond_ipsec_offload_ok()
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

To dereference bond->curr_active_slave, it uses rcu_dereference().
But it and the caller doesn't acquire RCU so a warning occurs.
So add rcu_read_lock().

Splat looks like:
WARNING: suspicious RCU usage
5.13.0-rc6+ #1179 Not tainted
drivers/net/bonding/bond_main.c:571 suspicious
rcu_dereference_check() usage!

other info that might help us debug this:

rcu_scheduler_active = 2, debug_locks = 1
1 lock held by ping/974:
 #0: ffff888109e7db70 (sk_lock-AF_INET){+.+.}-{0:0},
at: raw_sendmsg+0x1303/0x2cb0

stack backtrace:
CPU: 2 PID: 974 Comm: ping Not tainted 5.13.0-rc6+ #1179
Call Trace:
 dump_stack+0xa4/0xe5
 bond_ipsec_offload_ok+0x1f4/0x260 [bonding]
 xfrm_output+0x179/0x890
 xfrm4_output+0xfa/0x410
 ? __xfrm4_output+0x4b0/0x4b0
 ? __ip_make_skb+0xecc/0x2030
 ? xfrm4_udp_encap_rcv+0x800/0x800
 ? ip_local_out+0x21/0x3a0
 ip_send_skb+0x37/0xa0
 raw_sendmsg+0x1bfd/0x2cb0

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/bonding/bond_main.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index d2d37efb61b6..44c4509528f8 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -568,24 +568,34 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 	struct net_device *real_dev;
 	struct slave *curr_active;
 	struct bonding *bond;
+	int err;
 
 	bond = netdev_priv(bond_dev);
+	rcu_read_lock();
 	curr_active = rcu_dereference(bond->curr_active_slave);
 	real_dev = curr_active->dev;
 
-	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
-		return true;
+	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP) {
+		err = true;
+		goto out;
+	}
 
-	if (!xs->xso.real_dev)
-		return false;
+	if (!xs->xso.real_dev) {
+		err = false;
+		goto out;
+	}
 
 	if (!real_dev->xfrmdev_ops ||
 	    !real_dev->xfrmdev_ops->xdo_dev_offload_ok ||
 	    netif_is_bond_master(real_dev)) {
-		return false;
+		err = false;
+		goto out;
 	}
 
-	return real_dev->xfrmdev_ops->xdo_dev_offload_ok(skb, xs);
+	err = real_dev->xfrmdev_ops->xdo_dev_offload_ok(skb, xs);
+out:
+	rcu_read_unlock();
+	return err;
 }
 
 static const struct xfrmdev_ops bond_xfrmdev_ops = {
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
