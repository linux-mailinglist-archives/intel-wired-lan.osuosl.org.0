Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA13A3C78D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 19:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EADA08059F;
	Wed, 19 Feb 2025 18:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gchTTQz9y98u; Wed, 19 Feb 2025 18:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2760F847EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739989589;
	bh=WZJikuHpqhZOJYKYb5pjOJjk4T9IH1+qomNOC4xETjY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xqi3xiSdClPVAaBKkUEaunQBMumOJqIgzzhoryH8tl2PeJi8PZrzMsaxuOyt9bEzK
	 cADMCfohd0o9lVLwV72OImHN3U3hyW2r45ucVgs1bbB7GA8TJVFzPHde/kT2UK7Zn7
	 H1nKX7jcwmnN1kDGhcWEyuGz/Kdgx6DsOIUWQAXhONNDr4Ji++TaiJ+3fP4BSLJ6iI
	 ZHPKerK5GEjMmVZPICCsStAqy5xQ/CVjb5PeWcCw10V6QIggbhTzri39MOlN1mpcWc
	 UaQz6wupS8vONYscEZnsSg1sZLHUVxFjKUEDaNEsMiFzSmpJFsBl8GXG0eIruO2Phi
	 0VHq41I4PKkiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2760F847EF;
	Wed, 19 Feb 2025 18:26:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 19CC9940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 54E0780AFB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:47:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RksMh33ev5q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 17:47:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 30A0F844D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30A0F844D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30A0F844D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:46:18 +0000 (UTC)
X-CSE-ConnectionGUID: P1fk/s5PSz+KU/68U6Lo7A==
X-CSE-MsgGUID: 1AEM0DhDTyKG4JaDG2VoKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="50953012"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="50953012"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 09:46:14 -0800
X-CSE-ConnectionGUID: bQm2QqyNSUiunKFvJuH9ZQ==
X-CSE-MsgGUID: VIGPr0GVSWuUJ9IY1w87TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119427316"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2025 08:44:32 -0800
Received: from pkitszel-desk.intel.com (unknown [10.245.246.109])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 4F7EC34301;
 Wed, 19 Feb 2025 16:44:19 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>,
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 19 Feb 2025 17:32:54 +0100
Message-ID: <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739987178; x=1771523178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0mV9d9F4bC7WQnGYcrOFt0VFmgb9KQ5yKqZlvACNA8=;
 b=TwkYkZG/ppyBqGV3taEP9ggevpsrvSSMVZxn1ujq4r/wgI3JwbzEHDPy
 CTAcuT0X5TRZMilRTbWG7VTW/nbpsvvQWZW3UZ8VdCyVjflx5rgRxKIpN
 R7nTEOqHkGvqAKjCmrzwUtrGMFU3HPrBIX0Yzu8UaWcfIbL++UDrm1tCM
 JNNEE6o4T0ZFwXZdsujnSvzpSw7IlIIMXFAjLLmq6kI2CH/FneaviFYGN
 6xJSLXoCIG4j4RIsK3DCVF4NuUkw+FMKlW8AdPQuP308cxwFjWt1u9lIf
 4OglwmAwp9M3GY8uN+E8BTz65Mn0oa6v7z3gvd/09eJ+xIagXRMEkT/m2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TwkYkZG/
Subject: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole device
 devlink instance
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a support for whole device devlink instance. Intented as a entity
over all PF devices on given physical device.

In case of ice driver we have multiple PF devices (with their devlink
dev representation), that have separate drivers loaded. However those
still do share lots of resources due to being the on same HW. Examples
include PTP clock and RSS LUT. Historically such stuff was assigned to
PF0, but that was both not clear and not working well. Now such stuff
is moved to be covered into struct ice_adapter, there is just one instance
of such per HW.

This patch adds a devlink instance that corresponds to that ice_adapter,
to allow arbitrage over resources (as RSS LUT) via it (further in the
series (RFC NOTE: stripped out so far)).

Thanks to Wojciech Drewek for very nice naming of the devlink instance:
PF0:		pci/0000:00:18.0
whole-dev:	pci/0000:00:18
But I made this a param for now (driver is free to pass just "whole-dev").

