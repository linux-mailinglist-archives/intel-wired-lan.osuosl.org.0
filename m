Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0252C7299A5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 14:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2746860F49;
	Fri,  9 Jun 2023 12:22:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2746860F49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686313340;
	bh=l7u/9kTYN2dZcJ9MILQ8WBG6sqdc/z5qUNEBpntvvCE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3ykYtzCaAVznLqhaHzw3/q9Z+blUxI0PCnxHIVdzFPO0COdjpEDJ5UqvZM9bDiQeU
	 tvHU4K3kf4wf+bVSvkT6vzMVpZRo8nRfwOmaJmz3zoTOu+WBopa2ogbaTU71G+DM55
	 Yy3QtgN5xq4cmERq7k/KVVayLY52LRpvVBrhbEKubLyF5LGQv1shKOn3nUd4jUd07K
	 uioeDP9hZjMi5weVaxESwhYgcooHIOKkNIEuIWbfacrI7+Cip/LWsIOxvETdhQ7fkP
	 zr8pRvcnSPOBwt7SX16J3E7aYhZ9fbFpB3bTbDebvtFfn9o2w4dR0zVfH134DcZCpA
	 neu5AtPDlPWIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6MgAShNb-FY; Fri,  9 Jun 2023 12:22:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 82DFB60E42;
	Fri,  9 Jun 2023 12:22:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82DFB60E42
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7DEC1BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:22:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FCE4841DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FCE4841DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3Dx_MMNwfBs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 12:22:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92923841D9
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 92923841D9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:22:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337220236"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="337220236"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710348658"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="710348658"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga002.jf.intel.com with ESMTP; 09 Jun 2023 05:21:59 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri,  9 Jun 2023 14:18:49 +0200
Message-Id: <20230609121853.3607724-7-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686313332; x=1717849332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zhbjko0NgU1oleUi+zxl4wXpj+Yil0aX0uPPaAmiadI=;
 b=ZJALnvrWNzklurCR4QQQ/VqR4nz8YnmqdQzoe+I9VojKO6wIRA6IIRh9
 X9aHYJsgY5S92Jye4LmShbqKtdyqzVseUs761bzxaWQc8Z2fuPWDBsJre
 XVbRTc1ZgYFlQ5slHtY76hdDKFcwb0APwE33nvxnvgj2SiPSXkTcq43kE
 qYSF8kMP6xJ/2q9CXkTlImH7eloASOSnKKbTunYVXaDWPdVquPV+eUpnz
 W3lEMeCzP5KnVpCi9X4UOJp7xnEUNoeo2BTDX0GppzvloAp60YvZa9kVX
 HDiWXLvDcKGTbHV6dtu6qD5HcqT6oEze+U3VFX6z8AUbNernrdQ+l9MBN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZJALnvrW
