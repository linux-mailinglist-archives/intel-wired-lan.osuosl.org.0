Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOQKAbZfxWlM9wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 17:32:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B568033870F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 17:32:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6803260AFE;
	Thu, 26 Mar 2026 16:32:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iV9AOKWMKuzk; Thu, 26 Mar 2026 16:32:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC8C660AD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774542771;
	bh=uHMJZzmtcaSQw0bQYq9dRaM6t5z2aAw1NjbpJsRYJks=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HTaj9lyuchc9ohqR/P78rRnkGONzPJj9W+YMFU2khg41zrSXDMfpEyTGVMJXcUmfr
	 eWBPn4WagH6tdqRgt+eXIru3HqQ+Y0XwEhPG8LXErkzBWNC3SfWZie+3wRKYl7n4PR
	 PZzObzfaqurZ5KK5zvXIcPC9dY/CkyiJIBhZ74Lod9QVlfKkB2EJKXc4orBzjWr4Pv
	 HHYaBdZz+WzyQkXfFmU5Ay5MDk7riU7gM+3maadA5SK9zxuPS1sE7rhhyu5IlWJMb3
	 Svmc4DRr1xLnDgi0VWpSIIzQ/3Da6JHEqpUEwfFdOcTD3MejHgO4yCPagqpBVkSlx5
	 2SvIhRMjFcDkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC8C660AD3;
	Thu, 26 Mar 2026 16:32:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 443A41D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3689D40AE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OAWxf8d3WN64 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 16:32:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 49C1740AD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49C1740AD2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49C1740AD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 16:32:49 +0000 (UTC)
X-CSE-ConnectionGUID: I7Us0bRXTfOKqcyLJGalZw==
X-CSE-MsgGUID: xsIPUC4eSNuG0ypwVemR3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="74636652"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="74636652"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 09:32:48 -0700
X-CSE-ConnectionGUID: P5wfBzOnRNqjHANLEEwfEA==
X-CSE-MsgGUID: OJIESRsLStekGtbRsc35ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="225310978"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa007.jf.intel.com with ESMTP; 26 Mar 2026 09:32:44 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Thu, 26 Mar 2026 17:28:27 +0100
Message-Id: <20260326162832.3135857-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774542769; x=1806078769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Etx+rXvLgn5f8FbpTl8o586ChunxqUzp8NBTbrLv7U=;
 b=TrIwaliCzXXcfwdeXJx4ITyaMqJf2A3MXQWJ3VTw9zjYFs584Ca5W40x
 q/oHpvr0MSOlRKzT9a9l33D7ZePy2C/eWp3rE0Zoeu7mhJZwk/7rXwh/f
 ecctb0OXGhCWxl1/F3AMXXmAl2jfkWHT1Su21snaBvCYRdnxQiFkbmLE4
 OdD73nLkZBGJBSWJQe96BxmcictMAZxUExnEiYAMwUlzMki9HQJxejQ+B
 YPDBuCUn+gjoT7HAvHNXKLU3kM/vdcKJHNrBXjHschPQfKAr/Z8Juw15+
 rozj8kNpfL0jGNKgGe+Rl1PpKl24pnkG50ohshD6VSZZpXV0jga5k7yaK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TrIwaliC
Subject: [Intel-wired-lan] [PATCH v4 net-next 3/8] dpll: extend pin notifier
 and netlink events with notification source ID
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B568033870F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Extend the DPLL pin notification API to include a source identifier
indicating where the notification originates. This allows notifier
consumers and netlink listeners to distinguish between notifications
coming from an associated DPLL instance, a parent pin, or the pin
itself.

A new field, src_id, is added to struct dpll_pin_notifier_info and is
passed through all pin-related notification paths. Callers of
dpll_pin_notify() are updated to provide a meaningful source identifier
based on their context:
  - pin registration/unregistration uses the DPLL's clock_id,
  - pin-on-pin operations use the parent pin's clock_id,
  - pin changes use the pin's own clock_id.

As introduced in the commit ("dpll: allow registering FW-identified pin
with a different DPLL"), it is possible to share the same physical pin
via firmware description (fwnode) with DPLL objects from different
kernel modules. This means that a given pin can be registered multiple
times.

Driver such as ICE (E825 devices) rely on this mechanism when listening
for the event where a shared-fwnode pin appears, while avoiding reacting
to events triggered by their own registration logic.

This change only extends the notification metadata and does not alter
existing semantics for drivers that do not use the new field.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c    | 14 ++++++++------
 drivers/dpll/dpll_core.h    |  2 +-
 drivers/dpll/dpll_netlink.c | 10 +++++-----
 drivers/dpll/dpll_netlink.h |  4 ++--
 include/linux/dpll.h        |  1 +
 5 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 55ad03977d6d..c7fcae76c3f5 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -71,7 +71,8 @@ void dpll_device_notify(struct dpll_device *dpll, unsigned long action)
 	call_dpll_notifiers(action, &info);
 }
 
