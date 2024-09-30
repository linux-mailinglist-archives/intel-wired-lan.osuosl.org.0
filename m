Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAF098A62C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:55:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C031402AE;
	Mon, 30 Sep 2024 13:55:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0RokPFaxXFKl; Mon, 30 Sep 2024 13:55:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB86340250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727704503;
	bh=aBgrL7nBJVKxfGGFnWFWvXc7NFtCD8EupmgaDIbaRqo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A4nFbsivxZAWTUTjxAgHzodxhUe6TdzOFy/BOWckoggIj3XJd3x4xnQK6UQCsNMRY
	 eiXUBRhA9Yr7bNjRSXa+VI3b53m2TKWG0mb31E1SvoXGlgCJT1PK7jtgYZBArEuK+u
	 CDimyj65qkVJ/Yeek+mIqJSIpVB7VIPGUUERcIONpxqhgSvRS+teofQruRgJyWAka6
	 J93PqQKo3nrnAtPtrsMakOKaWzJAbLCCIF/qxX/TKJwtXhKK35oR10oK1mVcLa/rfO
	 g4Zx2dsEvpd6VGlrzmykgRH+mm+2c5MFr8meaSCd7Ro5oZivUtTgSZ5h8ESU9qD+gG
	 HKBv92zfPxBQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB86340250;
	Mon, 30 Sep 2024 13:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 332C21BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E60C40144
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:55:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vKfyqIvBqn5e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:54:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3DAB940118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DAB940118
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DAB940118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:54:59 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-517-oCBFlJVYMrmBxLEkpDKZSg-1; Mon,
 30 Sep 2024 09:54:54 -0400
