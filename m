Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E48ECBFC18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 21:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEF3B402A8;
	Mon, 15 Dec 2025 20:31:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUw_QHV-8txY; Mon, 15 Dec 2025 20:31:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AD15402A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765830681;
	bh=1VDL4tWamw8ZGq2ZYOkQLmIc6Os+QBORDuebNGixLk8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FTDlFuxhNkhKTY1PyG/GJKnFA1HBNPskmGUShNI2tsjEc87uO8zDTz0n9rEUYZaY2
	 V+9HswIfWaBSmzngVTfebCmwKk2MCbfLTXc7SAVf6rPCvuOfCw/o7t/pTs7oDBK9SD
	 B0Lzzdh/xmCrDwTizFx68nLThKa2twbO/Mq7UldE5c3qLp1Vt6Bi2Zj+HpDzsZUyC1
	 IfiiSN0z/LRzUA2DFjoR7M+Da7E4N1I+qnK3eIxzGMgMa0LOe/JlnuTVoNZhOMT1RV
	 JCneFWnC+cD+fGsTP3i0vWWlqK9gTe6/I2zSzpAvSKghNoXgsS15ngr9yEJfcdA8/9
	 xmfbCgoFcyeRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AD15402A9;
	Mon, 15 Dec 2025 20:31:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C957255
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31BB540492
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X_NDB4r7vTBr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 20:31:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 157FD408A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 157FD408A5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 157FD408A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 20:31:17 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-263-_1vBn9O9McqvPjsAJUPRtw-1; Mon,
 15 Dec 2025 15:31:14 -0500
X-MC-Unique: _1vBn9O9McqvPjsAJUPRtw-1
X-Mimecast-MFC-AGG-ID: _1vBn9O9McqvPjsAJUPRtw_1765830670
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 400BA195FCE3; Mon, 15 Dec 2025 20:31:10 +0000 (UTC)
Received: from p16v.redhat.com (unknown [10.45.224.214])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 7251F30001B9; Mon, 15 Dec 2025 20:31:00 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Mon, 15 Dec 2025 21:30:27 +0100
Message-ID: <20251215203037.1324945-3-ivecera@redhat.com>
In-Reply-To: <20251215203037.1324945-1-ivecera@redhat.com>
References: <20251215203037.1324945-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765830677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1VDL4tWamw8ZGq2ZYOkQLmIc6Os+QBORDuebNGixLk8=;
 b=Grfx6TP2AkaSgltBHWQ2PEYnO64J95+g+U/EN2ZGjxLB1Uu1n7CttFtY9M63Xpn3dOf3iX
 3xacqgKnTv5ATMyrZIFG2h4Im5/dGE6q88pGVgNo6Dl4VFDtzCSu2ztVAHjDLqnP180Ko8
 7zv0Ch4x9JisNGz0Wa/Aym8WlUg87Qs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Grfx6TP2
Subject: [Intel-wired-lan] [PATCH RFC net-next v2 02/12] dpll: Allow
 associating dpll pin with a firmware node
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
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extend the DPLL core to support associating a DPLL pin with a firmware
node. This association is required to allow other subsystems (such as
network drivers) to locate and request specific DPLL pins defined in
the Device Tree or ACPI.

* Add a .fwnode field to the struct dpll_pin
* Introduce dpll_pin_fwnode_set() helper to allow the provider driver
  to associate a pin with a fwnode after the pin has been allocated
* Introduce fwnode_dpll_pin_find() helper to allow consumers to search
  for a registered DPLL pin using its associated fwnode handle
* Ensure the fwnode reference is properly released in dpll_pin_put()

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
Changes:
RFC v2:
- dpll_pin_fwnode_set() helper to set firmware node without touching
  dpll_pin_get()
---
 drivers/dpll/dpll_core.c | 49 ++++++++++++++++++++++++++++++++++++++++
 drivers/dpll/dpll_core.h |  2 ++
 include/linux/dpll.h     | 11 +++++++++
 3 files changed, 62 insertions(+)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index a461095efd8ac..fb68b5e19b480 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -10,6 +10,7 @@
 
 #include <linux/device.h>
 #include <linux/err.h>
