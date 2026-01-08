Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 838C1D057A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 19:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3802440926;
	Thu,  8 Jan 2026 18:24:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AJbW3C6lpF7O; Thu,  8 Jan 2026 18:24:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9471240944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767896656;
	bh=2AgTyKzio01tvgY9gV7298ag0efJmOi3QHUdI3KDeXk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UESlC5LANcz1zY+iDXBkBdo9PUqwviFxVysVhKOrz0cNe99ZV0JmdsqMnb66XJM5s
	 NME6MPmCuYgub4cyJ9pVkU33jTGAK6CpZAjWrXR5NBDobs30D2qEAhrAm2Ah1Sf1eS
	 9OMYlBwPmsnpXbaxPzc0IzSKlWZmCKYOOo1pcf8l6qZMJ/JMLMbpUmAgWfWX8G3Tni
	 mZdFojdMns4T1rw6zFo8RSVGYNW5Mba3e37tyCnUomZVWKWJu2NM4+h+AaEV7H7yek
	 vMehRU+Gokud34/6A6ze8crpOoEiA5iSl0yUNvYf2vtV1BNQ9GkukYfMrCWneSYMDZ
	 XDb1KNxa8L7jQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9471240944;
	Thu,  8 Jan 2026 18:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AF9492C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B61A40922
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRCJSgksgetu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 18:24:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DFB54090C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DFB54090C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DFB54090C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:13 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-297-QFIcIxjONCK15SavpW-Q_A-1; Thu,
 08 Jan 2026 13:24:10 -0500
X-MC-Unique: QFIcIxjONCK15SavpW-Q_A-1
X-Mimecast-MFC-AGG-ID: QFIcIxjONCK15SavpW-Q_A_1767896647
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 000FB195608E; Thu,  8 Jan 2026 18:24:07 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.20])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id A57641800285; Thu,  8 Jan 2026 18:23:59 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Jan 2026 19:23:11 +0100
Message-ID: <20260108182318.20935-6-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-1-ivecera@redhat.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767896652;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2AgTyKzio01tvgY9gV7298ag0efJmOi3QHUdI3KDeXk=;
 b=gTolGti94kPzhyOXGMEXZpVvtJ57JOpME5ojV0scC79Sf2HcFjMLtCLTIRW+9JvwMD6zl7
 YgE0NkjdbYtxA/QqiGVDB4PSyZTOAc5mr/llzsURNzHNl9UW0GgBajXxqbDnhS0+9DI2ZK
 Dnr+U0Km47ZJqBjz4GhPYRNQbIEGVOg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gTolGti9
Subject: [Intel-wired-lan] [PATCH net-next 05/12] dpll: Add notifier chain
 for dpll events
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

From: Petr Oros <poros@redhat.com>

Currently, the DPLL subsystem reports events (creation, deletion, changes)
to userspace via Netlink. However, there is no mechanism for other kernel
components to be notified of these events directly.

Add a raw notifier chain to the DPLL core protected by dpll_lock. This
allows other kernel subsystems or drivers to register callbacks and
receive notifications when DPLL devices or pins are created, deleted,
or modified.

Define the following:
- Registration helpers: {,un}register_dpll_notifier()
- Event types: DPLL_DEVICE_CREATED, DPLL_PIN_CREATED, etc.
- Context structures: dpll_{device,pin}_notifier_info  to pass relevant
  data to the listeners.

The notification chain is invoked alongside the existing Netlink event
generation to ensure in-kernel listeners are kept in sync with the
subsystem state.

Co-developed-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/dpll/dpll_core.c    | 57 +++++++++++++++++++++++++++++++++++++
 drivers/dpll/dpll_core.h    |  4 +++
 drivers/dpll/dpll_netlink.c |  6 ++++
 include/linux/dpll.h        | 29 +++++++++++++++++++
 4 files changed, 96 insertions(+)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 23d04a9d022d7..4efa7fbd8f21f 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -23,6 +23,8 @@ DEFINE_MUTEX(dpll_lock);
 DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
 DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
 
+static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
+
 static u32 dpll_device_xa_id;
 static u32 dpll_pin_xa_id;
 
@@ -46,6 +48,39 @@ struct dpll_pin_registration {
 	void *cookie;
 };
 
+static int call_dpll_notifiers(unsigned long action, void *info)
+{
+	lockdep_assert_held(&dpll_lock);
+	return raw_notifier_call_chain(&dpll_notifier_chain, action, info);
+}
+
+void dpll_device_notify(struct dpll_device *dpll, unsigned long action)
+{
+	struct dpll_device_notifier_info info = {
+		.dpll = dpll,
+		.id = dpll->id,
+		.idx = dpll->device_idx,
+		.clock_id = dpll->clock_id,
+		.type = dpll->type,
+	};
+
+	call_dpll_notifiers(action, &info);
+}
+
+void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
+{
+	struct dpll_pin_notifier_info info = {
+		.pin = pin,
+		.id = pin->id,
+		.idx = pin->pin_idx,
+		.clock_id = pin->clock_id,
+		.fwnode = pin->fwnode,
+		.prop = &pin->prop,
+	};
+
+	call_dpll_notifiers(action, &info);
+}
+
 struct dpll_device *dpll_device_get_by_id(int id)
 {
 	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
@@ -543,6 +578,28 @@ void dpll_netdev_pin_clear(struct net_device *dev)
 }
 EXPORT_SYMBOL(dpll_netdev_pin_clear);
 
