Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3BDD3849E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AE6D610E9;
	Fri, 16 Jan 2026 18:46:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DsM8tpKN7gmo; Fri, 16 Jan 2026 18:46:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5BEA610E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768589217;
	bh=U0OhRLbKcl0fGc1eqpeFTWeu8BcihMm1H0wXcAahyII=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ty/5sXf5ZAxTXkdzfcqtFeIZ7DN2XJSu0528DB9kQbPJMMCUHH6r5RFy2FudpZU/m
	 V0N6m67Cex7XsAfgGNpfOpj77NFQqMUx7ZvyO0234+2YtUgyPsp+RTOyd2QH5rlso5
	 6ocHBgNm+txO7Bl9QTKKhxVBnMk6NIP42VTT5tANkm1uiP0kCLuA4QX37OVaTHkQ2Z
	 a8B0o2bDHonkGGLnOg4CXTexMdp5tLMJ63g5KSCJPIWfK5vFEF3lGV35LDG3bAwaKI
	 HCe5IFzI0jynAW3Py3+dcaFpX54WZCnbwk1Mx7sSZQB2nw7ysBKD/6a2ooEpVlV17H
	 ySxh1fADo2Wew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5BEA610E5;
	Fri, 16 Jan 2026 18:46:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AAEE160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BBC540275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eSp8qvGVXP6e for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:46:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3DCF140265
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DCF140265
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DCF140265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:55 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-257-gqLFMPjxPKqAT8GckunHQQ-1; Fri,
 16 Jan 2026 13:46:49 -0500
X-MC-Unique: gqLFMPjxPKqAT8GckunHQQ-1
X-Mimecast-MFC-AGG-ID: gqLFMPjxPKqAT8GckunHQQ_1768589206
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E3D211956095; Fri, 16 Jan 2026 18:46:45 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.71])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 040F819560A7; Fri, 16 Jan 2026 18:46:37 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 16 Jan 2026 19:46:01 +0100
Message-ID: <20260116184610.147591-4-ivecera@redhat.com>
In-Reply-To: <20260116184610.147591-1-ivecera@redhat.com>
References: <20260116184610.147591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768589214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=U0OhRLbKcl0fGc1eqpeFTWeu8BcihMm1H0wXcAahyII=;
 b=FROnHGFzAuTiR8GklJgsH+U2vBjhsrpzC6BUEEHoWgDY/WK/jyw2+YrsADfBJng5pyAodi
 RfIouZZFq9R3lM94GXxwZ3I98f/HTWBrj/P8OWc9ntDvfyRA+6rxQX4QxNQq6WmEDQqwPZ
 5bJSkNG9GDpbGKHXpfSCgz25ZiRbgvQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=FROnHGFz
Subject: [Intel-wired-lan] [PATCH net-next v2 03/12] dpll: Add helpers to
 find DPLL pin fwnode
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Saravana Kannan <saravanak@kernel.org>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

dpll: core: add helpers to find DPLL pin fwnode

Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
node handle based on the 'dpll-pins' and 'dpll-pin-names' properties.

Unlike simple phandle arrays, 'dpll-pins' entries typically contain
a pin specifier (index and direction) as defined by '#dpll-pin-cells'.
The new helper fwnode_dpll_pin_node_get() parses these specifiers
using fwnode_property_get_reference_args(). It resolves the target
pin by:
1. Identifying the DPLL device node from the phandle.
2. Selecting the correct sub-node ('input-pins' or 'output-pins') based
   on the direction argument.
3. Matching the pin index argument against the 'reg' property of
   the child nodes.

Additionally, register 'dpll-pins' in drivers/of/property.c to enable
proper parsing of the supplier bindings by the OF core.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
v2:
* added check for fwnode_property_match_string() return value
* reworked searching for the pin using dpll device phandle and
  pin specifier
* added dpll-pins into OF core supplier_bindings
---
 drivers/dpll/dpll_core.c | 74 ++++++++++++++++++++++++++++++++++++++++
 drivers/of/property.c    |  2 ++
 include/linux/dpll.h     | 15 ++++++++
 3 files changed, 91 insertions(+)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index fb68b5e19b480..b0083b5c10aa4 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -13,6 +13,7 @@
 #include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/string.h>
+#include <dt-bindings/dpll/dpll.h>
 
 #include "dpll_core.h"
 #include "dpll_netlink.h"
@@ -654,6 +655,79 @@ struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
 }
 EXPORT_SYMBOL_GPL(fwnode_dpll_pin_find);
 