X-MC-Unique: oCBFlJVYMrmBxLEkpDKZSg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown
 [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 4BCCD19772EC; Mon, 30 Sep 2024 13:54:52 +0000 (UTC)
Received: from gerbillo.redhat.com (unknown [10.45.224.210])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 2DF6119541A6; Mon, 30 Sep 2024 13:54:46 +0000 (UTC)
From: Paolo Abeni <pabeni@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 30 Sep 2024 15:53:50 +0200
Message-ID: <67914666a3c311e359e03a6009de53a838146ce8.1727704215.git.pabeni@redhat.com>
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1727704498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aBgrL7nBJVKxfGGFnWFWvXc7NFtCD8EupmgaDIbaRqo=;
 b=fpKI2G0ZRXyLjxhbA+7cflSleXS1S2nqG17U6GHkEpPXznunFs8STaVQsdu9hNrV/YleZm
 klu+QZ7onnjb70dnvowT37qZUef6Ue0nPOwBq7yHben5jOgWFXPymIRtNO4la3Tu/v9AyX
 MzKg/43qB9L0ao2GtOTVdcAAs/X07KE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fpKI2G0Z
Subject: [Intel-wired-lan] [PATCH v8 net-next 03/15] net-shapers: implement
 NL get operation
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 przemyslaw.kitszel@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce the basic infrastructure to implement the net-shaper
core functionality. Each network devices carries a net-shaper cache,
the NL get() operation fetches the data from such cache.

The cache is initially empty, will be fill by the set()/group()
operation implemented later and is destroyed at device cleanup time.

The net_shaper_fill_handle(), net_shaper_ctx_init(), and
net_shaper_generic_pre() implementations handle generic index type
attributes, despite the current caller always pass a constant value
to avoid more noise in later patches using them with different
attributes.

Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v7 -> v8:
 - move mutex init/destroy to alloc_netdev_mqs()/free_netdev()

v6 -> v7:
 - fix uninit ret code in net_shaper_nl_get_dumpit()
 - drop unneeded 'memset' in net_shaper_ctx_setup()
 - drop unneeded 'if' in net_shaper_generic_pre()

v5 -> v6:
 - move shaper lock into dev
 - add rcu protection to shaper get/dump
 - net_shaper_cache_lookup -> net_shaper_lookup
 - net_shaper_ctx_init -> net_shaper_ctx_setup
 - net_shaper_info -> net_shaper
 - net_shaper_data -> net_shaper_hierarcy
 - use NL_REQ_ATTR_CHECK where possible
 - nla_nest_start_noflag -> nla_parse_nested
 - consolidate ctx usage
 - capabilities() op returns void

v4 -> v5:
 - ops operate on struct binding
 - replace net_device * with binding* in most helpers
 - include 'ifindex' in get/dump output
 - use dev_tracker for real
 - user pre/post for dump op, too
 - use NL_SET_BAD_ATTR where applicable
 - drop redundant/useless kdoc documentation
 - add type arg to net_shaper_ctx_init() (moved from later patch)
 - factor out generic pre/post helper for later usage in the series
 - remove unneeded forward declaration from netdevice.h
 - dropped 'inline' modifier in .c file
 - dropped black line at net_shaper.h EoF

v3 -> v4:
 - add scope prefix
 - use forward declaration in the include
 - move the handle out of shaper_info

RFC v2 -> RFC v3:
 - dev_put() -> netdev_put()
---
 Documentation/networking/kapi.rst |   3 +
 include/linux/netdevice.h         |  21 ++
 include/net/net_shaper.h          | 120 +++++++++++
 net/core/dev.c                    |   6 +
 net/core/dev.h                    |   6 +
 net/shaper/shaper.c               | 335 +++++++++++++++++++++++++++++-
 6 files changed, 484 insertions(+), 7 deletions(-)
 create mode 100644 include/net/net_shaper.h

diff --git a/Documentation/networking/kapi.rst b/Documentation/networking/kapi.rst
index ea55f462cefa..98682b9a13ee 100644
--- a/Documentation/networking/kapi.rst
+++ b/Documentation/networking/kapi.rst
@@ -104,6 +104,9 @@ Driver Support
 .. kernel-doc:: include/linux/netdevice.h
    :internal:
 
+.. kernel-doc:: include/net/net_shaper.h
+   :internal:
+
 PHY Support
 -----------
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index e87b5e488325..80a6ff016a68 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1603,6 +1603,14 @@ struct net_device_ops {
 	int			(*ndo_hwtstamp_set)(struct net_device *dev,
 						    struct kernel_hwtstamp_config *kernel_config,
 						    struct netlink_ext_ack *extack);
+
+#if IS_ENABLED(CONFIG_NET_SHAPER)
+	/**
+	 * @net_shaper_ops: Device shaping offload operations
+	 * see include/net/net_shapers.h
+	 */
+	const struct net_shaper_ops *net_shaper_ops;
+#endif
 };
 
 /**
@@ -2399,6 +2407,19 @@ struct net_device {
 	/** @irq_moder: dim parameters used if IS_ENABLED(CONFIG_DIMLIB). */
 	struct dim_irq_moder	*irq_moder;
 
+	/**
+	 * @lock: protects @net_shaper_hierarchy, feel free to use for other
+	 * netdev-scope protection. Ordering: take after rtnl_lock.
+	 */
+	struct mutex		lock;
+
+#if IS_ENABLED(CONFIG_NET_SHAPER)
+	/**
+	 * @net_shaper_hierarchy: data tracking the current shaper status
+	 *  see include/net/net_shapers.h
+	 */
+	struct net_shaper_hierarchy *net_shaper_hierarchy;
+#endif
 	u8			priv[] ____cacheline_aligned
 				       __counted_by(priv_len);
 } ____cacheline_aligned;
