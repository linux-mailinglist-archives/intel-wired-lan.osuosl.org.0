Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB4D20FC30
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2020 20:50:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCDFC88523;
	Tue, 30 Jun 2020 18:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRppS3TzzoTK; Tue, 30 Jun 2020 18:50:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4728883D6;
	Tue, 30 Jun 2020 18:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 748331BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 18:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E51C88391
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 18:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mNjvaU+FKEJm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2020 18:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2101488347
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2020 18:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593543044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=QB1TMaXvn2cR8bVKHMvuvCeNoQ0tyqqqqnWujcCz9Q4=;
 b=HCYrmOywNz2apmaOnS61DbVtZ9uPfkKG4kGEaucZ6/Ku1P9f93lQhNESFH0/HjUBz67psV
 aH6+/W/NZDGCU9SdBZ8LUczJdc2vlHnqanZKx4BgPH/ZuKbHc0z0799jNz+d1pkloXnHN0
 rVYjjmXsiQRs6cvKUd4Jl8+u6PcIKjY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-RJetcWMkO8eIhycmtigLsQ-1; Tue, 30 Jun 2020 14:50:40 -0400
X-MC-Unique: RJetcWMkO8eIhycmtigLsQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1C6C18FE861;
 Tue, 30 Jun 2020 18:50:35 +0000 (UTC)
Received: from hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com
 (hp-dl360pgen8-07.khw2.lab.eng.bos.redhat.com [10.16.210.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD6655DAA0;
 Tue, 30 Jun 2020 18:50:30 +0000 (UTC)
From: Jarod Wilson <jarod@redhat.com>
To: linux-kernel@vger.kernel.org
Date: Tue, 30 Jun 2020 14:49:41 -0400
Message-Id: <20200630184941.65165-1-jarod@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: [Intel-wired-lan] [PATCH net-next] bonding: allow xfrm offload
 setup post-module-load
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
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Huy Nguyen <huyn@mellanox.com>, intel-wired-lan@lists.osuosl.org,
 "David S. Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

At the moment, bonding xfrm crypto offload can only be set up if the bonding
module is loaded with active-backup mode already set. We need to be able to
make this work with bonds set to AB after the bonding driver has already
been loaded.

So what's done here is:

1) move #define BOND_XFRM_FEATURES to net/bonding.h so it can be used
by both bond_main.c and bond_options.c
2) set BOND_XFRM_FEATURES in bond_dev->hw_features universally, rather than
only when loading in AB mode
3) wire up xfrmdev_ops universally too
4) disable BOND_XFRM_FEATURES in bond_dev->features if not AB
5) exit early (non-AB case) from bond_ipsec_offload_ok, to prevent a
performance hit from traversing into the underlying drivers
5) toggle BOND_XFRM_FEATURES in bond_dev->wanted_features and call
netdev_change_features() from bond_option_mode_set()

In my local testing, I can change bonding modes back and forth on the fly,
have hardware offload work when I'm in AB, and see no performance penalty
to non-AB software encryption, despite having xfrm bits all wired up for
all modes now.

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Reported-by: Huy Nguyen <huyn@mellanox.com>
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
 drivers/net/bonding/bond_main.c    | 19 ++++++++++---------
 drivers/net/bonding/bond_options.c |  8 ++++++++
 include/net/bonding.h              |  5 +++++
 3 files changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index b3479584cc16..2adf6ce20a38 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -434,6 +434,9 @@ static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 	struct slave *curr_active = rtnl_dereference(bond->curr_active_slave);
 	struct net_device *slave_dev = curr_active->dev;
 
