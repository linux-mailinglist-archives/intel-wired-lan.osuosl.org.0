Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4F3BC0E8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jul 2021 17:39:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AB7340473;
	Mon,  5 Jul 2021 15:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhtAMfTeeTrL; Mon,  5 Jul 2021 15:39:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FF8A400EC;
	Mon,  5 Jul 2021 15:39:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4382C1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32A3E605FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NWsbDI3C5GuT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jul 2021 15:39:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 635EC60067
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jul 2021 15:39:00 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id kt19so11936975pjb.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 05 Jul 2021 08:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jwrsrWFAGe1w2gwfoKFl8stTQyPRTQnsymr8hWUX8J4=;
 b=SwDZsThxhNBm+q6T3YwnaXxN+NYTuf8m+v0GiZmabPgBJIjurHtJtCle8EDMM1NA+b
 lF3qIIK/BKMLGiRqTpmzILTCa1AYSkbEk7m/kiql5IJy/LcCyVCjZt59Kc8sTL6f1y9Z
 Hz00KFQQPz7TCkdOdpCCNXfn2L3uEvk8Le2Dhr25dT06kpz4BFLX63It3VRue7jvdfY3
 80FZmvDVoJsP8yiQ1HS1hLPFVl0OCeRKCBeSiM6/BXQSB7+V+EH/6HFe166WHY98o3NR
 z84AbK2nNoJYwHnSgyeT6MPyG00jrgNgmUCyYQLT4mKjVVAZ2Tqlx0GIhgx6g2vp4HmX
 87Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jwrsrWFAGe1w2gwfoKFl8stTQyPRTQnsymr8hWUX8J4=;
 b=TNRYD1cR+oCH7E+N4DHkI31R5d2vsjjJEGXLDE0SNqi6C+h2GMuUOOtjbQv+0LTRaf
 GpvXR85PDgnvG5kT8CGZ5svKqd/jsI+7SKWH0vHTP+6ZHBCwRmJW5dppnLqT+u2TD8UK
 QhGviVvqgOmNtixTg6iO9789sSinNHjFlcMDtYd2ZUhagBzkr1VNlv4UH7dZLGDoc1Pm
 aAxQg5UckOtGmJFym0XiNMHixUJsSE0nHCtlocrPFH0pdkI/3m/mii6gQdqhOZ6O9mjz
 owMl11PqGhUYujpTCvo5ZZy9PvS5K5UK3X8BsgNDQvZTPC7fola5WLhKTIvjnCUIng/S
 LOyg==
X-Gm-Message-State: AOAM5321jy6Xz8IwAwvKdf9WygP1UpuWERsPOZp1hcHXp6iNeAoSGQ3I
 aNBFPmFq6Y0jtIF4pBw+oH8=
X-Google-Smtp-Source: ABdhPJzrNGyRgc9Hnx4FSWY0dTvcNwwbNmy5uJF5MkfrAb1Gm1ejCSZNkAUG0vAmi+RJsXxrlnG2cQ==
X-Received: by 2002:a17:90b:3506:: with SMTP id
 ls6mr15380359pjb.25.1625499539866; 
 Mon, 05 Jul 2021 08:38:59 -0700 (PDT)
Received: from localhost.localdomain ([49.173.165.50])
 by smtp.gmail.com with ESMTPSA id k10sm9310353pfp.63.2021.07.05.08.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 08:38:59 -0700 (PDT)
From: Taehee Yoo <ap420073@gmail.com>
To: davem@davemloft.net, kuba@kernel.org, dsahern@kernel.org,
 netdev@vger.kernel.org, j.vosburgh@gmail.com, vfalico@gmail.com,
 andy@greyhouse.net, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 jarod@redhat.com, intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jul 2021 15:38:12 +0000