+int register_dpll_notifier(struct notifier_block *nb)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	ret = raw_notifier_chain_register(&dpll_notifier_chain, nb);
+	mutex_unlock(&dpll_lock);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(register_dpll_notifier);
+
+int unregister_dpll_notifier(struct notifier_block *nb)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	ret = raw_notifier_chain_unregister(&dpll_notifier_chain, nb);
+	mutex_unlock(&dpll_lock);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(unregister_dpll_notifier);
+
 /**
  * dpll_pin_get - find existing or create new dpll pin
  * @clock_id: clock_id of creator
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index d3e17ff0ecef0..b7b4bb251f739 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -91,4 +91,8 @@ struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs);
 extern struct xarray dpll_device_xa;
 extern struct xarray dpll_pin_xa;
 extern struct mutex dpll_lock;
+
+void dpll_device_notify(struct dpll_device *dpll, unsigned long action);
+void dpll_pin_notify(struct dpll_pin *pin, unsigned long action);
+
 #endif
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 64944f601ee5a..fe9c3d9073f0f 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -742,17 +742,20 @@ dpll_device_event_send(enum dpll_cmd event, struct dpll_device *dpll)
 
 int dpll_device_create_ntf(struct dpll_device *dpll)
 {
+	dpll_device_notify(dpll, DPLL_DEVICE_CREATED);
 	return dpll_device_event_send(DPLL_CMD_DEVICE_CREATE_NTF, dpll);
 }
 
 int dpll_device_delete_ntf(struct dpll_device *dpll)
 {
+	dpll_device_notify(dpll, DPLL_DEVICE_DELETED);
 	return dpll_device_event_send(DPLL_CMD_DEVICE_DELETE_NTF, dpll);
 }
 
 static int
 __dpll_device_change_ntf(struct dpll_device *dpll)
 {
+	dpll_device_notify(dpll, DPLL_DEVICE_CHANGED);
 	return dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
 }
 
@@ -810,16 +813,19 @@ dpll_pin_event_send(enum dpll_cmd event, struct dpll_pin *pin)
 
 int dpll_pin_create_ntf(struct dpll_pin *pin)
 {
+	dpll_pin_notify(pin, DPLL_PIN_CREATED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
 }
 
 int dpll_pin_delete_ntf(struct dpll_pin *pin)
 {
+	dpll_pin_notify(pin, DPLL_PIN_DELETED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
 }
 
 int __dpll_pin_change_ntf(struct dpll_pin *pin)
 {
+	dpll_pin_notify(pin, DPLL_PIN_CHANGED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
 }
 
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 755c36d1ef45a..092abf400552b 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -11,6 +11,7 @@
 #include <linux/device.h>
 #include <linux/netlink.h>
 #include <linux/netdevice.h>
+#include <linux/notifier.h>
 #include <linux/property.h>
 #include <linux/rtnetlink.h>
 
@@ -168,6 +169,30 @@ struct dpll_pin_properties {
 	u32 phase_gran;
 };
 
+#define DPLL_DEVICE_CREATED	1
+#define DPLL_DEVICE_DELETED	2
+#define DPLL_DEVICE_CHANGED	3
+#define DPLL_PIN_CREATED	4
+#define DPLL_PIN_DELETED	5
+#define DPLL_PIN_CHANGED	6
+
+struct dpll_device_notifier_info {
+	struct dpll_device *dpll;
+	u32 id;
+	u32 idx;
+	u64 clock_id;
+	enum dpll_type type;
+};
+
+struct dpll_pin_notifier_info {
+	struct dpll_pin *pin;
+	u32 id;
+	u32 idx;
+	u64 clock_id;
+	const struct fwnode_handle *fwnode;
+	const struct dpll_pin_properties *prop;
+};
+
 #if IS_ENABLED(CONFIG_DPLL)
 void dpll_netdev_pin_set(struct net_device *dev, struct dpll_pin *dpll_pin);
 void dpll_netdev_pin_clear(struct net_device *dev);
@@ -252,4 +277,8 @@ int dpll_device_change_ntf(struct dpll_device *dpll);
 
 int dpll_pin_change_ntf(struct dpll_pin *pin);
 
+int register_dpll_notifier(struct notifier_block *nb);
+
+int unregister_dpll_notifier(struct notifier_block *nb);
+
 #endif
-- 
2.52.0