diff --git a/include/net/net_shaper.h b/include/net/net_shaper.h
new file mode 100644
index 000000000000..5c3f49b52fe9
--- /dev/null
+++ b/include/net/net_shaper.h
@@ -0,0 +1,120 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _NET_SHAPER_H_
+#define _NET_SHAPER_H_
+
+#include <linux/types.h>
+
+#include <uapi/linux/net_shaper.h>
+
+struct net_device;
+struct devlink;
+struct netlink_ext_ack;
+
+enum net_shaper_binding_type {
+	NET_SHAPER_BINDING_TYPE_NETDEV,
+	/* NET_SHAPER_BINDING_TYPE_DEVLINK_PORT */
+};
+
+struct net_shaper_binding {
+	enum net_shaper_binding_type type;
+	union {
+		struct net_device *netdev;
+		struct devlink *devlink;
+	};
+};
+
+struct net_shaper_handle {
+	enum net_shaper_scope scope;
+	u32 id;
+};
+
+/**
+ * struct net_shaper - represents a shaping node on the NIC H/W
+ * zeroed field are considered not set.
+ * @parent: Unique identifier for the shaper parent, usually implied
+ * @handle: Unique identifier for this shaper
+ * @metric: Specify if the rate limits refers to PPS or BPS
+ * @bw_min: Minimum guaranteed rate for this shaper
+ * @bw_max: Maximum peak rate allowed for this shaper
+ * @burst: Maximum burst for the peek rate of this shaper
+ * @priority: Scheduling priority for this shaper
+ * @weight: Scheduling weight for this shaper
+ */
+struct net_shaper {
+	struct net_shaper_handle parent;
+	struct net_shaper_handle handle;
+	enum net_shaper_metric metric;
+	u64 bw_min;
+	u64 bw_max;
+	u64 burst;
+	u32 priority;
+	u32 weight;
+
+	/* private: */
+	u32 leaves; /* accounted only for NODE scope */
+	struct rcu_head rcu;
+};
+
+/**
+ * struct net_shaper_ops - Operations on device H/W shapers
+ *
+ * The operations applies to either net_device and devlink objects.
+ * The initial shaping configuration at device initialization is empty:
+ * does not constraint the rate in any way.
+ * The network core keeps track of the applied user-configuration in
+ * the net_device or devlink structure.
+ * The operations are serialized via a per device lock.
+ *
+ * Device not supporting any kind of nesting should not provide the
+ * group operation.
+ *
+ * Each shaper is uniquely identified within the device with a 'handle'
+ * comprising the shaper scope and a scope-specific id.
+ */
+struct net_shaper_ops {
+	/**
+	 * @group: create the specified shapers scheduling group
+	 *
+	 * Nest the @leaves shapers identified under the * @node shaper.
+	 * All the shapers belong to the device specified by @binding.
+	 * The @leaves arrays size is specified by @leaves_count.
+	 * Create either the @leaves and the @node shaper; or if they already
+	 * exists, links them together in the desired way.
+	 * @leaves scope must be NET_SHAPER_SCOPE_QUEUE.
+	 */
+	int (*group)(struct net_shaper_binding *binding, int leaves_count,
+		     const struct net_shaper *leaves,
+		     const struct net_shaper *node,
+		     struct netlink_ext_ack *extack);
+
+	/**
+	 * @set: Updates the specified shaper
+	 *
+	 * Updates or creates the @shaper on the device specified by @binding.
+	 */
+	int (*set)(struct net_shaper_binding *binding,
+		   const struct net_shaper *shaper,
+		   struct netlink_ext_ack *extack);
+
+	/**
+	 * @delete: Removes the specified shaper
+	 *
+	 * Removes the shaper configuration as identified by the given @handle
+	 * on the device specified by @binding, restoring the default behavior.
+	 */
+	int (*delete)(struct net_shaper_binding *binding,
+		      const struct net_shaper_handle *handle,
+		      struct netlink_ext_ack *extack);
+
+	/**
+	 * @capabilities: get the shaper features supported by the device
+	 *
+	 * Fills the bitmask @cap with the supported capabilities for the
+	 * specified @scope and device specified by @binding.
+	 */
+	void (*capabilities)(struct net_shaper_binding *binding,
+			     enum net_shaper_scope scope, unsigned long *cap);
+};
+
+#endif
diff --git a/net/core/dev.c b/net/core/dev.c
index cd479f5f22f6..1e19797d8edd 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -11143,6 +11143,8 @@ struct net_device *alloc_netdev_mqs(int sizeof_priv, const char *name,
 	hash_init(dev->qdisc_hash);
 #endif
 
+	mutex_init(&dev->lock);
+
 	dev->priv_flags = IFF_XMIT_DST_RELEASE | IFF_XMIT_DST_RELEASE_PERM;
 	setup(dev);
 
@@ -11213,6 +11215,8 @@ void free_netdev(struct net_device *dev)
 		return;
 	}
 