+#include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/string.h>
 
@@ -599,12 +600,60 @@ void dpll_pin_put(struct dpll_pin *pin)
 		xa_destroy(&pin->parent_refs);
 		xa_destroy(&pin->ref_sync_pins);
 		dpll_pin_prop_free(&pin->prop);
+		fwnode_handle_put(pin->fwnode);
 		kfree_rcu(pin, rcu);
 	}
 	mutex_unlock(&dpll_lock);
 }
 EXPORT_SYMBOL_GPL(dpll_pin_put);
 
+/**
+ * dpll_pin_fwnode_set - set dpll pin firmware node reference
+ * @pin: pointer to a dpll pin
+ * @fwnode: firmware node handle
+ *
+ * Set firmware node handle for the given dpll pin.
+ */
+void dpll_pin_fwnode_set(struct dpll_pin *pin, struct fwnode_handle *fwnode)
+{
+	mutex_lock(&dpll_lock);
+	fwnode_handle_put(pin->fwnode); /* Drop fwnode previously set */
+	pin->fwnode = fwnode_handle_get(fwnode);
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_pin_fwnode_set);
+
+/**
+ * fwnode_dpll_pin_find - find dpll pin by firmware node reference
+ * @fwnode: reference to firmware node
+ *
+ * Get existing object of a pin that is associated with given firmware node
+ * reference.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * valid dpll_pin struct pointer if succeeded
+ * * ERR_PTR(X) - error
+ */
+struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
+{
+	struct dpll_pin *pin, *ret = NULL;
+	unsigned long index;
+
+	mutex_lock(&dpll_lock);
+	xa_for_each(&dpll_pin_xa, index, pin) {
+		if (pin->fwnode == fwnode) {
+			ret = pin;
+			refcount_inc(&ret->refcount);
+			break;
+		}
+	}
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(fwnode_dpll_pin_find);
+
 static int
 __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 		    const struct dpll_pin_ops *ops, void *priv, void *cookie)
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index 8ce969bbeb64e..d3e17ff0ecef0 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -42,6 +42,7 @@ struct dpll_device {
  * @pin_idx:		index of a pin given by dev driver
  * @clock_id:		clock_id of creator
  * @module:		module of creator
+ * @fwnode:		optional reference to firmware node
  * @dpll_refs:		hold referencees to dplls pin was registered with
  * @parent_refs:	hold references to parent pins pin was registered with
  * @ref_sync_pins:	hold references to pins for Reference SYNC feature
@@ -54,6 +55,7 @@ struct dpll_pin {
 	u32 pin_idx;
 	u64 clock_id;
 	struct module *module;
+	struct fwnode_handle *fwnode;
 	struct xarray dpll_refs;
 	struct xarray parent_refs;
 	struct xarray ref_sync_pins;
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 562f520b23c27..f0c31a111c304 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -16,6 +16,7 @@
 struct dpll_device;
 struct dpll_pin;
 struct dpll_pin_esync;
+struct fwnode_handle;
 
 struct dpll_device_ops {
 	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
@@ -173,6 +174,8 @@ void dpll_netdev_pin_clear(struct net_device *dev);
 size_t dpll_netdev_pin_handle_size(const struct net_device *dev);
 int dpll_netdev_add_pin_handle(struct sk_buff *msg,
 			       const struct net_device *dev);
+
+struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode);
 #else
 static inline void
 dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin) { }
@@ -188,6 +191,12 @@ dpll_netdev_add_pin_handle(struct sk_buff *msg, const struct net_device *dev)
 {
 	return 0;
 }
+
+static inline struct dpll_pin *
+fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
+{
+	return NULL;
+}
 #endif
 
 struct dpll_device *
@@ -213,6 +222,8 @@ void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 
 void dpll_pin_put(struct dpll_pin *pin);
 
+void dpll_pin_fwnode_set(struct dpll_pin *pin, struct fwnode_handle *fwnode);
+
 int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 			     const struct dpll_pin_ops *ops, void *priv);
 
-- 
2.51.2

