Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C533BA22D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jul 2021 16:27:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A100E60BCC;
	Fri,  2 Jul 2021 14:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HcSOBw3o2RW6; Fri,  2 Jul 2021 14:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C4CD60B96;
	Fri,  2 Jul 2021 14:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AAB3C1BF335
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A06760BB1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOjnXqQfmWAR for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jul 2021 14:27:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA3EF60BAA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jul 2021 14:27:41 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 21so9095968pfp.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 02 Jul 2021 07:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nU7xv0r2pxdMfVRfM8DEYon7zSO5snWRMGGN+ysxbQ0=;
 b=Z4BZjkGczk1jPovG4BLPORqJ8MMHiqGyrJPJeVIVav2UBDKpQGs/HFe5OkB89TVxIH
 L4TG+WL5HVO9lTxCWvYsrEA0qzRX6Vjm653VmmAIeD97DNWJijK2DESvTiEjeGgVffrp
 oJvgDrMVrwQ7vEHMD8CK/BCuLA0+Vvd1fQnuGW+RDs8c84UsVOpKlQKXR1wnhS+xpBCX
 s5ncgwgI1z/pQiN0rFpusI6Gb7IB2WHL1GfX243T4dr+8A05U4JvVTXKkclT279Pcp0p
 /WWykMdg1GFCuVZIuYTmvMypaGd5d5iCYcIBeRdGqpReR+tshUtckCbIEMxoMRHXipjm
 n1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nU7xv0r2pxdMfVRfM8DEYon7zSO5snWRMGGN+ysxbQ0=;
 b=DwjwHbQZFBLNK1AZ/bJUFYzc59opz+FcVf6+XrAl6nJpbGg8MS/DtvU2BopTlMex0V
 j9FWtbUWSB0i1GXHukNKywTVDzCGg+g7Bf8W17w3L5+Y4QICmek57+JIF8S9eqnMw0wo
 jDBs//ZTlBBeclEd5VlggA31HrBF7zg1dS1HYMA0tJVbRGcvlPzhRCWDwaiWT4qRQQPl
 QHUhsbC+Dap1VPhy21XWFyZaPr7+rbsW/+AhFyTDByv8sWmT51G+5kBlNKM+o6bTXzp/
 IPLdQBqQvezE9pPhLzD/vwmWHAW+IaoP8ChK+J67HezhduA7RQpsuVLXehiK65ZOdNd2
 +7Xw==
X-Gm-Message-State: AOAM5305y72SpbbG+fRTmaBFqSqZdpLNb0VG9xM46BGU+yccMGTAexmS
 HHcvoWLpZLPWXcicHHZMvhg=
X-Google-Smtp-Source: ABdhPJwaRDMokHYVBe7wsAg9i82vD75fwa1p51GtEr/2Yh/aUbU25z09N2OlDitZqanSyVEPvneWcg==
X-Received: by 2002:a63:5d65:: with SMTP id o37mr296156pgm.79.1625236061246;
 Fri, 02 Jul 2021 07:27:41 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id nr12sm12683747pjb.1.2021.07.02.07.27.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 07:27:40 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, j.vosburgh@gmail.com,
 vfalico@gmail.com, andy@greyhouse.net, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, jarod@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Jul 2021 14:26:47 +0000
Message-Id: <20210702142648.7677-8-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210702142648.7677-1-ap420073@gmail.com>
References: <20210702142648.7677-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net 7/8] bonding: Add struct bond_ipesc to
 manage SA
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

bonding has been supporting ipsec offload.
When SA is added, bonding just passes SA to its own active real interface.
But it doesn't manage SA.
So, when events(add/del real interface, active real interface change, etc)
occur, bonding can't handle that well because It doesn't manage SA.
So some problems(panic, UAF, refcnt leak)occur.

In order to make it stable, it should manage SA.
That's the reason why struct bond_ipsec is added.
When a new SA is added to bonding interface, it is stored in the
bond_ipsec list. And the SA is passed to a current active real interface.
If events occur, it uses bond_ipsec data to handle these events.
bond->ipsec_list is protected by bond->ipsec_lock.

If a current active real interface is changed, the following logic works.
1. delete all SAs from old active real interface
2. Add all SAs to the new active real interface.
3. If a new active real interface doesn't support ipsec offload or SA's
option, it sets real_dev to NULL.

