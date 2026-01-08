Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC55D0579D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 19:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03B5860DE8;
	Thu,  8 Jan 2026 18:24:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BKGhv_Cw5ZM; Thu,  8 Jan 2026 18:24:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67FB760DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767896643;
	bh=Fjnh3sw7EA2ytiRCBrNn8oycRpIfYmZ8yq78Z8T1zEk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BTn/c7mkiRi0PNC/rBUfaFAe6k4r2AmT3jEYiOuPNEA73ZyAyDNceOmJyeecNMLBy
	 jJp6AoO51XDzVdC869FsB+gzuCNadXamtbx5+UaE7NSF7l5GrGaY8S5SAYE6qzTflR
	 P+ouqG1cjAi2BV3HdbtYYsDS65VqQPjXOCz/x9v5Rw1coOPmpc4xZnWVBHPOf9EfTW
	 BRLGEkDtfr11DxxJzZgya3dXHO/KYxn5zfsJypdaRnKqdJOOC070EhpjHmLq3fHd3c
	 mC1cjS24qmGOPAktTLJoN3xIhRQNRmFyNP//szWsmjbxwk/Y6J9ES1+4eEgvx/4p5/
	 537tO5sVLEwnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67FB760DF4;
	Thu,  8 Jan 2026 18:24:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60996308
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5ECB940944
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fE2oT79ySh7t for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 18:24:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51E5740926
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51E5740926
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51E5740926
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:00 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-530-RZTwi0dTOTiE_d4K2pGnWg-1; Thu,
 08 Jan 2026 13:23:55 -0500
X-MC-Unique: RZTwi0dTOTiE_d4K2pGnWg-1
X-Mimecast-MFC-AGG-ID: RZTwi0dTOTiE_d4K2pGnWg_1767896632
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B4A5B1956088; Thu,  8 Jan 2026 18:23:51 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.20])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 63B5F180009E; Thu,  8 Jan 2026 18:23:44 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Jan 2026 19:23:09 +0100
Message-ID: <20260108182318.20935-4-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-1-ivecera@redhat.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767896639;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Fjnh3sw7EA2ytiRCBrNn8oycRpIfYmZ8yq78Z8T1zEk=;
 b=GLhqjZeZKnpbR6gGe59y7rRiHG6zCsh7sUd2hvv3GevG+x9Y6XEGRjD3b/nuMkOCSi4qXm
 Nrw/eEpNQxxqLgjvb/kUYqONWWq3uRqpd+QhMGhrZuxznP23mewqZUZhHefShPUFpXURHx
 U5GcKigupc5fHanvqD8uJIt3THG4D24=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GLhqjZeZ
Subject: [Intel-wired-lan] [PATCH net-next 03/12] dpll: Add helpers to find
 DPLL pin fwnode
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
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
node handle based on the "dpll-pins" and "dpll-pin-names" properties.

* `fwnode_dpll_pin_node_get()`: matches the given name against the
  "dpll-pin-names" property to find the correct index, then retrieves
  the reference from "dpll-pins".
* `device_dpll_pin_node_get()`: a wrapper around the fwnode helper for
  convenience when using a `struct device`.

These helpers simplify the process for consumer drivers (such as Ethernet
controllers or PHYs) to look up their associated DPLL pins defined in
the DT or ACPI, which can then be passed to the DPLL subsystem to acquire
the pin object.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_core.c | 20 ++++++++++++++++++++
 include/linux/dpll.h     | 15 +++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index fb68b5e19b480..23d04a9d022d7 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -654,6 +654,26 @@ struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
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
+	int index = 0;
+
+	if (name)
+		index = fwnode_property_match_string(fwnode, "dpll-pin-names",
+						     name);
+
+	return fwnode_find_reference(fwnode, "dpll-pins", index);
+}
+EXPORT_SYMBOL_GPL(fwnode_dpll_pin_node_get);
+
 static int
 __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 		    const struct dpll_pin_ops *ops, void *priv, void *cookie)
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