-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
+void dpll_pin_notify(struct dpll_pin *pin, u64 ntfy_src,
+		     unsigned long action)
 {
 	struct dpll_pin_notifier_info info = {
 		.pin = pin,
@@ -80,6 +81,7 @@ void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
 		.clock_id = pin->clock_id,
 		.fwnode = pin->fwnode,
 		.prop = &pin->prop,
+		.src_id = ntfy_src,
 	};
 
 	call_dpll_notifiers(action, &info);
@@ -847,7 +849,7 @@ __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 	if (ret)
 		goto ref_pin_del;
 	xa_set_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
-	dpll_pin_create_ntf(pin);
+	dpll_pin_create_ntf(pin, dpll->clock_id);
 
 	return ret;
 
@@ -946,7 +948,7 @@ void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		return;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
+	dpll_pin_delete_ntf(pin, dpll->clock_id);
 	__dpll_pin_unregister(dpll, pin, ops, priv, NULL);
 	mutex_unlock(&dpll_lock);
 }
@@ -992,7 +994,7 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 			stop = i;
 			goto dpll_unregister;
 		}
-		dpll_pin_create_ntf(pin);
+		dpll_pin_create_ntf(pin, parent->clock_id);
 	}
 	mutex_unlock(&dpll_lock);
 
@@ -1003,7 +1005,7 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 		if (i < stop) {
 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
 					      parent);
-			dpll_pin_delete_ntf(pin);
+			dpll_pin_delete_ntf(pin, parent->clock_id);
 		}
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 unlock:
@@ -1029,7 +1031,7 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	unsigned long i;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
+	dpll_pin_delete_ntf(pin, parent->clock_id);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 	xa_for_each(&pin->dpll_refs, i, ref)
 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index 71ac88ef2017..f684d9d4c4da 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -98,6 +98,6 @@ extern struct xarray dpll_pin_xa;
 extern struct mutex dpll_lock;
 
 void dpll_device_notify(struct dpll_device *dpll, unsigned long action);
-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action);
+void dpll_pin_notify(struct dpll_pin *pin, u64 ntfy_src, unsigned long action);
 
 #endif
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 83cbd64abf5a..afb778420b93 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -830,21 +830,21 @@ dpll_pin_event_send(enum dpll_cmd event, struct dpll_pin *pin)
 	return ret;
 }
 
-int dpll_pin_create_ntf(struct dpll_pin *pin)
+int dpll_pin_create_ntf(struct dpll_pin *pin, u64 ntfy_src)
 {
-	dpll_pin_notify(pin, DPLL_PIN_CREATED);
+	dpll_pin_notify(pin, ntfy_src, DPLL_PIN_CREATED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
 }
 
-int dpll_pin_delete_ntf(struct dpll_pin *pin)
+int dpll_pin_delete_ntf(struct dpll_pin *pin,  u64 ntfy_src)
 {
-	dpll_pin_notify(pin, DPLL_PIN_DELETED);
+	dpll_pin_notify(pin, ntfy_src, DPLL_PIN_DELETED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
 }
 
 int __dpll_pin_change_ntf(struct dpll_pin *pin)
 {
-	dpll_pin_notify(pin, DPLL_PIN_CHANGED);
+	dpll_pin_notify(pin, pin->clock_id, DPLL_PIN_CHANGED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
 }
 
diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
index dd28b56d27c5..082c2aea6d1a 100644
--- a/drivers/dpll/dpll_netlink.h
+++ b/drivers/dpll/dpll_netlink.h
@@ -8,8 +8,8 @@ int dpll_device_create_ntf(struct dpll_device *dpll);
 
 int dpll_device_delete_ntf(struct dpll_device *dpll);
 
-int dpll_pin_create_ntf(struct dpll_pin *pin);
+int dpll_pin_create_ntf(struct dpll_pin *pin, u64 ntfy_src);
 
-int dpll_pin_delete_ntf(struct dpll_pin *pin);
+int dpll_pin_delete_ntf(struct dpll_pin *pin, u64 ntfy_src);
 
 int __dpll_pin_change_ntf(struct dpll_pin *pin);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 2ce295b46b8c..ae4b146d7243 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -202,6 +202,7 @@ struct dpll_pin_notifier_info {
 	u64 clock_id;
 	const struct fwnode_handle *fwnode;
 	const struct dpll_pin_properties *prop;
+	u64 src_id;
 };
 
 #if IS_ENABLED(CONFIG_DPLL)
-- 
2.39.3