Fixes: 18cb261afd7b ("bonding: support hardware encryption offload to slaves")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
---
 drivers/net/bonding/bond_main.c | 134 +++++++++++++++++++++++++++-----
 include/net/bonding.h           |   8 +-
 2 files changed, 121 insertions(+), 21 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index f268e67cb2f0..d2d37efb61b6 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -401,6 +401,7 @@ static int bond_vlan_rx_kill_vid(struct net_device *bond_dev,
 static int bond_ipsec_add_sa(struct xfrm_state *xs)
 {
 	struct net_device *bond_dev = xs->xso.dev;
+	struct bond_ipsec *ipsec;
 	struct bonding *bond;
 	struct slave *slave;
 	int err;
@@ -416,9 +417,6 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 		return -ENODEV;
 	}
 
-	xs->xso.real_dev = slave->dev;
-	bond->xs = xs;
-
 	if (!slave->dev->xfrmdev_ops ||
 	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
 	    netif_is_bond_master(slave->dev)) {
@@ -427,11 +425,58 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	ipsec = kmalloc(sizeof(*ipsec), GFP_ATOMIC);
+	if (!ipsec) {
+		rcu_read_unlock();
+		return -ENOMEM;
+	}
+	xs->xso.real_dev = slave->dev;
+
 	err = slave->dev->xfrmdev_ops->xdo_dev_state_add(xs);
+	if (!err) {
+		ipsec->xs = xs;
+		INIT_LIST_HEAD(&ipsec->list);
+		spin_lock_bh(&bond->ipsec_lock);
+		list_add(&ipsec->list, &bond->ipsec_list);
+		spin_unlock_bh(&bond->ipsec_lock);
+	} else {
+		kfree(ipsec);
+	}
 	rcu_read_unlock();
 	return err;
 }
 
+static void bond_ipsec_add_sa_all(struct bonding *bond)
+{
+	struct net_device *bond_dev = bond->dev;
+	struct bond_ipsec *ipsec;
+	struct slave *slave;
+
+	rcu_read_lock();
+	slave = rcu_dereference(bond->curr_active_slave);
+	if (!slave)
+		goto out;
+
+	if (!slave->dev->xfrmdev_ops ||
+	    !slave->dev->xfrmdev_ops->xdo_dev_state_add ||
+	    netif_is_bond_master(slave->dev)) {
+		slave_warn(bond_dev, slave->dev, "%s: no slave xdo_dev_state_add\n", __func__);
+		goto out;
+	}
+
+	spin_lock_bh(&bond->ipsec_lock);
+	list_for_each_entry(ipsec, &bond->ipsec_list, list) {
+		ipsec->xs->xso.real_dev = slave->dev;
+		if (slave->dev->xfrmdev_ops->xdo_dev_state_add(ipsec->xs)) {
+			slave_warn(bond_dev, slave->dev, "%s: failed to add SA\n", __func__);
+			ipsec->xs->xso.real_dev = NULL;
+		}
+	}
+	spin_unlock_bh(&bond->ipsec_lock);
+out:
+	rcu_read_unlock();
+}
+
 /**
  * bond_ipsec_del_sa - clear out this specific SA
  * @xs: pointer to transformer state struct
@@ -439,6 +484,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 static void bond_ipsec_del_sa(struct xfrm_state *xs)
 {
 	struct net_device *bond_dev = xs->xso.dev;
+	struct bond_ipsec *ipsec;
 	struct bonding *bond;
 	struct slave *slave;
 
@@ -452,7 +498,10 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 	if (!slave)
 		goto out;
 
-	xs->xso.real_dev = slave->dev;
+	if (!xs->xso.real_dev)
+		goto out;
+
+	WARN_ON(xs->xso.real_dev != slave->dev);
 
 	if (!slave->dev->xfrmdev_ops ||
 	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
@@ -463,6 +512,48 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 
 	slave->dev->xfrmdev_ops->xdo_dev_state_delete(xs);
 out:
+	spin_lock_bh(&bond->ipsec_lock);
+	list_for_each_entry(ipsec, &bond->ipsec_list, list) {
+		if (ipsec->xs == xs) {
+			list_del(&ipsec->list);
+			kfree(ipsec);
+			break;
+		}
+	}
+	spin_unlock_bh(&bond->ipsec_lock);
+	rcu_read_unlock();
+}
+
+static void bond_ipsec_del_sa_all(struct bonding *bond)
+{
+	struct net_device *bond_dev = bond->dev;
+	struct bond_ipsec *ipsec;
+	struct slave *slave;
+
+	rcu_read_lock();
+	slave = rcu_dereference(bond->curr_active_slave);
+	if (!slave) {
+		rcu_read_unlock();
+		return;
+	}
+
+	spin_lock_bh(&bond->ipsec_lock);
+	list_for_each_entry(ipsec, &bond->ipsec_list, list) {
+		if (!ipsec->xs->xso.real_dev)
+			continue;
+
+		if (!slave->dev->xfrmdev_ops ||
+		    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
+		    netif_is_bond_master(slave->dev)) {
+			slave_warn(bond_dev, slave->dev,
+				   "%s: no slave xdo_dev_state_delete\n",
+				   __func__);
+		} else {
+			slave->dev->xfrmdev_ops->xdo_dev_state_delete(ipsec->xs);
+		}
+		ipsec->xs->xso.real_dev = NULL;
+	}
+	spin_unlock_bh(&bond->ipsec_lock);
 	rcu_read_unlock();
 }
 
@@ -474,22 +565,27 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
 {
 	struct net_device *bond_dev = xs->xso.dev;
-	struct bonding *bond = netdev_priv(bond_dev);
-	struct slave *curr_active = rcu_dereference(bond->curr_active_slave);
-	struct net_device *slave_dev = curr_active->dev;
+	struct net_device *real_dev;
+	struct slave *curr_active;
+	struct bonding *bond;
+
+	bond = netdev_priv(bond_dev);
+	curr_active = rcu_dereference(bond->curr_active_slave);
+	real_dev = curr_active->dev;
 
 	if (BOND_MODE(bond) != BOND_MODE_ACTIVEBACKUP)
 		return true;
 
-	if (!slave_dev->xfrmdev_ops ||
-	    !slave_dev->xfrmdev_ops->xdo_dev_offload_ok ||
-	    netif_is_bond_master(slave_dev)) {
-		slave_warn(bond_dev, slave_dev, "%s: no slave xdo_dev_offload_ok\n", __func__);
+	if (!xs->xso.real_dev)
+		return false;
+
+	if (!real_dev->xfrmdev_ops ||
+	    !real_dev->xfrmdev_ops->xdo_dev_offload_ok ||
+	    netif_is_bond_master(real_dev)) {
 		return false;
 	}
 
-	xs->xso.real_dev = slave_dev;
-	return slave_dev->xfrmdev_ops->xdo_dev_offload_ok(skb, xs);
+	return real_dev->xfrmdev_ops->xdo_dev_offload_ok(skb, xs);
 }
 
 static const struct xfrmdev_ops bond_xfrmdev_ops = {
@@ -1006,8 +1102,7 @@ void bond_change_active_slave(struct bonding *bond, struct slave *new_active)
 		return;
 
 #ifdef CONFIG_XFRM_OFFLOAD
-	if (old_active && bond->xs)
-		bond_ipsec_del_sa(bond->xs);
+	bond_ipsec_del_sa_all(bond);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	if (new_active) {
@@ -1083,10 +1178,7 @@ void bond_change_active_slave(struct bonding *bond, struct slave *new_active)
 	}
 
 #ifdef CONFIG_XFRM_OFFLOAD
-	if (new_active && bond->xs) {
-		xfrm_dev_state_flush(dev_net(bond->dev), bond->dev, true);
-		bond_ipsec_add_sa(bond->xs);
-	}
+	bond_ipsec_add_sa_all(bond);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	/* resend IGMP joins since active slave has changed or
@@ -3343,6 +3435,7 @@ static int bond_master_netdev_event(unsigned long event,
 		return bond_event_changename(event_bond);
 	case NETDEV_UNREGISTER:
 		bond_remove_proc_entry(event_bond);
+		xfrm_dev_state_flush(dev_net(bond_dev), bond_dev, true);
 		break;
 	case NETDEV_REGISTER:
 		bond_create_proc_entry(event_bond);
@@ -4906,7 +4999,8 @@ void bond_setup(struct net_device *bond_dev)
 #ifdef CONFIG_XFRM_OFFLOAD
 	/* set up xfrm device ops (only supported in active-backup right now) */
 	bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
-	bond->xs = NULL;
+	INIT_LIST_HEAD(&bond->ipsec_list);
+	spin_lock_init(&bond->ipsec_lock);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	/* don't acquire bond device's netif_tx_lock when transmitting */
diff --git a/include/net/bonding.h b/include/net/bonding.h
index 019e998d944a..ba03cf6165e4 100644
--- a/include/net/bonding.h
+++ b/include/net/bonding.h
@@ -201,6 +201,11 @@ struct bond_up_slave {
  */
 #define BOND_LINK_NOCHANGE -1
 
+struct bond_ipsec {
+	struct list_head list;
+	struct xfrm_state *xs;
+};
+
 /*
  * Here are the locking policies for the two bonding locks:
  * Get rcu_read_lock when reading or RTNL when writing slave list.
@@ -249,7 +254,8 @@ struct bonding {
 #endif /* CONFIG_DEBUG_FS */
 	struct rtnl_link_stats64 bond_stats;
 #ifdef CONFIG_XFRM_OFFLOAD
-	struct xfrm_state *xs;
+	struct list_head ipsec_list;
+	spinlock_t ipsec_lock;
 #endif /* CONFIG_XFRM_OFFLOAD */
 };
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
