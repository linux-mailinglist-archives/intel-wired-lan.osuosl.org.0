Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F792EB2FC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 20:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D04EB86B49;
	Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OmX+xTIa7Pwe; Tue,  5 Jan 2021 19:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 116E586B15;
	Tue,  5 Jan 2021 19:02:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6B4D1BF335
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A7140203F3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uksr6FgAJsqb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 19:01:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 76B5B20353
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 19:01:04 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id lt17so1888028ejb.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 05 Jan 2021 11:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ff9D1woMsQeLmWPTAiEaFm1QvVLXpS9MMVoFYbRGAcM=;
 b=LQ0Gme+E6X9gHkPWjMJBd7FolsMSpEpzwvijDe86pd1n9MtCi097AHf5YR9oe4q024
 cwuj9ODUrc2Ql9BXoKUX2JS4oTItPvNKDTPqnKv9ZRrO8dr3QErjm8qJmg7F71PgjNS+
 8rzREv+xfAY4R2SRvyxUaFBhNs5/AmruGUJEDZhp8MHV0wymUijUd6r362LQ/tdpP4oQ
 +jPASLnI/3968/H6NOFIqs+2kyk01piHWT0QwLFA76puWia3YaakZfjO5qjb8U7+Xstu
 vdbaU1/Bh0EXGpcDeGhN7bS8Z02Yg8rK0BRJqOVG6HlqwXVUq0iucd5fC9PsaPCcny6y
 cgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ff9D1woMsQeLmWPTAiEaFm1QvVLXpS9MMVoFYbRGAcM=;
 b=LzF897c6zKiTeDAdinH3KBetanpPaIT1K3rJp3HfSixQdGMArFXGrLeIwr8kuyA2y6
 RZE0LOQiLpfd8SuCcPNZZjUi4UMUSZ3K9XOzHNX37LsaFBKKlPqurgD2DKvNGv+hQQGG
 OQuVzz5PmuuQ0lehuGKh9fKsOJGGB4N6LsWntOFLHNWT/gNdFmU+tPf7VAwiSTPNu0zB
 K5rjZGDNEzF4H8+HfAV/DU5T3Eefk2dRbM1xNSw9U0ic8eVpqj0typIVRpO8dChA0tf3
 AeqzHVWGXVbj8FmkIEHlhDBZOB5jsXTvTxCbLNGZeZ2OlNczxu3WClJ7gSYvmIssr68z
 RY/Q==
X-Gm-Message-State: AOAM532n2yfS7KwTCAZRbetemnckQViI5RSVetKvxsDoiH8v/gN2WX3r
 CFRIgpJJgYk52xY3AOyJJO8=
X-Google-Smtp-Source: ABdhPJw02PUKEG131GnYVWG3fPbOP//ID3RjTdDkqbkBRnERalLeh9Op6+xUDoS5zA+6cSrR2WBJuw==
X-Received: by 2002:a17:906:2f83:: with SMTP id
 w3mr511595eji.292.1609873262934; 
 Tue, 05 Jan 2021 11:01:02 -0800 (PST)