$ devlink dev # (Interesting part of output only)
pci/0000:af:00:
  nested_devlink:
    pci/0000:af:00.0
    pci/0000:af:00.1
    pci/0000:af:00.2
    pci/0000:af:00.3
    pci/0000:af:00.4
    pci/0000:af:00.5
    pci/0000:af:00.6
    pci/0000:af:00.7

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 net/devlink/devl_internal.h | 14 +++++----
 net/devlink/core.c          | 58 +++++++++++++++++++++++++++++--------
 net/devlink/netlink.c       |  4 +--
 net/devlink/port.c          |  4 +--
 4 files changed, 58 insertions(+), 22 deletions(-)

diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
index 14eaad9cfe35..073afe02ce2f 100644
--- a/net/devlink/devl_internal.h
+++ b/net/devlink/devl_internal.h
@@ -49,6 +49,8 @@ struct devlink {
 	struct xarray snapshot_ids;
 	struct devlink_dev_stats stats;
 	struct device *dev;
+	const char *dev_name;
+	const char *bus_name;
 	possible_net_t _net;
 	/* Serializes access to devlink instance specific objects such as
 	 * port, sb, dpipe, resource, params, region, traps and more.
@@ -104,15 +106,15 @@ static inline bool devl_is_registered(struct devlink *devlink)
 
 static inline void devl_dev_lock(struct devlink *devlink, bool dev_lock)
 {
-	if (dev_lock)
+	if (dev_lock && devlink->dev)
 		device_lock(devlink->dev);
 	devl_lock(devlink);
 }
 
 static inline void devl_dev_unlock(struct devlink *devlink, bool dev_lock)
 {
 	devl_unlock(devlink);
-	if (dev_lock)
+	if (dev_lock && devlink->dev)
 		device_unlock(devlink->dev);
 }
 
@@ -174,9 +176,9 @@ devlink_dump_state(struct netlink_callback *cb)
 static inline int
 devlink_nl_put_handle(struct sk_buff *msg, struct devlink *devlink)
 {
-	if (nla_put_string(msg, DEVLINK_ATTR_BUS_NAME, devlink->dev->bus->name))
+	if (nla_put_string(msg, DEVLINK_ATTR_BUS_NAME, devlink->bus_name))
 		return -EMSGSIZE;
-	if (nla_put_string(msg, DEVLINK_ATTR_DEV_NAME, dev_name(devlink->dev)))
+	if (nla_put_string(msg, DEVLINK_ATTR_DEV_NAME, devlink->dev_name))
 		return -EMSGSIZE;
 	return 0;
 }
@@ -209,8 +211,8 @@ static inline void devlink_nl_obj_desc_init(struct devlink_obj_desc *desc,
 					    struct devlink *devlink)
 {
 	memset(desc, 0, sizeof(*desc));
-	desc->bus_name = devlink->dev->bus->name;
-	desc->dev_name = dev_name(devlink->dev);
+	desc->bus_name = devlink->bus_name;
+	desc->dev_name = devlink->dev_name;
 }
 
 static inline void devlink_nl_obj_desc_port_set(struct devlink_obj_desc *desc,
diff --git a/net/devlink/core.c b/net/devlink/core.c
index f49cd83f1955..f4960074b845 100644
--- a/net/devlink/core.c
+++ b/net/devlink/core.c
@@ -397,26 +397,25 @@ void devlink_unregister(struct devlink *devlink)
 EXPORT_SYMBOL_GPL(devlink_unregister);
 
 /**
- *	devlink_alloc_ns - Allocate new devlink instance resources
- *	in specific namespace
+ *	devlink_alloc_wrapper - Allocate a new devlink instance resources
+ *	for a SW wrapper over multiple HW devlink instances
  *
  *	@ops: ops
  *	@priv_size: size of user private data
- *	@net: net namespace
- *	@dev: parent device
+ *	@bus_name: user visible bus name
+ *	@dev_name: user visible device name
  *
- *	Allocate new devlink instance resources, including devlink index
- *	and name.
+ *	Allocate new devlink instance resources, including devlink index.
  */
-struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
-				 size_t priv_size, struct net *net,
-				 struct device *dev)
+struct devlink *devlink_alloc_wrapper(const struct devlink_ops *ops,
+				      size_t priv_size, const char *bus_name,
+				      const char *dev_name)
 {
 	struct devlink *devlink;
 	static u32 last_id;
 	int ret;
 
-	WARN_ON(!ops || !dev);
+	WARN_ON(!ops);
 	if (!devlink_reload_actions_valid(ops))
 		return NULL;
 
@@ -429,13 +428,14 @@ struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
 	if (ret < 0)
 		goto err_xa_alloc;
 
-	devlink->dev = get_device(dev);
 	devlink->ops = ops;
+	devlink->bus_name = bus_name;
+	devlink->dev_name = dev_name;
 	xa_init_flags(&devlink->ports, XA_FLAGS_ALLOC);
 	xa_init_flags(&devlink->params, XA_FLAGS_ALLOC);
 	xa_init_flags(&devlink->snapshot_ids, XA_FLAGS_ALLOC);
 	xa_init_flags(&devlink->nested_rels, XA_FLAGS_ALLOC);
-	write_pnet(&devlink->_net, net);
+	write_pnet(&devlink->_net, &init_net);
 	INIT_LIST_HEAD(&devlink->rate_list);
 	INIT_LIST_HEAD(&devlink->linecard_list);
 	INIT_LIST_HEAD(&devlink->sb_list);
@@ -458,6 +458,40 @@ struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
 	kvfree(devlink);
 	return NULL;
 }