+	mutex_destroy(&dev->lock);
+
 	kfree(dev->ethtool);
 	netif_free_tx_queues(dev);
 	netif_free_rx_queues(dev);
@@ -11422,6 +11426,8 @@ void unregister_netdevice_many_notify(struct list_head *head,
 
 		mutex_destroy(&dev->ethtool->rss_lock);
 
+		net_shaper_flush_netdev(dev);
+
 		if (skb)
 			rtmsg_ifinfo_send(skb, dev, GFP_KERNEL, portid, nlh);
 
diff --git a/net/core/dev.h b/net/core/dev.h
index 5654325c5b71..13c558874af3 100644
--- a/net/core/dev.h
+++ b/net/core/dev.h
@@ -35,6 +35,12 @@ void dev_addr_flush(struct net_device *dev);
 int dev_addr_init(struct net_device *dev);
 void dev_addr_check(struct net_device *dev);
 
+#if IS_ENABLED(CONFIG_NET_SHAPER)
+void net_shaper_flush_netdev(struct net_device *dev);
+#else
+static inline void net_shaper_flush_netdev(struct net_device *dev) {}
+#endif
+
 /* sysctls not referred to from outside net/core/ */
 extern int		netdev_unregister_timeout_secs;
 extern int		weight_p;
diff --git a/net/shaper/shaper.c b/net/shaper/shaper.c
index a1b20888f502..22daf7dde999 100644
--- a/net/shaper/shaper.c
+++ b/net/shaper/shaper.c
@@ -1,30 +1,333 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 
+#include <linux/bits.h>
+#include <linux/bitfield.h>
+#include <linux/idr.h>
 #include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/netlink.h>
 #include <linux/skbuff.h>
+#include <linux/xarray.h>
+#include <net/devlink.h>
+#include <net/net_shaper.h>
 
 #include "shaper_nl_gen.h"
 
+#include "../core/dev.h"
+
+#define NET_SHAPER_SCOPE_SHIFT	26
+#define NET_SHAPER_ID_MASK	GENMASK(NET_SHAPER_SCOPE_SHIFT - 1, 0)
+#define NET_SHAPER_SCOPE_MASK	GENMASK(31, NET_SHAPER_SCOPE_SHIFT)
+
+#define NET_SHAPER_ID_UNSPEC NET_SHAPER_ID_MASK
+
+struct net_shaper_hierarchy {
+	struct xarray shapers;
+};
+
+struct net_shaper_nl_ctx {
+	struct net_shaper_binding binding;
+	netdevice_tracker dev_tracker;
+	unsigned long start_index;
+};
+
+static struct net_shaper_binding *net_shaper_binding_from_ctx(void *ctx)
+{
+	return &((struct net_shaper_nl_ctx *)ctx)->binding;
+}
+
+static struct net_shaper_hierarchy *
+net_shaper_hierarchy(struct net_shaper_binding *binding)
+{
+	/* Pairs with WRITE_ONCE() in net_shaper_hierarchy_setup. */
+	if (binding->type == NET_SHAPER_BINDING_TYPE_NETDEV)
+		return READ_ONCE(binding->netdev->net_shaper_hierarchy);
+
+	/* No other type supported yet. */
+	return NULL;
+}
+
+static int net_shaper_fill_binding(struct sk_buff *msg,
+				   const struct net_shaper_binding *binding,
+				   u32 type)
+{
+	/* Should never happen, as currently only NETDEV is supported. */
+	if (WARN_ON_ONCE(binding->type != NET_SHAPER_BINDING_TYPE_NETDEV))
+		return -EINVAL;
+
+	if (nla_put_u32(msg, type, binding->netdev->ifindex))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int net_shaper_fill_handle(struct sk_buff *msg,
+				  const struct net_shaper_handle *handle,
+				  u32 type)
+{
+	struct nlattr *handle_attr;
+
+	if (handle->scope == NET_SHAPER_SCOPE_UNSPEC)
+		return 0;
+
+	handle_attr = nla_nest_start(msg, type);
+	if (!handle_attr)
+		return -EMSGSIZE;
+
+	if (nla_put_u32(msg, NET_SHAPER_A_HANDLE_SCOPE, handle->scope) ||
+	    (handle->scope >= NET_SHAPER_SCOPE_QUEUE &&
+	     nla_put_u32(msg, NET_SHAPER_A_HANDLE_ID, handle->id)))
+		goto handle_nest_cancel;
+
+	nla_nest_end(msg, handle_attr);
+	return 0;
+
+handle_nest_cancel:
+	nla_nest_cancel(msg, handle_attr);
+	return -EMSGSIZE;
+}
+
+static int
+net_shaper_fill_one(struct sk_buff *msg,
+		    const struct net_shaper_binding *binding,
+		    const struct net_shaper *shaper,
+		    const struct genl_info *info)
+{
+	void *hdr;
+
+	hdr = genlmsg_iput(msg, info);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	if (net_shaper_fill_binding(msg, binding, NET_SHAPER_A_IFINDEX) ||
+	    net_shaper_fill_handle(msg, &shaper->parent,
+				   NET_SHAPER_A_PARENT) ||
+	    net_shaper_fill_handle(msg, &shaper->handle,
+				   NET_SHAPER_A_HANDLE) ||
+	    ((shaper->bw_min || shaper->bw_max || shaper->burst) &&
+	     nla_put_u32(msg, NET_SHAPER_A_METRIC, shaper->metric)) ||
+	    (shaper->bw_min &&
+	     nla_put_uint(msg, NET_SHAPER_A_BW_MIN, shaper->bw_min)) ||
+	    (shaper->bw_max &&
+	     nla_put_uint(msg, NET_SHAPER_A_BW_MAX, shaper->bw_max)) ||
+	    (shaper->burst &&
+	     nla_put_uint(msg, NET_SHAPER_A_BURST, shaper->burst)) ||
+	    (shaper->priority &&
+	     nla_put_u32(msg, NET_SHAPER_A_PRIORITY, shaper->priority)) ||
+	    (shaper->weight &&
+	     nla_put_u32(msg, NET_SHAPER_A_WEIGHT, shaper->weight)))
+		goto nla_put_failure;
+
+	genlmsg_end(msg, hdr);
+
+	return 0;
+
+nla_put_failure:
+	genlmsg_cancel(msg, hdr);
+	return -EMSGSIZE;
+}
+
+/* Initialize the context fetching the relevant device and
+ * acquiring a reference to it.
+ */
+static int net_shaper_ctx_setup(const struct genl_info *info, int type,
+				struct net_shaper_nl_ctx *ctx)
+{
+	struct net *ns = genl_info_net(info);
+	struct net_device *dev;
+	int ifindex;
+
+	if (GENL_REQ_ATTR_CHECK(info, type))
+		return -EINVAL;
+
+	ifindex = nla_get_u32(info->attrs[type]);
+	dev = netdev_get_by_index(ns, ifindex, &ctx->dev_tracker, GFP_KERNEL);
+	if (!dev) {
+		NL_SET_BAD_ATTR(info->extack, info->attrs[type]);
+		return -ENOENT;
+	}
+
+	if (!dev->netdev_ops->net_shaper_ops) {
+		NL_SET_BAD_ATTR(info->extack, info->attrs[type]);
+		netdev_put(dev, &ctx->dev_tracker);
+		return -EOPNOTSUPP;
+	}
+
+	ctx->binding.type = NET_SHAPER_BINDING_TYPE_NETDEV;
+	ctx->binding.netdev = dev;
+	return 0;
+}
+
+static void net_shaper_ctx_cleanup(struct net_shaper_nl_ctx *ctx)
+{
+	if (ctx->binding.type == NET_SHAPER_BINDING_TYPE_NETDEV)
+		netdev_put(ctx->binding.netdev, &ctx->dev_tracker);
+}
+
+static u32 net_shaper_handle_to_index(const struct net_shaper_handle *handle)
+{
+	return FIELD_PREP(NET_SHAPER_SCOPE_MASK, handle->scope) |
+		FIELD_PREP(NET_SHAPER_ID_MASK, handle->id);
+}
+
+static struct net_shaper *
+net_shaper_lookup(struct net_shaper_binding *binding,
+		  const struct net_shaper_handle *handle)
+{
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	u32 index = net_shaper_handle_to_index(handle);
+
+	return hierarchy ? xa_load(&hierarchy->shapers, index) : NULL;
+}
+
+static int net_shaper_parse_handle(const struct nlattr *attr,
+				   const struct genl_info *info,
+				   struct net_shaper_handle *handle)
+{
+	struct nlattr *tb[NET_SHAPER_A_HANDLE_MAX + 1];
+	struct nlattr *id_attr;
+	u32 id = 0;
+	int ret;
+
+	ret = nla_parse_nested(tb, NET_SHAPER_A_HANDLE_MAX, attr,
+			       net_shaper_handle_nl_policy, info->extack);
+	if (ret < 0)
+		return ret;
+
+	if (NL_REQ_ATTR_CHECK(info->extack, attr, tb,
+			      NET_SHAPER_A_HANDLE_SCOPE))
+		return -EINVAL;
+
+	handle->scope = nla_get_u32(tb[NET_SHAPER_A_HANDLE_SCOPE]);
+
+	/* The default id for NODE scope shapers is an invalid one
+	 * to help the 'group' operation discriminate between new
+	 * NODE shaper creation (ID_UNSPEC) and reuse of existing
+	 * shaper (any other value).
+	 */
+	id_attr = tb[NET_SHAPER_A_HANDLE_ID];
+	if (id_attr)
+		id = nla_get_u32(id_attr);
+	else if (handle->scope == NET_SHAPER_SCOPE_NODE)
+		id = NET_SHAPER_ID_UNSPEC;
+
+	handle->id = id;
+	return 0;
+}
+
+static int net_shaper_generic_pre(struct genl_info *info, int type)
+{
+	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)info->ctx;
+
+	BUILD_BUG_ON(sizeof(*ctx) > sizeof(info->ctx));
+
+	return net_shaper_ctx_setup(info, type, ctx);
+}
+
 int net_shaper_nl_pre_doit(const struct genl_split_ops *ops,
 			   struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	return net_shaper_generic_pre(info, NET_SHAPER_A_IFINDEX);
+}
+
+static void net_shaper_generic_post(struct genl_info *info)
+{
+	net_shaper_ctx_cleanup((struct net_shaper_nl_ctx *)info->ctx);
 }
 
 void net_shaper_nl_post_doit(const struct genl_split_ops *ops,
 			     struct sk_buff *skb, struct genl_info *info)
 {
+	net_shaper_generic_post(info);
+}
+
+int net_shaper_nl_pre_dumpit(struct netlink_callback *cb)
+{
+	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)cb->ctx;
+	const struct genl_info *info = genl_info_dump(cb);
+
+	return net_shaper_ctx_setup(info, NET_SHAPER_A_IFINDEX, ctx);
+}
+
+int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
+{
+	net_shaper_ctx_cleanup((struct net_shaper_nl_ctx *)cb->ctx);
+	return 0;
 }
 
 int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_binding *binding;
