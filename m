Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219452EB300
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFE978724C;
	Tue,  5 Jan 2021 19:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pq7RtWLIvcyk; Tue,  5 Jan 2021 19:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BCD9C8725E;
	Tue,  5 Jan 2021 19:02:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19CFF1BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 154E385F37
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9fmFQSWBdRu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:01:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A52D085E13
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:06 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id ga15so1874321ejb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p3W0msP6LpBk4ZpdXjQAKJdbudcVnQh09tjTTus++GQ=;
 b=jV0hXJAm/NWx8lpC5hh5hI3o0LcFdDlN8v7ivD1ssuCNWUNXooDhrSGgcm3dY7V59m
 JSJvFGr3N3XtX2/DDbAV0hMsng1svFYosOnFg2x7nvMeEyAUb47SuIF7lbdwVTJYEuel
 yjXJMaAKQFeJawGDXtnnrz7fnfh7vtZ9hXhJ/osm2MIVUE/7reO1orvh+fnWFUL/eR2C
 cXd7UJVn36QK8PZfwDuyY75yoWZZJ/b1gyMICeqJhOzAD1XmVXXFY21RUY1yemNy6XcR
 tkQdDgXZlI4rvGVIfscY+N1xEynBMD0+bLLA6XGm6NArszOQ3rsy2PGpbFy0d96hpJ+w
 TgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p3W0msP6LpBk4ZpdXjQAKJdbudcVnQh09tjTTus++GQ=;
 b=LAWt2NyjmpYurmymfvVL6zRrhj7s0z8R+iKyaGjFm6xpOL3NSUkI5dNmJz9gO49WDr
 kWoUjKln+SEOesB6gmPeLNV3odkcDt8e/R/5udOi04tH6PV/LWmKP8PJiwwwyV52Ym/u
 8cvtShjiU88XRV2kLb7rtcBLIFB7a6/9VDwAaOXjK+OvQ0k0Oh9Svmb4YdxFGqXtCWzJ
 0Y20I5iZak9a7GtjmgNjc+cOlbErFdVRoaCdffrV8JOXwLWTpWigfF3lGVjYZNDLR49P
 CXQeIORBdHcsDRwFFVyRb7DKfLl3qvo9zEQa7k7sIEjJVagjVd96S/J1/cX0M2fi+W5Y
 UfJQ==
X-Gm-Message-State: AOAM532x+btP5Jlh97sAg+z91ifYXLPaelMTlpo/FhqRND8fo/PUmkeL
 QoxoFaWdm4zs5DDZLOllihk=
X-Google-Smtp-Source: ABdhPJzfSVckJ/Rv02marDEzZ2I/McFZfR0QiIgEyHC9Kq69EQgAfP5DX0kb3KckZoB4LfiobOMmYQ==
X-Received: by 2002:a17:906:7a18:: with SMTP id
 d24mr501608ejo.324.1609873265094; 
 Tue, 05 Jan 2021 11:01:05 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:01:04 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:59:00 +0200
Message-Id: <20210105185902.3922928-11-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 10/12] net: bonding:
 ensure .ndo_get_stats64 can sleep
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 George McCollister <george.mccollister@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Gospodarek <andy@greyhouse.net>, dev@openvswitch.org,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Veaceslav Falico <vfalico@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Arnd Bergmann <arnd@arndb.de>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Benc <jbenc@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Florian Westphal <fw@strlen.de>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

There is an effort to convert .ndo_get_stats64 to sleepable context, and
for that to work, we need to prevent callers of dev_get_stats from using
atomic locking.

The bonding driver retrieves its statistics recursively from its lower
interfaces, with additional care to only count packets sent/received
while those lowers were actually enslaved to the bond - see commit
5f0c5f73e5ef ("bonding: make global bonding stats more reliable").