Subject: [Intel-wired-lan] [RFC PATCH v8 06/10] netdev: expose DPLL pin
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
 drivers/dpll/dpll_netlink.c  | 28 ++++++++++++++++++--------
 include/linux/dpll.h         | 20 +++++++++++++++++++
 include/linux/netdevice.h    | 10 ++++++++++
 include/uapi/linux/if_link.h |  2 ++
 net/core/dev.c               | 22 +++++++++++++++++++++
 net/core/rtnetlink.c         | 38 ++++++++++++++++++++++++++++++++++++
 6 files changed, 112 insertions(+), 8 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 44d9699c9e6c..e6efc17aaf26 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -214,10 +214,9 @@ dpll_msg_add_pin_parents(struct sk_buff *msg, struct dpll_pin *pin,
 		nest = nla_nest_start(msg, DPLL_A_PIN_PARENT);
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
@@ -274,8 +273,9 @@ dpll_cmd_pin_fill_details(struct sk_buff *msg, struct dpll_pin *pin,
 	const struct dpll_pin_properties *prop = pin->prop;
 	int ret;
 
-	if (nla_put_u32(msg, DPLL_A_PIN_ID, pin->id))
-		return -EMSGSIZE;
+	ret = dpll_msg_add_pin_handle(msg, pin);
+	if (ret)
+		return ret;
 	if (nla_put_string(msg, DPLL_A_MODULE_NAME, module_name(pin->module)))
 		return -EMSGSIZE;
 	if (nla_put_64bit(msg, DPLL_A_CLOCK_ID, sizeof(pin->clock_id),
@@ -301,6 +301,20 @@ dpll_cmd_pin_fill_details(struct sk_buff *msg, struct dpll_pin *pin,
 	return 0;
 }
 
+size_t dpll_msg_pin_handle_size(struct dpll_pin *pin)
+{
+	return nla_total_size(4); /* DPLL_A_PIN_ID */
+}
+EXPORT_SYMBOL_GPL(dpll_msg_pin_handle_size);
+
+int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
+{
+	if (nla_put_u32(msg, DPLL_A_PIN_ID, pin->id))
+		return -EMSGSIZE;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dpll_msg_add_pin_handle);
+
 static int
 __dpll_cmd_pin_dump_one(struct sk_buff *msg, struct dpll_pin *pin,
 			struct netlink_ext_ack *extack)
@@ -690,9 +704,7 @@ dpll_pin_find_from_nlattr(struct genl_info *info, struct sk_buff *skb)
 			    panel_label_attr, package_label_attr);
 	if (!pin)
 		return -EINVAL;
-	if (nla_put_u32(skb, DPLL_A_PIN_ID, pin->id))
-		return -EMSGSIZE;
-	return 0;
+	return dpll_msg_add_pin_handle(skb, pin);
 }
 
 int dpll_nl_pin_id_get_doit(struct sk_buff *skb, struct genl_info *info)
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
index 08fbd4622ccf..c57723b12f75 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -34,6 +34,7 @@
 #include <linux/rculist.h>
 #include <linux/workqueue.h>
 #include <linux/dynamic_queue_limits.h>
+#include <linux/dpll.h>
 
 #include <net/net_namespace.h>
 #ifdef CONFIG_DCB
@@ -2055,6 +2056,9 @@ enum netdev_ml_priv_type {
  *			SET_NETDEV_DEVLINK_PORT macro. This pointer is static
  *			during the time netdevice is registered.
  *
+ *	@dpll_pin: Pointer to the SyncE source pin of a DPLL subsystem,
+ *		   where the clock is recovered.
+ *
  *	FIXME: cleanup struct net_device such that network protocol info
  *	moves out.
  */
@@ -2411,6 +2415,10 @@ struct net_device {
 	struct rtnl_hw_stats64	*offload_xstats_l3;
 
 	struct devlink_port	*devlink_port;
+
+#if IS_ENABLED(CONFIG_DPLL)
+	struct dpll_pin		*dpll_pin;
+#endif
 };
 #define to_net_dev(d) container_of(d, struct net_device, dev)
 
@@ -3954,6 +3962,8 @@ int dev_get_mac_address(struct sockaddr *sa, struct net *net, char *dev_name);
 int dev_get_port_parent_id(struct net_device *dev,
 			   struct netdev_phys_item_id *ppid, bool recurse);
 bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b);
+void netdev_dpll_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin);
+void netdev_dpll_pin_clear(struct net_device *dev);
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
index 99d99b247bc9..7ae0ce75a5c7 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8993,6 +8993,28 @@ bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b)
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
index 41de3a2f29e1..ebe9ae8608fc 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -1052,6 +1052,16 @@ static size_t rtnl_devlink_port_size(const struct net_device *dev)
 	return size;
 }
 
+static size_t rtnl_dpll_pin_size(const struct net_device *dev)
+{
+	size_t size = nla_total_size(0); /* nest IFLA_DPLL_PIN */
+
+	if (dev->dpll_pin)
+		size += dpll_msg_pin_handle_size(dev->dpll_pin);
+
+	return size;
+}
+
 static noinline size_t if_nlmsg_size(const struct net_device *dev,
 				     u32 ext_filter_mask)
 {
@@ -1108,6 +1118,7 @@ static noinline size_t if_nlmsg_size(const struct net_device *dev,
 	       + rtnl_prop_list_size(dev)
 	       + nla_total_size(MAX_ADDR_LEN) /* IFLA_PERM_ADDRESS */
 	       + rtnl_devlink_port_size(dev)
+	       + rtnl_dpll_pin_size(dev)
 	       + 0;
 }
 
@@ -1769,6 +1780,30 @@ static int rtnl_fill_devlink_port(struct sk_buff *skb,
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
+	if (dev->dpll_pin) {
+		ret = dpll_msg_add_pin_handle(skb, dev->dpll_pin);
+		if (ret < 0)
+			goto nest_cancel;
+	}
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
@@ -1911,6 +1946,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
 	if (rtnl_fill_devlink_port(skb, dev))
 		goto nla_put_failure;
 
+	if (rtnl_fill_dpll_pin(skb, dev))
+		goto nla_put_failure;
+
 	nlmsg_end(skb, nlh);
 	return 0;
 
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
