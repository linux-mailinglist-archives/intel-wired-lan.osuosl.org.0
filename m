Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOpOClqjGWptyAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 16:31:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC9B6039E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 16:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48A6761460;
	Fri, 29 May 2026 14:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RWsHwqQroU8A; Fri, 29 May 2026 14:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB6EC6144B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780065111;
	bh=FY+gwuGPOIi5OfQ+fDI2fEQy6uY3NMm5zIwa1pyZEcQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E5xk15xaMrUH/TRvb34P2vfPiTDE4FKE3RXUpFlJIqZ21SDQXxGYTvCWhl2Zxb10u
	 MKeuTIy9GmOCeh3QjKTgvO2u6tnQf045l4T3JuwwELRuVVhKXPuI4sL1vmn6K/Syn3
	 67S61aXvI2l8uIGzdUqZ/Bh8QKUy6Do9nK5AhqFr6RH7MbTdzluYysGCsUVLc/L8f0
	 sVCgn5yAJJDUiUq8TnGDABOp8kMEgtSRFX3KM86vogtUQUrNrBDdJoAPDKF1Q79ztq
	 sZTzdzHhm3F0avB9fDftYBmTU2ysjdsCsiR8uxyMNyA+mGfhr2Ql3d0yVg93GM6+6Q
	 Z6gDExh8ykWkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB6EC6144B;
	Fri, 29 May 2026 14:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 59315288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48A50613C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:31:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GbTQ4B0L2nAA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 14:31:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 102E3608A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 102E3608A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 102E3608A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:31:48 +0000 (UTC)
X-CSE-ConnectionGUID: TVGGtAuJSsewRUIYrg8WWg==
X-CSE-MsgGUID: XrckBzsPQxm2a1WDLY40xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80817546"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80817546"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:31:48 -0700
X-CSE-ConnectionGUID: ZYTwFPqLSKaTnwx0orahvA==
X-CSE-MsgGUID: 6m6GrVKJTdqbBJz/RaOQew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238677382"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa010.fm.intel.com with ESMTP; 29 May 2026 07:31:44 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 29 May 2026 16:26:23 +0200
Message-Id: <20260529142628.1678955-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260529142628.1678955-1-grzegorz.nitka@intel.com>
References: <20260529142628.1678955-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780065109; x=1811601109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fOikswx7ty9Bl7CutIaKAE3/KsOh7ofuKxvJPsMss30=;
 b=kZRfFJHHNknqSOEOAwya/j9PNqHPU6prqOIijGpEN/EDvq+/0ACafsYb
 DutOgfHdH8wNWKxaW+J5L9KQAmetzuOjYIRXfkqdy75umYedIRA8fiDtx
 kwdDUdq1kSfxGr1ctaN5CuLt24qdCtQvxzTianEgctjSCPqYo/idE/f1p
 x9l5zGQA/ls5aaremcU8cL4b97qxqFHf0QHXTZQCdZy532v8VLr9HEYgb
 zJ3Cjn6gS+yQQdXrGhIW4fJJT/jCYuV6QZyqX5vRWZTk8/zXoRKDiuH7k
 ebakleDpT4y2ygRFIx3dQtIyRJhq0aO3eLvLsoQKSZEEa466j1dD2fV/N
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kZRfFJHH
Subject: [Intel-wired-lan] [PATCH v12 net-next 3/8] dpll: extend pin
 notifier with notification source ID
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
 davem@davemloft.net, Jiri Pirko <jiri@nvidia.com>
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
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:jiri@nvidia.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,nvidia.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BEC9B6039E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Extend the DPLL pin notification API to include a source identifier
indicating where the notification originates. This allows notifier
consumers to distinguish between notifications coming from
an associated DPLL instance, a parent pin, or the pin itself.

A new field, src_clock_id, is added to struct dpll_pin_notifier_info
and is passed through all pin-related notification paths. Callers of
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
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/dpll/dpll_core.c    | 14 ++++++++------
 drivers/dpll/dpll_core.h    |  3 ++-
 drivers/dpll/dpll_netlink.c | 10 +++++-----
 drivers/dpll/dpll_netlink.h |  4 ++--
 include/linux/dpll.h        |  1 +
 5 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 6dc7e93ece75..d5ffc59f5fe6 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -72,7 +72,8 @@ void dpll_device_notify(struct dpll_device *dpll, unsigned long action)
 	call_dpll_notifiers(action, &info);
 }
 