Message-Id: <20210705153814.11453-8-ap420073@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210705153814.11453-1-ap420073@gmail.com>
References: <20210705153814.11453-1-ap420073@gmail.com>
Subject: [Intel-wired-lan] [PATCH net v2 7/9] bonding: Add struct bond_ipesc
 to manage SA
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
 - Do not print unncessary warning in bond_ipsec_add_sa_all()
 - Add comment for ipsec_lock

 drivers/net/bonding/bond_main.c | 139 +++++++++++++++++++++++++++-----
 include/net/bonding.h           |   9 ++-
 2 files changed, 127 insertions(+), 21 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index f268e67cb2f0..9c44ec92eb72 100644
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
@@ -427,11 +425,63 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
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
+		spin_lock_bh(&bond->ipsec_lock);
+		if (!list_empty(&bond->ipsec_list))
+			slave_warn(bond_dev, slave->dev,
+				   "%s: no slave xdo_dev_state_add\n",
+				   __func__);
+		spin_unlock_bh(&bond->ipsec_lock);
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
@@ -439,6 +489,7 @@ static int bond_ipsec_add_sa(struct xfrm_state *xs)
 static void bond_ipsec_del_sa(struct xfrm_state *xs)
 {
 	struct net_device *bond_dev = xs->xso.dev;
+	struct bond_ipsec *ipsec;
 	struct bonding *bond;
 	struct slave *slave;
 
@@ -452,7 +503,10 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 	if (!slave)
 		goto out;
 
-	xs->xso.real_dev = slave->dev;
+	if (!xs->xso.real_dev)
+		goto out;
+
+	WARN_ON(xs->xso.real_dev != slave->dev);
 
 	if (!slave->dev->xfrmdev_ops ||
 	    !slave->dev->xfrmdev_ops->xdo_dev_state_delete ||
@@ -463,6 +517,48 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
 
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
 
@@ -474,22 +570,27 @@ static void bond_ipsec_del_sa(struct xfrm_state *xs)
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
@@ -1006,8 +1107,7 @@ void bond_change_active_slave(struct bonding *bond, struct slave *new_active)
 		return;
 
 #ifdef CONFIG_XFRM_OFFLOAD
-	if (old_active && bond->xs)
-		bond_ipsec_del_sa(bond->xs);
+	bond_ipsec_del_sa_all(bond);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	if (new_active) {
@@ -1083,10 +1183,7 @@ void bond_change_active_slave(struct bonding *bond, struct slave *new_active)
 	}
 
 #ifdef CONFIG_XFRM_OFFLOAD
-	if (new_active && bond->xs) {
-		xfrm_dev_state_flush(dev_net(bond->dev), bond->dev, true);
-		bond_ipsec_add_sa(bond->xs);
-	}
+	bond_ipsec_add_sa_all(bond);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	/* resend IGMP joins since active slave has changed or
@@ -3343,6 +3440,7 @@ static int bond_master_netdev_event(unsigned long event,
 		return bond_event_changename(event_bond);
 	case NETDEV_UNREGISTER:
 		bond_remove_proc_entry(event_bond);
+		xfrm_dev_state_flush(dev_net(bond_dev), bond_dev, true);
 		break;
 	case NETDEV_REGISTER:
 		bond_create_proc_entry(event_bond);
@@ -4906,7 +5004,8 @@ void bond_setup(struct net_device *bond_dev)
 #ifdef CONFIG_XFRM_OFFLOAD
 	/* set up xfrm device ops (only supported in active-backup right now) */
 	bond_dev->xfrmdev_ops = &bond_xfrmdev_ops;
-	bond->xs = NULL;
+	INIT_LIST_HEAD(&bond->ipsec_list);
+	spin_lock_init(&bond->ipsec_lock);
 #endif /* CONFIG_XFRM_OFFLOAD */
 
 	/* don't acquire bond device's netif_tx_lock when transmitting */
diff --git a/include/net/bonding.h b/include/net/bonding.h
index 019e998d944a..a02b19843819 100644
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
@@ -249,7 +254,9 @@ struct bonding {
 #endif /* CONFIG_DEBUG_FS */
 	struct rtnl_link_stats64 bond_stats;
 #ifdef CONFIG_XFRM_OFFLOAD
-	struct xfrm_state *xs;
+	struct list_head ipsec_list;
+	/* protecting ipsec_list */
+	spinlock_t ipsec_lock;
 #endif /* CONFIG_XFRM_OFFLOAD */
 };
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