Received: from localhost.localdomain (5-12-227-87.residential.rdsnet.ro.
 [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z13sm205084edq.48.2021.01.05.11.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 11:01:01 -0800 (PST)
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Tue,  5 Jan 2021 20:58:59 +0200
Message-Id: <20210105185902.3922928-10-olteanv@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jan 2021 19:02:51 +0000
Subject: [Intel-wired-lan] [RFC PATCH v2 net-next 09/12] net: net_failover:
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

The failover framework sets up a virtio_net interface [ when it has the
VIRTIO_NET_F_STANDBY feature ] and a VF interface, having the same MAC
address, in a standby/active relationship. When the active VF is
unplugged, the standby virtio_net temporarily kicks in.

The failover framework registers a common upper for the active and the
standby interface, which is what the application layer uses. This is
similar to bonding/team. The statistics of the upper interface are the
sum of the statistics of the active and of the standby interface.

There is an effort to convert .ndo_get_stats64 to sleepable context, and
for that to work, we need to prevent callers of dev_get_stats from using
atomic locking. The failover driver needs protection via an RCU
read-side critical section to access the standby and the active
interface. This has two features:
- It is atomic: this needs to change.
- It is reentrant: this is ok, because generally speaking, dev_get_stats
  is recursive, and taking global locks is a bad thing from a recursive
  context.

A better locking architecture would be to do what the team driver does.
Instead of using something as broad as the rtnl_mutex to ensure
serialization of updates, it should use something more specific, like a
private mutex. This patch adds that and names it slaves_lock. The
slaves_lock now protects the only updater, the rcu_assign_pointer
sections from net_failover_slave_register.

In the team driver, a separate lockdep class is created for each team
lock, to account for possible nesting (team over team over ...). For the
net_failover driver, we can do something simpler, which is to just not
hold any lock while we call dev_get_stats recursively. We can "cheat"
and use dev_hold to take a reference on the active and backup interfaces,
and netdev_wait_allrefs() will just have to wait until we finish.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/net_failover.c | 62 +++++++++++++++++++++++++++-----------
 include/net/net_failover.h |  9 ++++--
 2 files changed, 52 insertions(+), 19 deletions(-)

diff --git a/drivers/net/net_failover.c b/drivers/net/net_failover.c
index 4f83165412bd..c83066b0ef70 100644
--- a/drivers/net/net_failover.c
+++ b/drivers/net/net_failover.c
@@ -27,6 +27,9 @@
 #include <uapi/linux/if_arp.h>
 #include <net/net_failover.h>
 
+#define nfo_dereference(nfo_info, p)				\
+	rcu_dereference_protected(p, lockdep_is_held(&nfo_info->slaves_lock))
+
 static bool net_failover_xmit_ready(struct net_device *dev)
 {
 	return netif_running(dev) && netif_carrier_ok(dev);
@@ -183,32 +186,48 @@ static void net_failover_get_stats(struct net_device *dev,
 				   struct rtnl_link_stats64 *stats)
 {
 	struct net_failover_info *nfo_info = netdev_priv(dev);
-	struct rtnl_link_stats64 temp;
-	struct net_device *slave_dev;
+	struct rtnl_link_stats64 primary_stats;
+	struct rtnl_link_stats64 standby_stats;
+	struct net_device *primary_dev;
+	struct net_device *standby_dev;
 
-	spin_lock(&nfo_info->stats_lock);
-	memcpy(stats, &nfo_info->failover_stats, sizeof(*stats));
+	mutex_lock(&nfo_info->slaves_lock);
 
-	rcu_read_lock();
+	primary_dev = nfo_dereference(nfo_info, nfo_info->primary_dev);
+	if (primary_dev)
+		dev_hold(primary_dev);
 
-	slave_dev = rcu_dereference(nfo_info->primary_dev);
-	if (slave_dev) {
-		dev_get_stats(slave_dev, &temp);
-		net_failover_fold_stats(stats, &temp, &nfo_info->primary_stats);
-		memcpy(&nfo_info->primary_stats, &temp, sizeof(temp));
+	standby_dev = nfo_dereference(nfo_info, nfo_info->standby_dev);
+	if (standby_dev)
+		dev_hold(standby_dev);
+
+	mutex_unlock(&nfo_info->slaves_lock);
+
+	/* Don't hold slaves_lock while calling dev_get_stats, just a
+	 * reference to ensure they won't get unregistered.
+	 */
+	if (primary_dev) {
+		dev_get_stats(primary_dev, &primary_stats);
+		dev_put(primary_dev);
 	}
 
-	slave_dev = rcu_dereference(nfo_info->standby_dev);
-	if (slave_dev) {
-		dev_get_stats(slave_dev, &temp);
-		net_failover_fold_stats(stats, &temp, &nfo_info->standby_stats);
-		memcpy(&nfo_info->standby_stats, &temp, sizeof(temp));
+	if (standby_dev) {
+		dev_get_stats(standby_dev, &standby_stats);
+		dev_put(standby_dev);
 	}
 
-	rcu_read_unlock();
+	mutex_lock(&nfo_info->stats_lock);
+
+	memcpy(stats, &nfo_info->failover_stats, sizeof(*stats));
+
+	net_failover_fold_stats(stats, &primary_stats, &nfo_info->primary_stats);
+	memcpy(&nfo_info->primary_stats, &primary_stats, sizeof(primary_stats));
+	net_failover_fold_stats(stats, &standby_stats, &nfo_info->standby_stats);
+	memcpy(&nfo_info->standby_stats, &standby_stats, sizeof(standby_stats));
 
 	memcpy(&nfo_info->failover_stats, stats, sizeof(*stats));
-	spin_unlock(&nfo_info->stats_lock);
+
+	mutex_unlock(&nfo_info->stats_lock);
 }
 
 static int net_failover_change_mtu(struct net_device *dev, int new_mtu)
@@ -540,6 +559,8 @@ static int net_failover_slave_register(struct net_device *slave_dev,
 	primary_dev = rtnl_dereference(nfo_info->primary_dev);
 	slave_is_standby = slave_dev->dev.parent == failover_dev->dev.parent;
 
+	mutex_lock(&nfo_info->slaves_lock);
+
 	if (slave_is_standby) {
 		rcu_assign_pointer(nfo_info->standby_dev, slave_dev);
 		standby_dev = slave_dev;
@@ -552,6 +573,8 @@ static int net_failover_slave_register(struct net_device *slave_dev,
 		failover_dev->max_mtu = slave_dev->max_mtu;
 	}
 
+	mutex_unlock(&nfo_info->slaves_lock);
+
 	net_failover_lower_state_changed(slave_dev, primary_dev, standby_dev);
 	net_failover_compute_features(failover_dev);
 
@@ -709,6 +732,7 @@ static struct failover_ops net_failover_ops = {
 struct failover *net_failover_create(struct net_device *standby_dev)
 {
 	struct device *dev = standby_dev->dev.parent;
+	struct net_failover_info *nfo_info;
 	struct net_device *failover_dev;
 	struct failover *failover;
 	int err;
@@ -753,6 +777,10 @@ struct failover *net_failover_create(struct net_device *standby_dev)
 	failover_dev->min_mtu = standby_dev->min_mtu;
 	failover_dev->max_mtu = standby_dev->max_mtu;
 
+	nfo_info = netdev_priv(failover_dev);
+	mutex_init(&nfo_info->slaves_lock);
+	mutex_init(&nfo_info->stats_lock);
+
 	err = register_netdev(failover_dev);
 	if (err) {
 		dev_err(dev, "Unable to register failover_dev!\n");
diff --git a/include/net/net_failover.h b/include/net/net_failover.h
index b12a1c469d1c..988cdfaf14ca 100644
--- a/include/net/net_failover.h
+++ b/include/net/net_failover.h
@@ -23,8 +23,13 @@ struct net_failover_info {
 	/* aggregated stats */
 	struct rtnl_link_stats64 failover_stats;
 
-	/* spinlock while updating stats */
-	spinlock_t stats_lock;
+	/* lock for updating stats */
+	struct mutex stats_lock;
+
+	/* lock for protecting lower interfaces.
+	 * TODO: convert all rtnl_dereference instances to nfo_dereference
+	 */
+	struct mutex slaves_lock;
 };
 
 struct failover *net_failover_create(struct net_device *standby_dev);
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