Since commit 87163ef9cda7 ("bonding: remove last users of bond->lock and
bond->lock itself"), the bonding driver uses the following protection
for its array of slaves: RCU for readers and rtnl_mutex for updaters.
This is not great because there is another movement [ somehow
simultaneous with the one to make .ndo_get_stats64 sleepable ] to reduce
driver usage of rtnl_mutex. This makes sense, because the rtnl_mutex has
become a very contended resource.

The aforementioned commit removed an interesting comment:

	/* [...] we can't hold bond->lock [...] because we'll
	 * deadlock. The only solution is to rely on the fact
	 * that we're under rtnl_lock here, and the slaves
	 * list won't change. This doesn't solve the problem
	 * of setting the slave's MTU while it is
	 * transmitting, but the assumption is that the base
	 * driver can handle that.
	 *
	 * TODO: figure out a way to safely iterate the slaves
	 * list, but without holding a lock around the actual
	 * call to the base driver.
	 */

The above summarizes pretty well the challenges we have with nested
bonding interfaces (bond over bond over bond over...), which need to be
addressed by a better locking scheme that also not relies on the bloated
rtnl_mutex.

Instead of using something as broad as the rtnl_mutex to ensure
serialization of updates to the slave array, we can reintroduce a
private mutex in the bonding driver, called slaves_lock.
This mutex circles the only updater, bond_update_slave_arr, and ensures
that whatever other readers want to see a consistent slave array, they
don't need to hold the rtnl_mutex for that.

Now _of_course_ I did not convert the entire driver to use
bond_for_each_slave protected by the bond->slaves_lock, and
rtnl_dereference to bond_dereference. I just started that process by
converting the one reader I needed: ndo_get_stats64. Not only is it nice
to not hold rtnl_mutex in .ndo_get_stats64, but it is also in fact
forbidden to do so (since top-level callers may hold netif_lists_lock,
which is a sub-lock of the rtnl_mutex, and therefore this would cause a
lock inversion and a deadlock).

To solve the nesting problem, the simple way is to not hold any locks
when recursing into the slave netdev operation, which is exactly the
approach that we take. We can "cheat" and use dev_hold to take a
reference on the slave net_device, which is enough to ensure that
netdev_wait_allrefs() waits until we finish, and the kernel won't fault.
However, the slave structure might no longer be valid, just its
associated net_device. That isn't a biggie. We just need to do some more
work to ensure that the slave exists after we took the statistics, and
if it still does, reapply the logic from Andy's commit 5f0c5f73e5ef.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/bonding/bond_main.c | 120 +++++++++++++++-----------------
 include/net/bonding.h           |  52 +++++++++++++-
 2 files changed, 109 insertions(+), 63 deletions(-)

diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
index 714aa0e5d041..fbae3b9746fc 100644
--- a/drivers/net/bonding/bond_main.c
+++ b/drivers/net/bonding/bond_main.c
@@ -3693,77 +3693,65 @@ static void bond_fold_stats(struct rtnl_link_stats64 *_res,
 	}
 }
 
