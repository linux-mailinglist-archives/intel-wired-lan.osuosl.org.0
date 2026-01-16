Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AC6D384A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:47:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8F88844A5;
	Fri, 16 Jan 2026 18:47:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhPR4WKIn5jb; Fri, 16 Jan 2026 18:47:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0125844A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768589244;
	bh=RA7Q+gdheqeABjG5QsrM8GPEaUvmJYMzWuJ9Dn+RtAg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f/3NKBFozQiwfwMj06+ed/2BZ0YmahYvVZTpoeWujfdRBzuk53Vv0kv7CNpplQ2oi
	 lRaYTEDJNN0u+HJJz44ziSABQ82ikyxeFeBHzS/8zEN6LTDRIzkzXrV6K4QzR3TTQi
	 DBan+TL1btiu3hHKHmndGL6SdUYfAskyeEOMZMVudZpS/xOGQ5DWads3zEi66xI4Gx
	 1JcOBpBbYsGt/rMAg92DkHqR0HCwfRUYqcMdlfeMBfQH2uIeDfxqBsA6Uv+5D6ciqy
	 9Pyi5CcWx7FPBRcAWIZMuFiS8Pr19lMe/kV6Y6r9xbGNrCCqPRZF0AtwulMn2Jhoi8
	 RUteTzXFuBxWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0125844A6;
	Fri, 16 Jan 2026 18:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0EAC0160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A7AD40275
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HUWypTyPhVtW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:47:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC5FF40265
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC5FF40265
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC5FF40265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:20 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-670-bR3FcElcOmO2cTebQgIWjA-1; Fri,
 16 Jan 2026 13:47:13 -0500
X-MC-Unique: bR3FcElcOmO2cTebQgIWjA-1
X-Mimecast-MFC-AGG-ID: bR3FcElcOmO2cTebQgIWjA_1768589230
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id EBABD180045C; Fri, 16 Jan 2026 18:47:09 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.71])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 32E3B19560A7; Fri, 16 Jan 2026 18:47:01 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 16 Jan 2026 19:46:04 +0100
Message-ID: <20260116184610.147591-7-ivecera@redhat.com>
In-Reply-To: <20260116184610.147591-1-ivecera@redhat.com>
References: <20260116184610.147591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768589239;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RA7Q+gdheqeABjG5QsrM8GPEaUvmJYMzWuJ9Dn+RtAg=;
 b=hyjx33kTKBc4X348tUtLFbej3AXMquIVwJmXIdSxIGREuWgujb6MYiObFci5pj8S5ASzJZ
 /FrZYgWJlQX3uhUeRSMAv+Y/Dc80tjb6p7vEphLS0NSLQt1w34F28+wbh9acik0ImDVrLn
 CWglbA4XubsBvnSEAPX+tmOPP7XnKWo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hyjx33kT
Subject: [Intel-wired-lan] [PATCH net-next v2 06/12] dpll: Support dynamic
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
v2:
* fixed integer overflow in dpll_pin_idx_free()
---
 drivers/dpll/dpll_core.c | 48 ++++++++++++++++++++++++++++++++++++++--
 include/linux/dpll.h     |  2 ++
 2 files changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index c0483716a9971..156f95de8e8e8 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -10,6 +10,7 @@
 
 #include <linux/device.h>
 #include <linux/err.h>
+#include <linux/idr.h>
 #include <linux/property.h>
 #include <linux/slab.h>
 #include <linux/string.h>
@@ -25,6 +26,7 @@ DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
 DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
 
 static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
+static DEFINE_IDA(dpll_pin_idx_ida);
 
 static u32 dpll_device_xa_id;
 static u32 dpll_pin_xa_id;
@@ -469,6 +471,36 @@ void dpll_device_unregister(struct dpll_device *dpll,
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
+	pin_idx -= (u32)INT_MAX + 1;
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
@@ -556,6 +597,8 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
 	dpll_pin_prop_free(&pin->prop);
 err_pin_prop:
 	kfree(pin);
+err_pin_alloc:
+	dpll_pin_idx_free(pin_idx);
 	return ERR_PTR(ret);
 }
 
@@ -659,6 +702,7 @@ void dpll_pin_put(struct dpll_pin *pin)
 		xa_destroy(&pin->ref_sync_pins);
 		dpll_pin_prop_free(&pin->prop);
 		fwnode_handle_put(pin->fwnode);
+		dpll_pin_idx_free(pin->pin_idx);
 		kfree_rcu(pin, rcu);
 	}
 	mutex_unlock(&dpll_lock);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 092abf400552b..65e86c687a6c4 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -250,6 +250,8 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 void dpll_device_unregister(struct dpll_device *dpll,
 			    const struct dpll_device_ops *ops, void *priv);
 
+#define DPLL_PIN_IDX_UNSPEC	U32_MAX
+
 struct dpll_pin *
 dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
 	     const struct dpll_pin_properties *prop);
-- 
2.52.0

