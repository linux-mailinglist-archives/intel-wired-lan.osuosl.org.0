Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B337708BE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 21:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F22BA40600;
	Fri,  4 Aug 2023 19:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F22BA40600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691176465;
	bh=GZQF5cRge1g3wJ2d9KmPHUHU0RCFSC6ymXihmCvF0SM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qCORq57bh9Zc7SZPBqUd5sbeu7pienI8aeqGD+kq7QaMwSEWcaaDSBje0A5OZuQ25
	 QGfUIZca7GBYelB+3fAREPCb26BMwL7Oz2OI3+bFFAWg8cj/KVFWrc2ak4m4JfBFQv
	 /I5bRlliaxIvho1eOoo4WQol14gHMNgIR4Ek77bY8Dv9CTK4xvhocKrQqEROaM4U6Y
	 KEN/R6dU4lnnmoCcOzKaVRcFIVdb23qCOkciQiFnDOBB2Nn/iVSCbqM3m7xNvS29cq
	 zLL6zjQJ7+ICJz05RkpvEjgTHdiIxkSgcVRrygwcsPY76zrZtdGjx7TwAG2mV+SKk9
	 xPCcn0bc6dU0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NmyE_lIP_2VS; Fri,  4 Aug 2023 19:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 745C9405F6;
	Fri,  4 Aug 2023 19:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 745C9405F6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D1691BF30A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 19:14:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13623821DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 19:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13623821DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrKoG_8LKLdr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 19:12:47 +0000 (UTC)
Received: from out-66.mta0.migadu.com (out-66.mta0.migadu.com [91.218.175.66])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B0DF28404F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 19:12:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0DF28404F
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Fri,  4 Aug 2023 20:04:50 +0100
Message-Id: <20230804190454.394062-6-vadim.fedorenko@linux.dev>
In-Reply-To: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
References: <20230804190454.394062-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1691175913;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dXWdi8Q6cFpXTkXR2mTggFWoWTqFGcWmCR8F0DZYGv8=;
 b=BMOR2RfZ1rd55ZrTPk3In0uJF43t/HECxpwptj4jAhnA2hIrRd4Ii/2KLNitgU17u3hNmR
 gNl2QMTzuwpqAsFBfoytSSDOgyAACdYjn+lA0I9Nl0uudic7hYUN4Z8y7BUMUaHxEne+W5
 SJPOFgpKmvh0VcGZ0Ka9e9tpPet8fiI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=BMOR2RfZ
Subject: [Intel-wired-lan] [PATCH net-next v2 5/9] netdev: expose DPLL pin
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
v1->v2:
- fix checkpatch errors

 drivers/dpll/dpll_netlink.c  | 22 +++++++++++++++++-----
 include/linux/dpll.h         | 20 ++++++++++++++++++++
 include/linux/netdevice.h    | 20 ++++++++++++++++++++
 include/uapi/linux/if_link.h |  2 ++
 net/core/dev.c               | 22 ++++++++++++++++++++++
 net/core/rtnetlink.c         | 35 +++++++++++++++++++++++++++++++++++
 6 files changed, 116 insertions(+), 5 deletions(-)

diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 1adaabf7ff3d..3e7ad5e37188 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -38,6 +38,18 @@ dpll_msg_add_dev_handle(struct sk_buff *msg, struct dpll_device *dpll)
 	return 0;
 }
 
+/**
+ * dpll_msg_pin_handle_size - get size of pin handle attribute for given pin
+ * @pin: pin pointer
+ *
+ * Return: byte size of pin handle attribute for given pin.
+ */
+size_t dpll_msg_pin_handle_size(struct dpll_pin *pin)
+{
+	return pin ? nla_total_size(4) : 0; /* DPLL_A_PIN_ID */
+}
+EXPORT_SYMBOL_GPL(dpll_msg_pin_handle_size);
+
 /**
  * dpll_msg_add_pin_handle - attach pin handle attribute to a given message
  * @msg: pointer to sk_buff message to attach a pin handle
@@ -47,8 +59,7 @@ dpll_msg_add_dev_handle(struct sk_buff *msg, struct dpll_device *dpll)
  * * 0 - success
  * * -EMSGSIZE - no space in message to attach pin handle
  */
-static int
-dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
+int dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
 {
 	if (!pin)
 		return 0;
@@ -56,6 +67,7 @@ dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
 		return -EMSGSIZE;
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dpll_msg_add_pin_handle);
 
 static int
 dpll_msg_add_mode(struct sk_buff *msg, struct dpll_device *dpll,
@@ -268,10 +280,9 @@ dpll_msg_add_pin_parents(struct sk_buff *msg, struct dpll_pin *pin,
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
@@ -331,6 +342,7 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
 
 	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
 	ASSERT_NOT_NULL(ref);
+
 	ret = dpll_msg_add_pin_handle(msg, pin);
 	if (ret)
 		return ret;
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 3b9b70254a37..8e8b681fb57f 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -101,6 +101,26 @@ struct dpll_pin_properties {
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
index 0896aaa91dd7..36a872774173 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -34,6 +34,7 @@
 #include <linux/rculist.h>
 #include <linux/workqueue.h>
 #include <linux/dynamic_queue_limits.h>
+#include <linux/dpll.h>
 
 #include <net/net_namespace.h>
 #ifdef CONFIG_DCB
@@ -2049,6 +2050,9 @@ enum netdev_ml_priv_type {
  *			SET_NETDEV_DEVLINK_PORT macro. This pointer is static
  *			during the time netdevice is registered.
  *
+ *	@dpll_pin: Pointer to the SyncE source pin of a DPLL subsystem,
+ *		   where the clock is recovered.
+ *
  *	FIXME: cleanup struct net_device such that network protocol info
  *	moves out.
  */
@@ -2405,6 +2409,10 @@ struct net_device {
 	struct rtnl_hw_stats64	*offload_xstats_l3;
 
 	struct devlink_port	*devlink_port;
+
+#if IS_ENABLED(CONFIG_DPLL)
+	struct dpll_pin		*dpll_pin;
+#endif
 };
 #define to_net_dev(d) container_of(d, struct net_device, dev)
 
@@ -3940,6 +3948,18 @@ int dev_get_mac_address(struct sockaddr *sa, struct net *net, char *dev_name);
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
index ce3117df9cec..2e7df321f345 100644
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
index 636b41f0b32d..1da88522eb17 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -9020,6 +9020,28 @@ bool netdev_port_same_parent_id(struct net_device *a, struct net_device *b)
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
index 6d2180b8edb3..ace8d23e5ee7 100644
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
 
@@ -1774,6 +1784,28 @@ static int rtnl_fill_devlink_port(struct sk_buff *skb,
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
@@ -1916,6 +1948,9 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb,
 	if (rtnl_fill_devlink_port(skb, dev))
 		goto nla_put_failure;
 
+	if (rtnl_fill_dpll_pin(skb, dev))
+		goto nla_put_failure;
+
 	nlmsg_end(skb, nlh);
 	return 0;
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