-#ifdef CONFIG_LOCKDEP
-static int bond_get_lowest_level_rcu(struct net_device *dev)
-{
-	struct net_device *ldev, *next, *now, *dev_stack[MAX_NEST_DEV + 1];
-	struct list_head *niter, *iter, *iter_stack[MAX_NEST_DEV + 1];
-	int cur = 0, max = 0;
-
-	now = dev;
-	iter = &dev->adj_list.lower;
-
-	while (1) {
-		next = NULL;
-		while (1) {
-			ldev = netdev_next_lower_dev_rcu(now, &iter);
-			if (!ldev)
-				break;
-
-			next = ldev;
-			niter = &ldev->adj_list.lower;
-			dev_stack[cur] = now;
-			iter_stack[cur++] = iter;
-			if (max <= cur)
-				max = cur;
-			break;
-		}
-
-		if (!next) {
-			if (!cur)
-				return max;
-			next = dev_stack[--cur];
-			niter = iter_stack[cur];
-		}
-
-		now = next;
-		iter = niter;
-	}
-
-	return max;
-}
-#endif
-
 static void bond_get_stats(struct net_device *bond_dev,
 			   struct rtnl_link_stats64 *stats)
 {
 	struct bonding *bond = netdev_priv(bond_dev);
-	struct rtnl_link_stats64 temp;
-	struct list_head *iter;
-	struct slave *slave;
-	int nest_level = 0;
+	struct rtnl_link_stats64 *dev_stats;
+	struct net_device **slaves;
+	int i, res, num_slaves;
 
+	res = bond_get_slave_arr(bond, &slaves, &num_slaves);
+	if (res) {
+		netdev_err(bond->dev,
+			   "failed to allocate memory for slave array\n");
+		return;
+	}
 
-	rcu_read_lock();
-#ifdef CONFIG_LOCKDEP
-	nest_level = bond_get_lowest_level_rcu(bond_dev);
-#endif
+	dev_stats = kcalloc(num_slaves, sizeof(*dev_stats), GFP_KERNEL);
+	if (!dev_stats) {
+		netdev_err(bond->dev,
+			   "failed to allocate memory for slave stats\n");
+		bond_put_slave_arr(slaves, num_slaves);
+		return;
+	}
+
+	/* Recurse with no locks taken */
+	for (i = 0; i < num_slaves; i++)
+		dev_get_stats(slaves[i], &dev_stats[i]);
+
+	/* When taking the slaves lock again, the new slave array might be
+	 * different from the original one.
+	 */
+	mutex_lock(&bond->slaves_lock);
+	mutex_lock(&bond->stats_lock);
 
-	spin_lock_nested(&bond->stats_lock, nest_level);
 	memcpy(stats, &bond->bond_stats, sizeof(*stats));
 
-	bond_for_each_slave_rcu(bond, slave, iter) {
-		dev_get_stats(slave->dev, &temp);
+	for (i = 0; i < num_slaves; i++) {
+		struct list_head *iter;
+		struct slave *slave;
 
-		bond_fold_stats(stats, &temp, &slave->slave_stats);
+		bond_for_each_slave(bond, slave, iter) {
+			if (slave->dev != slaves[i])
+				continue;
 
-		/* save off the slave stats for the next run */
-		memcpy(&slave->slave_stats, &temp, sizeof(temp));
+			bond_fold_stats(stats, &dev_stats[i],
+					&slave->slave_stats);
+
+			/* save off the slave stats for the next run */
+			memcpy(&slave->slave_stats, &dev_stats[i],
+			       sizeof(dev_stats[i]));
+			break;
+		}
 	}
 
 	memcpy(&bond->bond_stats, stats, sizeof(*stats));
-	spin_unlock(&bond->stats_lock);
-	rcu_read_unlock();
+
+	mutex_unlock(&bond->stats_lock);
+	mutex_unlock(&bond->slaves_lock);
+
+	bond_put_slave_arr(slaves, num_slaves);
 }
 
 static int bond_do_ioctl(struct net_device *bond_dev, struct ifreq *ifr, int cmd)
@@ -4287,11 +4275,11 @@ static void bond_set_slave_arr(struct bonding *bond,
 {
 	struct bond_up_slave *usable, *all;
 
-	usable = rtnl_dereference(bond->usable_slaves);
+	usable = bond_dereference(bond, bond->usable_slaves);
 	rcu_assign_pointer(bond->usable_slaves, usable_slaves);
 	kfree_rcu(usable, rcu);
 
-	all = rtnl_dereference(bond->all_slaves);
+	all = bond_dereference(bond, bond->all_slaves);
 	rcu_assign_pointer(bond->all_slaves, all_slaves);
 	kfree_rcu(all, rcu);
 }
@@ -4333,6 +4321,8 @@ int bond_update_slave_arr(struct bonding *bond, struct slave *skipslave)
 	WARN_ON(lockdep_is_held(&bond->mode_lock));
 #endif
 
+	mutex_lock(&bond->slaves_lock);
+
 	usable_slaves = kzalloc(struct_size(usable_slaves, arr,
 					    bond->slave_cnt), GFP_KERNEL);
 	all_slaves = kzalloc(struct_size(all_slaves, arr,
@@ -4376,17 +4366,22 @@ int bond_update_slave_arr(struct bonding *bond, struct slave *skipslave)
 	}
 
 	bond_set_slave_arr(bond, usable_slaves, all_slaves);
+
+	mutex_unlock(&bond->slaves_lock);
+
 	return ret;
 out:
 	if (ret != 0 && skipslave) {
-		bond_skip_slave(rtnl_dereference(bond->all_slaves),
+		bond_skip_slave(bond_dereference(bond, bond->all_slaves),
 				skipslave);
-		bond_skip_slave(rtnl_dereference(bond->usable_slaves),
+		bond_skip_slave(bond_dereference(bond, bond->usable_slaves),
 				skipslave);
 	}
 	kfree_rcu(all_slaves, rcu);
 	kfree_rcu(usable_slaves, rcu);
 
+	mutex_unlock(&bond->slaves_lock);
+
 	return ret;
 }
 
@@ -4699,6 +4694,8 @@ void bond_setup(struct net_device *bond_dev)
 {
 	struct bonding *bond = netdev_priv(bond_dev);
 
+	mutex_init(&bond->slaves_lock);
+	mutex_init(&bond->stats_lock);
 	spin_lock_init(&bond->mode_lock);
 	bond->params = bonding_defaults;
 
@@ -5189,7 +5186,6 @@ static int bond_init(struct net_device *bond_dev)
 	if (!bond->wq)
 		return -ENOMEM;
 
-	spin_lock_init(&bond->stats_lock);
 	netdev_lockdep_set_classes(bond_dev);
 
 	list_add_tail(&bond->bond_list, &bn->dev_list);
diff --git a/include/net/bonding.h b/include/net/bonding.h
index adc3da776970..3fd2443e7800 100644
--- a/include/net/bonding.h
+++ b/include/net/bonding.h
@@ -222,7 +222,6 @@ struct bonding {
 	 * ALB mode (6) - to sync the use and modifications of its hash table
 	 */
 	spinlock_t mode_lock;
-	spinlock_t stats_lock;
 	u8	 send_peer_notif;
 	u8       igmp_retrans;
 #ifdef CONFIG_PROC_FS
@@ -249,6 +248,14 @@ struct bonding {
 #ifdef CONFIG_XFRM_OFFLOAD
 	struct xfrm_state *xs;
 #endif /* CONFIG_XFRM_OFFLOAD */
+
+	/* Protects the slave array. TODO: convert all instances of
+	 * rtnl_dereference to bond_dereference
+	 */
+	struct mutex slaves_lock;
+
+	/* Serializes access to bond_stats */
+	struct mutex stats_lock;
 };
 
 #define bond_slave_get_rcu(dev) \
@@ -257,6 +264,9 @@ struct bonding {
 #define bond_slave_get_rtnl(dev) \
 	((struct slave *) rtnl_dereference(dev->rx_handler_data))
 
+#define bond_dereference(bond, p) \
+	rcu_dereference_protected(p, lockdep_is_held(&(bond)->slaves_lock))
+
 void bond_queue_slave_event(struct slave *slave);
 void bond_lower_state_changed(struct slave *slave);
 
@@ -449,6 +459,46 @@ static inline void bond_hw_addr_copy(u8 *dst, const u8 *src, unsigned int len)
 	memcpy(dst, src, len);
 }
 
+static inline int bond_get_slave_arr(struct bonding *bond,
+				     struct net_device ***slaves,
+				     int *num_slaves)
+{
+	struct net *net = dev_net(bond->dev);
+	struct list_head *iter;
+	struct slave *slave;
+	int i = 0;
+
+	mutex_lock(&bond->slaves_lock);
+
+	*slaves = kcalloc(bond->slave_cnt, sizeof(*slaves), GFP_KERNEL);
+	if (!(*slaves)) {
+		netif_lists_unlock(net);
+		return -ENOMEM;
+	}
+
+	bond_for_each_slave(bond, slave, iter) {
+		dev_hold(slave->dev);
+		*slaves[i++] = slave->dev;
+	}
+
+	*num_slaves = bond->slave_cnt;
+
+	mutex_unlock(&bond->slaves_lock);
+
+	return 0;
+}
+
+static inline void bond_put_slave_arr(struct net_device **slaves,
+				      int num_slaves)
+{
+	int i;
+
+	for (i = 0; i < num_slaves; i++)
+		dev_put(slaves[i]);
+
+	kfree(slaves);
+}
+
 #define BOND_PRI_RESELECT_ALWAYS	0
 #define BOND_PRI_RESELECT_BETTER	1
 #define BOND_PRI_RESELECT_FAILURE	2
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