+	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
+		return true;
+
 	if (!(slave_dev->xfrmdev_ops
 	      && slave_dev->xfrmdev_ops->xdo_dev_offload_ok)) {
 		slave_warn(bond_dev, slave_dev, "%s: no slave xdo_dev_offload_ok\n", __func__);
@@ -1218,11 +1221,6 @@ static netdev_features_t bond_fix_features(struct net_device *dev,
 #define BOND_ENC_FEATURES	(NETIF_F_HW_CSUM | NETIF_F_SG | \
 				 NETIF_F_RXCSUM | NETIF_F_ALL_TSO)
 
-#ifdef CONFIG_XFRM_OFFLOAD
-#define BOND_XFRM_FEATURES	(NETIF_F_HW_ESP | NETIF_F_HW_ESP_TX_CSUM | \
-				 NETIF_F_GSO_ESP)
-#endif /* CONFIG_XFRM_OFFLOAD */
-
 #define BOND_MPLS_FEATURES	(NETIF_F_HW_CSUM | NETIF_F_SG | \
 				 NETIF_F_ALL_TSO)
 
@@ -4654,8 +4652,7 @@ void bond_setup(struct net_device *bond_dev)
 
 #ifdef CONFIG_XFRM_OFFLOAD
 	/* set up xfrm device ops (only supported in active-backup right now) */
-	if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
-		bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
+	bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
 	bond->xs = NULL;
 #endif /* CONFIG_XFRM_OFFLOAD */
 
@@ -4678,11 +4675,15 @@ void bond_setup(struct net_device *bond_dev)
 
 	bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
 #ifdef CONFIG_XFRM_OFFLOAD
-	if (BOND_MODE(bond) == BOND_MODE_ACTIVEBACKUP)
-		bond_dev->hw_features |= BOND_XFRM_FEATURES;
+	bond_dev->hw_features |= BOND_XFRM_FEATURES;
 #endif /* CONFIG_XFRM_OFFLOAD */
 	bond_dev->features |= bond_dev->hw_features;
 	bond_dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
+#ifdef CONFIG_XFRM_OFFLOAD
+	/* Disable XFRM features if this isn't an active-backup config */
+	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
+		bond_dev->features &= ~BOND_XFRM_FEATURES;
+#endif /* CONFIG_XFRM_OFFLOAD */
 }
 
 /* Destroy a bonding device.
diff --git a/drivers/net/bonding/bond_options.c b/drivers/net/bonding/bond_options.c
index ddb3916d3506..9abfaae1c6f7 100644
--- a/drivers/net/bonding/bond_options.c
+++ b/drivers/net/bonding/bond_options.c
@@ -767,6 +767,14 @@ static int bond_option_mode_set(struct bonding *bond,
 	if (newval->value == BOND_MODE_ALB)
 		bond->params.tlb_dynamic_lb = 1;
 
+#ifdef CONFIG_XFRM_OFFLOAD
+	if (newval->value == BOND_MODE_ACTIVEBACKUP)
+		bond->dev->wanted_features |= BOND_XFRM_FEATURES;
+	else
+		bond->dev->wanted_features &= ~BOND_XFRM_FEATURES;
+	netdev_change_features(bond->dev);
+#endif /* CONFIG_XFRM_OFFLOAD */
+
 	/* don't cache arp_validate between modes */
 	bond->params.arp_validate = BOND_ARP_VALIDATE_NONE;
 	bond->params.mode = newval->value;
diff --git a/include/net/bonding.h b/include/net/bonding.h
index a00e1764e9b1..7d132cc1e584 100644
--- a/include/net/bonding.h
+++ b/include/net/bonding.h
@@ -86,6 +86,11 @@
 #define bond_for_each_slave_rcu(bond, pos, iter) \
 	netdev_for_each_lower_private_rcu((bond)->dev, pos, iter)
 
+#ifdef CONFIG_XFRM_OFFLOAD
+#define BOND_XFRM_FEATURES (NETIF_F_HW_ESP | NETIF_F_HW_ESP_TX_CSUM | \
+			    NETIF_F_GSO_ESP)
+#endif /* CONFIG_XFRM_OFFLOAD */
+
 #ifdef CONFIG_NET_POLL_CONTROLLER
 extern atomic_t netpoll_block_tx;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