+EXPORT_SYMBOL_GPL(devlink_alloc_wrapper);
+
+/**
+ *	devlink_alloc_ns - Allocate new devlink instance resources
+ *	in specific namespace
+ *
+ *	@ops: ops
+ *	@priv_size: size of user private data
+ *	@net: net namespace
+ *	@dev: parent device
+ *
+ *	Allocate new devlink instance resources, including devlink index
+ *	and name.
+ */
+struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
+				 size_t priv_size, struct net *net,
+				 struct device *dev)
+{
+	struct devlink *devlink;
+
+	if (WARN_ON(!dev))
+		return NULL;
+
+	dev = get_device(dev);
+	devlink = devlink_alloc_wrapper(ops, priv_size, dev->bus->name,
+					dev_name(dev));
+	if (!devlink) {
+		put_device(dev);
+		return NULL;
+	}
+	devlink->dev = dev;
+	write_pnet(&devlink->_net, net);
+	return devlink;
+}
 EXPORT_SYMBOL_GPL(devlink_alloc_ns);
 
 /**
diff --git a/net/devlink/netlink.c b/net/devlink/netlink.c
index 593605c1b1ef..3f73ced2d879 100644
--- a/net/devlink/netlink.c
+++ b/net/devlink/netlink.c
@@ -193,8 +193,8 @@ devlink_get_from_attrs_lock(struct net *net, struct nlattr **attrs,
 	devname = nla_data(attrs[DEVLINK_ATTR_DEV_NAME]);
 
 	devlinks_xa_for_each_registered_get(net, index, devlink) {
-		if (strcmp(devlink->dev->bus->name, busname) == 0 &&
-		    strcmp(dev_name(devlink->dev), devname) == 0) {
+		if (strcmp(devlink->bus_name, busname) == 0 &&
+		    strcmp(devlink->dev_name, devname) == 0) {
 			devl_dev_lock(devlink, dev_lock);
 			if (devl_is_registered(devlink))
 				return devlink;
diff --git a/net/devlink/port.c b/net/devlink/port.c
index 939081a0e615..508ecf34d41a 100644
--- a/net/devlink/port.c
+++ b/net/devlink/port.c
@@ -220,8 +220,8 @@ size_t devlink_nl_port_handle_size(struct devlink_port *devlink_port)
 {
 	struct devlink *devlink = devlink_port->devlink;
 
-	return nla_total_size(strlen(devlink->dev->bus->name) + 1) /* DEVLINK_ATTR_BUS_NAME */
-	     + nla_total_size(strlen(dev_name(devlink->dev)) + 1) /* DEVLINK_ATTR_DEV_NAME */
+	return nla_total_size(strlen(devlink->bus_name) + 1) /* DEVLINK_ATTR_BUS_NAME */
+	     + nla_total_size(strlen(devlink->dev_name) + 1) /* DEVLINK_ATTR_DEV_NAME */
 	     + nla_total_size(4); /* DEVLINK_ATTR_PORT_INDEX */
 }
 
-- 
2.46.0

