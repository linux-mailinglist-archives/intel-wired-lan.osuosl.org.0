Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFE22EB2FA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A1188726A;
	Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGst2YUym32t; Tue,  5 Jan 2021 19:02:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 267C787264;
	Tue,  5 Jan 2021 19:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4C61BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 911E58724F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QlwCEFYtqH9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:00:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 95D7E87248
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:00:49 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id u19so1924780edx.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RJ8dUowMPq3ju2B2o3YV26hFEb1pomATUmoxAPlTqus=;
 b=GO7hev4U0YJdcgEsK88J9bkR8g3/S6oOiXXivS8BAO4XXMadjuyWthyEQaJfLTQU8H
 1DtCrBIJpgmhfZHYYpCpCbObm1o8+Q3w0br77uRKGySHd+NErjtbo8nUJ9uTBaikj/xm
 ha+1zPYpGxf7Q24YsQkP6ajnLAhmnT33sqAZMipWWhHzaxoZ4NrGUpqHBX/6Mfda7CA9
 v2zWxCC3JjJjZFOhV570Qiuul7gfegHhSSn1kYhfygu72yKpW9xu3WnYUJmU8oBXb8QL
 5E43oPwO2ZORacZGW+gxBLzBPjyGXgjmmI9/8/JlN+Aw3OF8hOCq/UXbkw60orAEk1ry
 Sf8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RJ8dUowMPq3ju2B2o3YV26hFEb1pomATUmoxAPlTqus=;
 b=CT57TSR/wNDaZGQj285YMJLHyM4yUvWosr5LdS6PXrqt5YZw0ETkmz7WLhO5iH9OfB
 EZGsQwNct1xrQ+S4M7fpjTWp7ime1vn4uvUYUgEOcwKl9903kvn6FSMYqZqgpmoWArPo
 M7g/bwYpY4qTkVUukq+ha66RU5JUYtF/1gfLDmmRfZC8XQ+lZJ0oxoZZR6S0GNpj80on
 3Nj/9FkGRk50mtC4+bKO+B7JzuiDCMasM9eZwsZwAW54u+wlcOeady+EbAWN5EwiyIBh
 JqEsAo3aQDAirEEnHwYqwKuhVbqKoIyA3+Va/jXTLyTBabrwZNth0oPfMZw5z9UyI6lI
 fLSg==
X-Gm-Message-State: AOAM531Upy0oQLMzPUZeWKch0LP68d43c9RApPT9rm9oWf1SWjxxiZMw
 sEvlIGQBukLOWpDzEJJb+X0=
X-Google-Smtp-Source: ABdhPJzWjpEMpRNRloZq9Mto5vPvzjgXXIC9uZYEM/t0Vlmggp+gh9m7BU6tGVHsrf+F/rfiXtSgog==
X-Received: by 2002:a05:6402:1692:: with SMTP id
 a18mr1145030edv.321.1609873248090; 
 Tue, 05 Jan 2021 11:00:48 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:00:47 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:52 +0200
Message-Id: <20210105185902.3922928-3-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 02/12] net: introduce a
 mutex for the netns interface lists
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

Currently, any writer that wants to alter the lists of network
interfaces (either the plain list net->dev_base_head, or the hash tables
net->dev_index_head and net->dev_name_head) can keep other writers at
bay using the RTNL mutex.

However, the RTNL mutex has become a very contended resource over the
years, so there is a movement to do finer grained locking.

This patch adds one more way for writers to the network interface lists
to serialize themselves. We assume that all writers to the network
interface lists are easily identifiable because the write side of
dev_base_lock also needs to be held (note that some instances of that
were deliberately skipped, since they only dealt with protecting the
operational state of the netdev).

Holding the RTNL mutex is now optional for new code that alters the
lists, since all relevant writers were made to also hold the new lock.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 include/linux/netdevice.h   | 10 +++++++++
 include/net/net_namespace.h |  6 +++++
 net/core/dev.c              | 44 +++++++++++++++++++++++++------------
 3 files changed, 46 insertions(+), 14 deletions(-)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 7bf167993c05..199b3be2cce4 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -4393,6 +4393,16 @@ static inline void netif_addr_unlock_bh(struct net_device *dev)
 	spin_unlock_bh(&dev->addr_list_lock);
 }
 
+static inline void netif_lists_lock(struct net *net)
+{
+	mutex_lock(&net->netif_lists_lock);
+}
+
+static inline void netif_lists_unlock(struct net *net)
+{
+	mutex_unlock(&net->netif_lists_lock);
+}
+
 /*
  * dev_addrs walker. Should be used only for read access. Call with
  * rcu_read_lock held.
diff --git a/include/net/net_namespace.h b/include/net/net_namespace.h
index 29567875f428..cac64c3c7ce0 100644
--- a/include/net/net_namespace.h
+++ b/include/net/net_namespace.h
@@ -183,6 +183,12 @@ struct net {
 	struct sock		*crypto_nlsk;
 #endif
 	struct sock		*diag_nlsk;
+
+	/* Serializes writers to @dev_base_head, @dev_name_head and
+	 * @dev_index_head. It does _not_ protect the netif adjacency lists
+	 * (struct net_device::adj_list).
+	 */
+	struct mutex		netif_lists_lock;
 } __randomize_layout;
 
 #include <linux/seq_file_net.h>
