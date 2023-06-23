Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DB673B7A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 14:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83ABD419AC;
	Fri, 23 Jun 2023 12:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83ABD419AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687524105;
	bh=vAu5q/cIk6SUPvDBITkN03T1mypYECIsifoIJdGrlmE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UXA6EzZ71lqpFHQFMGUMwzKGay+P615sp61qi83pTrpuiSjCMzxYNOMKr3EJewVah
	 F5GWGd3tSD0u+29XtoEHwl02jrdLdABlkO3pdo7STQhHmNF28Tu2dU95BpIqly3loX
	 KsUAG5AYb41V9rQePwd2UdcibT15gd9HX/5HL4YlnGgc4JdCXDh7LnKekJ2j80XgC2
	 643SH/MS1pzUQXJPhD/yn4x2xoiyOf16+GI3CY3VwzcwRneVBuhg7s2N8/9yLbc3BY
	 2y/Mzg+674z9ZKA+2A7FyDPHEX2HTYshILYu0GhNCNJ5HcbcYZoZT4OEsDfJ32buZ1
	 6acxk381ANi0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYnusKuUfNgF; Fri, 23 Jun 2023 12:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E76BC419A9;
	Fri, 23 Jun 2023 12:41:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E76BC419A9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AAF51BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0295142433
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0295142433
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2iUOjJn-kzfb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 12:41:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F9B4241B
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2F9B4241B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="341096735"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="341096735"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 05:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="785321204"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="785321204"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jun 2023 05:41:18 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri, 23 Jun 2023 14:38:16 +0200
Message-Id: <20230623123820.42850-7-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687524089; x=1719060089;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OvS8I5pI4iIH2iYj4CEGQRthk+DwW1/ODUU3Opuy/uI=;
 b=YUA+oZpJrjRoaglF2+z9yjZcwsHB67UlI5kKUCaGuNiti0QZfE8e787U
 OFIHzFSSEMW+wFFy/m2vaO1pNkE0GFr5ONYsVJL1KxRbC810hyhlRNdFY
 ajyFtql+vsgLt1UlufrNGRWeBB9AB7FYJKCrITjiCczsXA1oeHlZ8GMkB
 Y9CWi/Zl/ZIfWAFwxPnapJIcdcbTR0LT6lc+NZlgwTllvJ6XOmbVIy+Na
 k9yjUDNjlYDG8y8VHQ65dk672m4gUbjSmY/yekZh+Mjs5lfAo7g/0kWCV
 cN3/UrZOhK4upH5qZrofLyDMzcjWufZOAe68rLhLUssQiwPQkfhoybJv6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUA+oZpJ
Subject: [Intel-wired-lan] [RFC PATCH v9 06/10] netdev: expose DPLL pin
 handle for netdevice
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, airlied@redhat.com, vadfed@fb.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 Jiri Pirko <jiri@nvidia.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, netdev@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jiri Pirko <jiri@nvidia.com>

In case netdevice represents a SyncE port, the user needs to understand
the connection between netdevice and associated DPLL pin. There might me
multiple netdevices pointing to the same pin, in case of VF/SF
implementation.

Add a IFLA Netlink attribute to nest the DPLL pin handle, similar to
how it is implemented for devlink port. Add a struct dpll_pin pointer
to netdev and protect access to it by RTNL. Expose netdev_dpll_pin_set()
and netdev_dpll_pin_clear() helpers to the drivers so they can set/clear
the DPLL pin relationship to netdev.

