Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91593219414
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 01:09:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03D0B2050A;
	Wed,  8 Jul 2020 23:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aouNVDvqh+Ul; Wed,  8 Jul 2020 23:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15A1E2050B;
	Wed,  8 Jul 2020 23:09:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D40B1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7493B204F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9QVozdJwASGo for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 22:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 2EC3F204F0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 22:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594249142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=5273qNZ2G1pvs6o6EmJVKX3kUo6d0ElK4jyei1Dx3qQ=;
 b=Hrf1dQ33Nm98whQufWdd1nyZfEEoq0IV2VmEqFKlmzIgdXD7t2smvqgI6cqVG+FNoLToVN
 wwKwZ0BqH3WSHeAHvpSt41cXc8iGYbaCBSxKTaIbvR+vs7udOCoVqE+mtdqnSjFOM4ZTaE
 e3AHx6mU6M8pvmYb881wG8R+7dYOQz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-GVqzbkf7MEi_x9rvI2YAUA-1; Wed, 08 Jul 2020 18:58:58 -0400
X-MC-Unique: GVqzbkf7MEi_x9rvI2YAUA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7858F108B;
 Wed,  8 Jul 2020 22:58:56 +0000 (UTC)
Received: from hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com
 (hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com [10.16.210.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 865C15D9C9;
 Wed,  8 Jul 2020 22:58:51 +0000 (UTC)
From: Jarod Wilson <jarod@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Wed,  8 Jul 2020 18:58:49 -0400
Message-Id: <20200708225849.25198-1-jarod@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mailman-Approved-At: Wed, 08 Jul 2020 23:09:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next] bonding: don't need RTNL for
 ipsec helpers
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Saeed Mahameed <saeedm@mellanox.com>, Veaceslav Falico <vfalico@gmail.com>,
 netdev@vger.kernel.org, syzbot+582c98032903dcc04816@syzkaller.appspotmail.com,
 Jakub Kicinski <kuba@kernel.org>, Huy Nguyen <huyn@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bond_ipsec_* helpers don't need RTNL, and can potentially get called
without it being held, so switch from rtnl_dereference() to
rcu_dereference() to access bond struct data.

Lightly tested with xfrm bonding, no problems found, should address the
syzkaller bug referenced below.

Reported-by: syzbot+582c98032903dcc04816@syzkaller.appspotmail.com
CC: Huy Nguyen <huyn@mellanox.com>
CC: Saeed Mahameed <saeedm@mellanox.com>
CC: Jay Vosburgh <j.vosburgh@gmail.com>
CC: Veaceslav Falico <vfalico@gmail.com>
CC: Andy Gospodarek <andy@greyhouse.net>
CC: "David S. Miller" <davem@davemloft.net>
CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>
CC: Steffen Klassert <steffen.klassert@secunet.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>
CC: netdev@vger.kernel.org
CC: intel-wired-lan@lists.osuosl.org
Signed-off-by: Jarod Wilson <jarod@redhat.com>
---
 drivers/net/bonding/bond_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index f886d97c4359..e2d491c4378c 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -390,7 +390,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 
 	bond = netdev_priv(bond_dev);
-	slave = rtnl_dereference(bond->curr_active_slave);
+	slave = rcu_dereference(bond->curr_active_slave);
 	xs->xso.real_dev = slave->dev;
 	bond->xs = xs;
 
@@ -417,7 +417,7 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 		return;
 
 	bond = netdev_priv(bond_dev);
-	slave = rtnl_dereference(bond->curr_active_slave);
+	slave = rcu_dereference(bond->curr_active_slave);
 
 	if (!slave)
 		return;
@@ -442,7 +442,7 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 {
 	struct net_device *bond_dev = xs->xso.dev;
 	struct bonding *bond = netdev_priv(bond_dev);
-	struct slave *curr_active = rtnl_dereference(bond->curr_active_slave);
+	struct slave *curr_active = rcu_dereference(bond->curr_active_slave);
 	struct net_device *slave_dev = curr_active->dev;
 
 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