+	struct net_shaper_handle handle;
+	struct net_shaper *shaper;
+	struct sk_buff *msg;
+	int ret;
+
+	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_HANDLE))
+		return -EINVAL;
+
+	binding = net_shaper_binding_from_ctx(info->ctx);
+	ret = net_shaper_parse_handle(info->attrs[NET_SHAPER_A_HANDLE], info,
+				      &handle);
+	if (ret < 0)
+		return ret;
+
+	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+
+	rcu_read_lock();
+	shaper = net_shaper_lookup(binding, &handle);
+	if (!shaper) {
+		NL_SET_BAD_ATTR(info->extack,
+				info->attrs[NET_SHAPER_A_HANDLE]);
+		rcu_read_unlock();
+		ret = -ENOENT;
+		goto free_msg;
+	}
+
+	ret = net_shaper_fill_one(msg, binding, shaper, info);
+	rcu_read_unlock();
+	if (ret)
+		goto free_msg;
+
+	ret = genlmsg_reply(msg, info);
+	if (ret)
+		goto free_msg;
+
+	return 0;
+
+free_msg:
+	nlmsg_free(msg);
+	return ret;
 }
 
 int net_shaper_nl_get_dumpit(struct sk_buff *skb,
 			     struct netlink_callback *cb)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_nl_ctx *ctx = (struct net_shaper_nl_ctx *)cb->ctx;