Note that during the lifetime of struct dpll_pin the pin handle does not
change. Therefore it is save to access it lockless. It is drivers
responsibility to call netdev_dpll_pin_clear() before dpll_pin_put().

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/dpll/dpll_netlink.c  |  7 ++++---
 include/linux/dpll.h         | 20 ++++++++++++++++++++
 include/linux/netdevice.h    | 20 ++++++++++++++++++++
 include/uapi/linux/if_link.h |  2 ++
 net/core/dev.c               | 22 ++++++++++++++++++++++
 net/core/rtnetlink.c         | 35 +++++++++++++++++++++++++++++++++++
 6 files changed, 103 insertions(+), 3 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 58ee4a88b301..de90861d765d 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -66,6 +66,7 @@ int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
 		return -EMSGSIZE;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dpll_msg_add_pin_handle);
 
 static int
 dpll_msg_add_mode(struct sk_buff *msg, struct dpll_device *dpll,
@@ -265,10 +266,9 @@ dpll_msg_add_pin_parents(struct sk_buff *msg, struct dpll_pin *pin,
 		nest = nla_nest_start(msg, DPLL_A_PIN_PARENT_PIN);
 		if (!nest)
 			return -EMSGSIZE;
-		if (nla_put_u32(msg, DPLL_A_PIN_ID, ppin->id)) {
-			ret = -EMSGSIZE;
+		ret = dpll_msg_add_pin_handle(msg, ppin);
+		if (ret)
 			goto nest_cancel;
-		}
 		if (nla_put_u8(msg, DPLL_A_PIN_STATE, state)) {
 			ret = -EMSGSIZE;
 			goto nest_cancel;
@@ -328,6 +328,7 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
 
 	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
 	ASSERT_NOT_NULL(ref);
+
 	ret = dpll_msg_add_pin_handle(msg, pin);
 	if (ret)
 		return ret;
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index a18bcaa13553..8d085dc92cdd 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -108,6 +108,26 @@ struct dpll_pin_properties {
 	struct dpll_pin_frequency *freq_supported;
 };
 
+#if IS_ENABLED(CONFIG_DPLL)
+
+size_t dpll_msg_pin_handle_size(struct dpll_pin *pin);
+
+int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin);
+
+#else
+
+static inline size_t dpll_msg_pin_handle_size(struct dpll_pin *pin)
+{
+	return 0;
+}
+
+static inline int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
+{
+	return 0;
+}
+
+#endif
+
 struct dpll_device
 *dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index acf706d49c2b..99bfc427ffee 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -34,6 +34,7 @@
 #include <linux/rculist.h>
 #include <linux/workqueue.h>
 #include <linux/dynamic_queue_limits.h>
+#include <linux/dpll.h>
 
 #include <net/net_namespace.h>
 #ifdef CONFIG_DCB
@@ -2058,6 +2059,9 @@ enum netdev_ml_priv_type {
  *			SET_NETDEV_DEVLINK_PORT macro. This pointer is static
  *			during the time netdevice is registered.
  *
+ *	@dpll_pin: Pointer to the SyncE source pin of a DPLL subsystem,
+ *		   where the clock is recovered.
+ *
  *	FIXME: cleanup struct net_device such that network protocol info
  *	moves out.
  */
@@ -2414,6 +2418,10 @@ struct net_device {
 	struct rtnl_hw_stats64	*offload_xstats_l3;
 
 	struct devlink_port	*devlink_port;
+
+#if IS_ENABLED(CONFIG_DPLL)
+	struct dpll_pin		*dpll_pin;
+#endif
 };
 #define to_net_dev(d) container_of(d, struct net_device, dev)
 
@@ -3961,6 +3969,18 @@ int dev_get_mac_address(struct sockaddr *sa, struct net *net, char *dev_name);
 int dev_get_port_parent_id(struct net_device *dev,
 			   struct netdev_phys_item_id *ppid, bool recurse);
 bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b);
+void netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin);
+void netdev_dpll_pin_clear(struct net_device *dev);
+
+static inline struct dpll_pin *netdev_dpll_pin(const struct net_device *dev)
+{
+#if IS_ENABLED(CONFIG_DPLL)
+	return dev->dpll_pin;
+#else
+	return NULL;
+#endif
+}
+
 struct sk_buff *validate_xmit_skb_list(struct sk_buff *skb, struct net_device *dev, bool *again);
 struct sk_buff *dev_hard_start_xmit(struct sk_buff *skb, struct net_device *dev,
 				    struct netdev_queue *txq, int *ret);
diff --git a/include/uapi/linux/if_link.h b/include/uapi/linux/if_link.h
index 0f6a0fe09bdb..be03c8292cd7 100644
--- a/include/uapi/linux/if_link.h
+++ b/include/uapi/linux/if_link.h
@@ -377,6 +377,8 @@ enum {
 	IFLA_GSO_IPV4_MAX_SIZE,
 	IFLA_GRO_IPV4_MAX_SIZE,
 
+	IFLA_DPLL_PIN,
+
 	__IFLA_MAX
 };
 
diff --git a/net/core/dev.c b/net/core/dev.c
index e4ff0adf5523..2cf2d9a00feb 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8956,6 +8956,28 @@ bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b)
 }
 EXPORT_SYMBOL(netdev_port_same_parent_id);
 