+/**
+ * fwnode_dpll_pin_node_get - get dpll pin node from given fw node and pin name
+ * @fwnode: firmware node that uses the dpll pin
+ * @name: dpll pin name from dpll-pin-names property
+ *
+ * Return: ERR_PTR() on error or a valid firmware node handle on success.
+ */
+struct fwnode_handle *fwnode_dpll_pin_node_get(struct fwnode_handle *fwnode,
+					       const char *name)
+{
+	struct fwnode_handle *parent_node, *pin_node;
+	struct fwnode_reference_args args;
+	const char *parent_name;
+	int ret, index = 0;
+
+	if (name) {
+		index = fwnode_property_match_string(fwnode, "dpll-pin-names",
+						     name);
+		if (index < 0)
+			return ERR_PTR(-ENOENT);
+	}
+
+	ret = fwnode_property_get_reference_args(fwnode, "dpll-pins",
+						 "#dpll-pin-cells", 2, index,
+						 &args);
+	if (ret)
+		return ERR_PTR(ret);
+
+	/* We support only 2 cell DPLL bindings in the kernel currently. */
+	if (args.nargs != 2) {
+		fwnode_handle_put(args.fwnode);
+		return ERR_PTR(-ENOENT);
+	}
+
+	/* Resolve parent node name according pin direction type */
+	switch (args.args[1]) {
+	case DPLL_PIN_INPUT:
+		parent_name = "input-pins";
+		break;
+	case DPLL_PIN_OUTPUT:
+		parent_name = "output-pins";
+		break;
+	default:
+		fwnode_handle_put(args.fwnode);
+		return ERR_PTR(-EINVAL);
+	}
+
+	/* Get pin's parent sub-node */
+	parent_node = fwnode_get_named_child_node(args.fwnode, parent_name);
+	if (!parent_node) {
+		fwnode_handle_put(args.fwnode);
+		return ERR_PTR(-ENOENT);
+	}
+
+	/* Enumerate child pin nodes and find the requested one */
+	fwnode_for_each_child_node(parent_node, pin_node) {
+		u32 reg;
+
+		if (fwnode_property_read_u32(pin_node, "reg", &reg))
+			continue;
+
+		if (reg == args.args[0])
+			break;
+	}
+
+	/* Release pin's parent and dpll device node */
+	fwnode_handle_put(parent_node);
+	fwnode_handle_put(args.fwnode);
+
+	return pin_node ? pin_node : ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL_GPL(fwnode_dpll_pin_node_get);
+
 static int
 __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 		    const struct dpll_pin_ops *ops, void *priv, void *cookie)
diff --git a/drivers/of/property.c b/drivers/of/property.c
index 4e3524227720a..8571c8bb71ade 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1410,6 +1410,7 @@ DEFINE_SIMPLE_PROP(post_init_providers, "post-init-providers", NULL)
 DEFINE_SIMPLE_PROP(access_controllers, "access-controllers", "#access-controller-cells")
 DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
 DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
+DEFINE_SIMPLE_PROP(dpll_pins, "dpll-pins", "#dpll-pin-cells")
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1568,6 +1569,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 		.parse_prop = parse_post_init_providers,
 		.fwlink_flags = FWLINK_FLAG_IGNORE,
 	},
+	{ .parse_prop = parse_dpll_pins, },
 	{}
 };
 
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index f0c31a111c304..755c36d1ef45a 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -11,6 +11,7 @@
 #include <linux/device.h>
 #include <linux/netlink.h>
 #include <linux/netdevice.h>
+#include <linux/property.h>
 #include <linux/rtnetlink.h>
 
 struct dpll_device;
@@ -176,6 +177,8 @@ int dpll_netdev_add_pin_handle(struct sk_buff *msg,
 			       const struct net_device *dev);
 
 struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode);
+struct fwnode_handle *fwnode_dpll_pin_node_get(struct fwnode_handle *fwnode,
+					       const char *name);
 #else
 static inline void
 dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin) { }
@@ -197,8 +200,20 @@ fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
 {
 	return NULL;
 }
+
+static inline struct fwnode_handle *
+fwnode_dpll_pin_node_get(struct fwnode_handle *fwnode, const char *name)
+{
+	return NULL;
+}
 #endif
 
+static inline struct fwnode_handle *
+device_dpll_pin_node_get(struct device *dev, const char *name)
+{
+	return fwnode_dpll_pin_node_get(dev_fwnode(dev), name);
+}
+
 struct dpll_device *
 dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
 
-- 
2.52.0