diff --git a/net/core/dev.c b/net/core/dev.c
index 2aa613d22318..1bd41cc91f71 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -175,13 +175,16 @@ static struct napi_struct *napi_by_id(unsigned int napi_id);
  *
  * Pure readers should hold rcu_read_lock() which should protect them against
  * concurrent changes to the interface lists made by the writers. Pure writers
- * must serialize by holding the RTNL mutex while they loop through the list
- * and make changes to it.
+ * must serialize by holding the @net->netif_lists_lock mutex while they loop
+ * through the list and make changes to it.
+ *
+ * It is possible to hold the RTNL mutex for serializing the writers too, but
+ * this should be avoided in new code due to lock contention.
  *
  * It is also possible to hold the global rwlock_t @dev_base_lock for
  * protection (holding its read side as an alternative to rcu_read_lock, and
- * its write side as an alternative to the RTNL mutex), however this should not
- * be done in new code, since it is deprecated and pending removal.
+ * its write side as an alternative to @net->netif_lists_lock), however this
+ * should not be done in new code, since it is deprecated and pending removal.
  *
  * One other role of @dev_base_lock is to protect against changes in the
  * operational state of a network interface.
@@ -360,12 +363,14 @@ static void list_netdevice(struct net_device *dev)
 
 	ASSERT_RTNL();
 
+	netif_lists_lock(net);
 	write_lock_bh(&dev_base_lock);
 	list_add_tail_rcu(&dev->dev_list, &net->dev_base_head);
 	netdev_name_node_add(net, dev->name_node);
 	hlist_add_head_rcu(&dev->index_hlist,
 			   dev_index_hash(net, dev->ifindex));
 	write_unlock_bh(&dev_base_lock);
+	netif_lists_unlock(net);
 
 	dev_base_seq_inc(net);
 }
@@ -375,16 +380,20 @@ static void list_netdevice(struct net_device *dev)
  */
 static void unlist_netdevice(struct net_device *dev)
 {
+	struct net *net = dev_net(dev);
+
 	ASSERT_RTNL();
 
 	/* Unlink dev from the device chain */
+	netif_lists_lock(net);
 	write_lock_bh(&dev_base_lock);
 	list_del_rcu(&dev->dev_list);
 	netdev_name_node_del(dev->name_node);
 	hlist_del_rcu(&dev->index_hlist);
 	write_unlock_bh(&dev_base_lock);
+	netif_lists_unlock(net);
 
-	dev_base_seq_inc(dev_net(dev));
+	dev_base_seq_inc(net);
 }
 
 /*
@@ -850,11 +859,11 @@ EXPORT_SYMBOL_GPL(dev_fill_metadata_dst);
  *	@net: the applicable net namespace
  *	@name: name to find
  *
- *	Find an interface by name. Must be called under RTNL semaphore
- *	or @dev_base_lock. If the name is found a pointer to the device
- *	is returned. If the name is not found then %NULL is returned. The
- *	reference counters are not incremented so the caller must be
- *	careful with locks.
+ *	Find an interface by name. Must be called under RTNL semaphore,
+ *	@net->netif_lists_lock or @dev_base_lock. If the name is found,
+ *	a pointer to the device is returned. If the name is not found then
+ *	%NULL is returned. The reference counters are not incremented so the
+ *	caller must be careful with locks.
  */
 
 struct net_device *__dev_get_by_name(struct net *net, const char *name)
@@ -920,8 +929,8 @@ EXPORT_SYMBOL(dev_get_by_name);
  *	Search for an interface by index. Returns %NULL if the device
  *	is not found or a pointer to the device. The device has not
  *	had its reference counter increased so the caller must be careful
- *	about locking. The caller must hold either the RTNL semaphore
- *	or @dev_base_lock.
+ *	about locking. The caller must hold either the RTNL semaphore,
+ *	@net->netif_lists_lock or @dev_base_lock.
  */
 
 struct net_device *__dev_get_by_index(struct net *net, int ifindex)
@@ -1330,15 +1339,19 @@ int dev_change_name(struct net_device *dev, const char *newname)
 
 	netdev_adjacent_rename_links(dev, oldname);
 
+	netif_lists_lock(net);
 	write_lock_bh(&dev_base_lock);
 	netdev_name_node_del(dev->name_node);
 	write_unlock_bh(&dev_base_lock);
+	netif_lists_unlock(net);
 
 	synchronize_rcu();
 
+	netif_lists_lock(net);
 	write_lock_bh(&dev_base_lock);
 	netdev_name_node_add(net, dev->name_node);
 	write_unlock_bh(&dev_base_lock);
+	netif_lists_unlock(net);
 
 	ret = call_netdevice_notifiers(NETDEV_CHANGENAME, dev);
 	ret = notifier_to_errno(ret);
@@ -9397,8 +9410,9 @@ int dev_change_xdp_fd(struct net_device *dev, struct netlink_ext_ack *extack,
  *	@net: the applicable net namespace
  *
  *	Returns a suitable unique value for a new device interface
- *	number.  The caller must hold the rtnl semaphore or the
- *	dev_base_lock to be sure it remains unique.
+ *	number.
+ *	The caller must hold the rtnl semaphore, @net->netif_lists_lock or the
+ *	@dev_base_lock to be sure it remains unique.
  */
 static int dev_new_index(struct net *net)
 {
@@ -10981,6 +10995,8 @@ static int __net_init netdev_init(struct net *net)
 	if (net->dev_index_head == NULL)
 		goto err_idx;
 
+	mutex_init(&net->netif_lists_lock);
+
 	RAW_INIT_NOTIFIER_HEAD(&net->netdev_chain);
 
 	return 0;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