+static void netdev_dpll_pin_assign(struct net_device *dev, struct dpll_pin *dpll_pin)
+{
+#if IS_ENABLED(CONFIG_DPLL)
+	rtnl_lock();
+	dev->dpll_pin = dpll_pin;
+	rtnl_unlock();
+#endif
+}
+
+void netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin)
+{
+	WARN_ON(!dpll_pin);
+	netdev_dpll_pin_assign(dev, dpll_pin);
+}
+EXPORT_SYMBOL(netdev_dpll_pin_set);
+
+void netdev_dpll_pin_clear(struct net_device *dev)
+{
+	netdev_dpll_pin_assign(dev, NULL);
+}
+EXPORT_SYMBOL(netdev_dpll_pin_clear);
+
 /**
  *	dev_change_proto_down - set carrier according to proto_down.
  *
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 2c61fb912772..48ce14306f28 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -1055,6 +1055,15 @@ static size_t rtnl_devlink_port_size(const struct net_device *dev)
 	return size;
 }
 
+static size_t rtnl_dpll_pin_size(const struct net_device *dev)
+{
+	size_t size = nla_total_size(0); /* nest IFLA_DPLL_PIN */
+
+	size += dpll_msg_pin_handle_size(netdev_dpll_pin(dev));
+
+	return size;
+}
+
 static noinline size_t if_nlmsg_size(const struct net_device *dev,
 				     u32 ext_filter_mask)
 {
@@ -1111,6 +1120,7 @@ static noinline size_t if_nlmsg_size(const struct net_device *dev,
 	       + rtnl_prop_list_size(dev)
 	       + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADDRESS */
 	       + rtnl_devlink_port_size(dev)
+	       + rtnl_dpll_pin_size(dev)
 	       + 0;
 }
 
@@ -1775,6 +1785,28 @@ static int rtnl_fill_devlink_port(struct sk_buff *skb,
 	return ret;
 }
 
+static int rtnl_fill_dpll_pin(struct sk_buff *skb,
+			      const struct net_device *dev)
+{
+	struct nlattr *dpll_pin_nest;
+	int ret;
+
+	dpll_pin_nest = nla_nest_start(skb, IFLA_DPLL_PIN);
+	if (!dpll_pin_nest)
+		return -EMSGSIZE;
+
+	ret = dpll_msg_add_pin_handle(skb, netdev_dpll_pin(dev));
+	if (ret < 0)
+		goto nest_cancel;
+
+	nla_nest_end(skb, dpll_pin_nest);
+	return 0;
+
+nest_cancel:
+	nla_nest_cancel(skb, dpll_pin_nest);
+	return ret;
+}
+
 static int rtnl_fill_ifinfo(struct sk_buff *skb,
 			    struct net_device *dev, struct net *src_net,
 			    int type, u32 pid, u32 seq, u32 change,
@@ -1917,6 +1949,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
 	if (rtnl_fill_devlink_port(skb, dev))
 		goto nla_put_failure;
 
+	if (rtnl_fill_dpll_pin(skb, dev))
+		goto nla_put_failure;
+
 	nlmsg_end(skb, nlh);
 	return 0;
 
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