+	const struct genl_info *info = genl_info_dump(cb);
+	struct net_shaper_hierarchy *hierarchy;
+	struct net_shaper_binding *binding;
+	struct net_shaper *shaper;
+	int ret = 0;
+
+	/* Don't error out dumps performed before any set operation. */
+	binding = net_shaper_binding_from_ctx(ctx);
+	hierarchy = net_shaper_hierarchy(binding);
+	if (!hierarchy)
+		return 0;
+
+	rcu_read_lock();
+	for (; (shaper = xa_find(&hierarchy->shapers, &ctx->start_index,
+				 U32_MAX, XA_PRESENT)); ctx->start_index++) {
+		ret = net_shaper_fill_one(skb, binding, shaper, info);
+		if (ret)
+			break;
+	}
+	rcu_read_unlock();
+
+	return ret;
 }
 
 int net_shaper_nl_set_doit(struct sk_buff *skb, struct genl_info *info)
@@ -37,14 +340,32 @@ int net_shaper_nl_delete_doit(struct sk_buff *skb, struct genl_info *info)
 	return -EOPNOTSUPP;
 }
 
-int net_shaper_nl_pre_dumpit(struct netlink_callback *cb)
+static void net_shaper_flush(struct net_shaper_binding *binding)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_hierarchy *hierarchy = net_shaper_hierarchy(binding);
+	struct net_shaper *cur;
+	unsigned long index;
+
+	if (!hierarchy)
+		return;
+
+	xa_lock(&hierarchy->shapers);
+	xa_for_each(&hierarchy->shapers, index, cur) {
+		__xa_erase(&hierarchy->shapers, index);
+		kfree(cur);
+	}
+	xa_unlock(&hierarchy->shapers);
+	kfree(hierarchy);
 }
 
-int net_shaper_nl_post_dumpit(struct netlink_callback *cb)
+void net_shaper_flush_netdev(struct net_device *dev)
 {
-	return -EOPNOTSUPP;
+	struct net_shaper_binding binding = {
+		.type = NET_SHAPER_BINDING_TYPE_NETDEV,
+		.netdev = dev,
+	};
+
+	net_shaper_flush(&binding);
 }
 
 static int __init shaper_init(void)
-- 
2.45.2

