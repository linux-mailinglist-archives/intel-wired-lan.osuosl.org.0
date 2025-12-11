Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E1FCB70C9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 20:49:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 957C1403FC;
	Thu, 11 Dec 2025 19:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mvCehR3UtKxi; Thu, 11 Dec 2025 19:49:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F0D740517
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765482554;
	bh=vyUUGRUOAsMkaRvqpH8BNn5yJtvsCiWtON9ViDOlDjU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4yosGvEXFNYJciZAPI9iCt3FaYoX+kgsRbyeOHcjJRzrFaikDfWQpS5/QyBi1eaYA
	 qchurk1s8OVm4McPhhAWuPa7OUZT8FFVjtPspuD7xPdaFcYFD+tYbeSB2W7viiG3wV
	 ClEXO/7+QnbnJMKQWbA+s81K0NyboLUQXXQel999LdwuX1R1CyUJGYyCCrbHzXvSMP
	 OAXtgMeb5Cax9RJRylcjP0zeDze3uTnPSu7iHICLvtbVWPDSRnXYZJxoOP2/f3pkMU
	 QbzRJ4rU91e0WdWYDy88c0jB3mv8DMtvOXetrdK8MhORTw5Vq+d9mM4bJnDvrIivOn
	 TWnmgyrO1M9fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F0D740517;
	Thu, 11 Dec 2025 19:49:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E7D2B2C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA60140346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:49:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sobBKBlKyx01 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 19:49:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C7A5140338
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7A5140338
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7A5140338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:49:11 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-175-65_Ey0jrMUyMqLreB3W5Aw-1; Thu,
 11 Dec 2025 14:49:05 -0500
X-MC-Unique: 65_Ey0jrMUyMqLreB3W5Aw-1
X-Mimecast-MFC-AGG-ID: 65_Ey0jrMUyMqLreB3W5Aw_1765482541
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5FCA11956088; Thu, 11 Dec 2025 19:49:01 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.252])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id E874C1956056; Thu, 11 Dec 2025 19:48:52 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Oros <poros@redhat.com>, Michal Schmidt <mschmidt@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Date: Thu, 11 Dec 2025 20:47:49 +0100
Message-ID: <20251211194756.234043-7-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-1-ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765482550;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vyUUGRUOAsMkaRvqpH8BNn5yJtvsCiWtON9ViDOlDjU=;
 b=MnO8DJC+boP9kxe1VHs6cwKrzW2Jz2e7Ua23xMBjVAvX33nHL5X83Gj9UA7xms1iH/8lrc
 l0bOuy9/ZdtiyD462C64MQy3Qt+zC1Wv+v9TuNL3mHrNtYB6jc14agnI7H4jbKK4egiaZ0
 bWtD3DdmTgRLYKzHuXgDU+xWpy6xoTw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=MnO8DJC+
Subject: [Intel-wired-lan] [PATCH RFC net-next 06/13] dpll: Support dynamic
 pin index allocation
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

Allow drivers to register DPLL pins without manually specifying a pin
index.

Currently, drivers must provide a unique pin index when calling
dpll_pin_get(). This works well for hardware-mapped pins but creates
friction for drivers handling virtual pins or those without a strict
hardware indexing scheme.

Introduce DPLL_PIN_IDX_UNSPEC (U32_MAX). When a driver passes this
value as the pin index:
1. The core allocates a unique index using an IDA
2. The allocated index is mapped to a range starting above `INT_MAX`

This separation ensures that dynamically allocated indices never collide
with standard driver-provided hardware indices, which are assumed to be
within the `0` to `INT_MAX` range. The index is automatically freed when
the pin is released in dpll_pin_put().

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_core.c | 48 ++++++++++++++++++++++++++++++++++++++--
 include/linux/dpll.h     |  2 ++
 2 files changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index fecc3d97acf5b..79f60e0de27ac 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -10,6 +10,7 @@
 
 #include <linux/device.h>
 #include <linux/err.h>
+#include <linux/idr.h>
 #include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -24,6 +25,7 @@ DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
 DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
 
 static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
+static DEFINE_IDA(dpll_pin_idx_ida);
 
 static u32 dpll_device_xa_id;
 static u32 dpll_pin_xa_id;
@@ -468,6 +470,36 @@ void dpll_device_unregister(struct dpll_device *dpll,
 }
 EXPORT_SYMBOL_GPL(dpll_device_unregister);
 
+static int dpll_pin_idx_alloc(u32 *pin_idx)
+{
+	int ret;
+
+	if (!pin_idx)
+		return -EINVAL;
+
+	/* Alloc unique number from IDA. Number belongs to <0, INT_MAX> range */
+	ret = ida_alloc(&dpll_pin_idx_ida, GFP_KERNEL);
+	if (ret < 0)
+		return ret;
+
+	/* Map the value to dynamic pin index range <INT_MAX+1, U32_MAX> */
+	*pin_idx = (u32)ret + INT_MAX + 1;
+
+	return 0;
+}
+
+static void dpll_pin_idx_free(u32 pin_idx)
+{
+	if (pin_idx <= INT_MAX)
+		return; /* Not a dynamic pin index */
+
+	/* Map the index value from dynamic pin index range to IDA range and
+	 * free it.
+	 */
+	pin_idx -= INT_MAX - 1;
+	ida_free(&dpll_pin_idx_ida, pin_idx);
+}
+
 static void dpll_pin_prop_free(struct dpll_pin_properties *prop)
 {
 	kfree(prop->package_label);
@@ -526,9 +558,18 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
 	struct dpll_pin *pin;
 	int ret;
 
+	if (pin_idx == DPLL_PIN_IDX_UNSPEC) {
+		ret = dpll_pin_idx_alloc(&pin_idx);
+		if (ret)
+			return ERR_PTR(ret);
+	} else if (pin_idx > INT_MAX) {
+		return ERR_PTR(-EINVAL);
+	}
 	pin = kzalloc(sizeof(*pin), GFP_KERNEL);
-	if (!pin)
-		return ERR_PTR(-ENOMEM);
+	if (!pin) {
+		ret = -ENOMEM;
+		goto err_pin_alloc;
+	}
 	pin->pin_idx = pin_idx;
 	pin->clock_id = clock_id;
 	pin->module = module;
@@ -557,6 +598,8 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
 	dpll_pin_prop_free(&pin->prop);
 err_pin_prop:
 	kfree(pin);
+err_pin_alloc:
+	dpll_pin_idx_free(pin_idx);
 	return ERR_PTR(ret);
 }
 
@@ -663,6 +706,7 @@ void dpll_pin_put(struct dpll_pin *pin)
 		xa_destroy(&pin->ref_sync_pins);
 		dpll_pin_prop_free(&pin->prop);
 		fwnode_handle_put(pin->fwnode);
+		dpll_pin_idx_free(pin->pin_idx);
 		kfree_rcu(pin, rcu);
 	}
 	mutex_unlock(&dpll_lock);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 441afb90d2a29..8aa1df38ce563 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -235,6 +235,8 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 void dpll_device_unregister(struct dpll_device *dpll,
 			    const struct dpll_device_ops *ops, void *priv);
 
+#define DPLL_PIN_IDX_UNSPEC	U32_MAX
+
 struct dpll_pin *
 dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
 	     const struct dpll_pin_properties *prop,
-- 
2.51.2