-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
+void dpll_pin_notify(struct dpll_pin *pin, u64 src_clock_id,
+		     unsigned long action)
 {
 	struct dpll_pin_notifier_info info = {
 		.pin = pin,
@@ -81,6 +82,7 @@ void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
 		.clock_id = pin->clock_id,
 		.fwnode = pin->fwnode,
 		.prop = &pin->prop,
+		.src_clock_id = src_clock_id,
 	};
 
 	call_dpll_notifiers(action, &info);
@@ -849,7 +851,7 @@ __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 	if (ret)
 		goto ref_pin_del;
 	xa_set_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
-	dpll_pin_create_ntf(pin);
+	dpll_pin_create_ntf(pin, dpll->clock_id);
 
 	return ret;
 
@@ -952,7 +954,7 @@ void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		return;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
+	dpll_pin_delete_ntf(pin, dpll->clock_id);
 	__dpll_pin_unregister(dpll, pin, ops, priv, NULL);
 	mutex_unlock(&dpll_lock);
 }
@@ -998,7 +1000,7 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 			stop = i;
 			goto dpll_unregister;
 		}
-		dpll_pin_create_ntf(pin);
+		dpll_pin_create_ntf(pin, parent->clock_id);
 	}
 	mutex_unlock(&dpll_lock);
 
@@ -1009,7 +1011,7 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 		if (i < stop) {
 			__dpll_pin_unregister(ref->dpll, pin, ops, priv,
 					      parent);
-			dpll_pin_delete_ntf(pin);
+			dpll_pin_delete_ntf(pin, parent->clock_id);
 		}
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 unlock:
@@ -1035,7 +1037,7 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	unsigned long i;
 
 	mutex_lock(&dpll_lock);
-	dpll_pin_delete_ntf(pin);
+	dpll_pin_delete_ntf(pin, parent->clock_id);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 	xa_for_each(&pin->dpll_refs, i, ref)
 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index 26d1537ada82..e24577113431 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -100,6 +100,7 @@ extern struct xarray dpll_pin_xa;
 extern struct mutex dpll_lock;
 
 void dpll_device_notify(struct dpll_device *dpll, unsigned long action);
-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action);
+void dpll_pin_notify(struct dpll_pin *pin, u64 src_clock_id,
+		     unsigned long action);
 
 #endif
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index 6a23298244cc..8232d4543c7d 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -915,15 +915,15 @@ dpll_pin_event_send(enum dpll_cmd event, struct dpll_pin *pin)
 	return ret;
 }
 
-int dpll_pin_create_ntf(struct dpll_pin *pin)
+int dpll_pin_create_ntf(struct dpll_pin *pin, u64 src_clock_id)
 {
-	dpll_pin_notify(pin, DPLL_PIN_CREATED);
+	dpll_pin_notify(pin, src_clock_id, DPLL_PIN_CREATED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
 }
 
-int dpll_pin_delete_ntf(struct dpll_pin *pin)
+int dpll_pin_delete_ntf(struct dpll_pin *pin, u64 src_clock_id)
 {
-	dpll_pin_notify(pin, DPLL_PIN_DELETED);
+	dpll_pin_notify(pin, src_clock_id, DPLL_PIN_DELETED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
 }
 
@@ -938,7 +938,7 @@ int dpll_pin_delete_ntf(struct dpll_pin *pin)
 int __dpll_pin_change_ntf(struct dpll_pin *pin)
 {
 	lockdep_assert_held(&dpll_lock);
-	dpll_pin_notify(pin, DPLL_PIN_CHANGED);
+	dpll_pin_notify(pin, pin->clock_id, DPLL_PIN_CHANGED);
 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
 }
 EXPORT_SYMBOL_GPL(__dpll_pin_change_ntf);
diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
index a9cfd55f57fc..4f63aa58789a 100644
--- a/drivers/dpll/dpll_netlink.h
+++ b/drivers/dpll/dpll_netlink.h
@@ -8,6 +8,6 @@ int dpll_device_create_ntf(struct dpll_device *dpll);
 
 int dpll_device_delete_ntf(struct dpll_device *dpll);
 
-int dpll_pin_create_ntf(struct dpll_pin *pin);
+int dpll_pin_create_ntf(struct dpll_pin *pin, u64 src_clock_id);
 
-int dpll_pin_delete_ntf(struct dpll_pin *pin);
+int dpll_pin_delete_ntf(struct dpll_pin *pin, u64 src_clock_id);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 03a538167691..7a6f8796cda2 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -233,6 +233,7 @@ struct dpll_pin_notifier_info {
 	u64 clock_id;
 	const struct fwnode_handle *fwnode;
 	const struct dpll_pin_properties *prop;
+	u64 src_clock_id;
 };
 
 #if IS_ENABLED(CONFIG_DPLL)
-- 
2.39.3

