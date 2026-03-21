Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNWsBQgcv2kZuwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 23:30:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8522E76F7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2026 23:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C3AB41FB3;
	Sat, 21 Mar 2026 22:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qNQ1MQmRbQrO; Sat, 21 Mar 2026 22:30:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 567AB41FB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774132229;
	bh=ihDyHDGdiPKNyFJpcivZSHZNIt7FdJCQmI+NRdrr+rA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cACLuAwiaNdy25yFqDVUenX77nEsmU4IQ0eNGM5XgqliarZ6FvM4A4pMeey3hEl70
	 d/aJmg7F6o9Sq6XaFwtpfVMIM6F4eog+mj6Tec9og8qDCeFWNUXRzKBJTLUhRkgfYY
	 B2mjMvsRh/bnOLs3l6iLg3wj93qQrpSRaFaHmEKgPRClHLo7pMrdauzZwPl0dUEjJS
	 OMkSJhJ8NYmSdYotXrvxojb3ga/7B77ZEbClhD+wE0glbcxn50A5fcSlH0UFtYm/xI
	 8FnYEMnZH55AG2AdKa9FtWcH6vZawuYiQFpDMFah3JtZx3GsGlFWbE8c9y84sU+6Vo
	 e3Bg2zV/PX28A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 567AB41FB4;
	Sat, 21 Mar 2026 22:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 106B2265
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EA77F4080A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7aPb01XL8-S for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2026 22:30:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9C5540788
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9C5540788
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9C5540788
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 22:30:26 +0000 (UTC)
X-CSE-ConnectionGUID: xIFsrxSbTq+nrf9AeKQ8aQ==
X-CSE-MsgGUID: 0ABeCJlzR4ezGRfMIJmjyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11736"; a="75150407"
X-IronPort-AV: E=Sophos;i="6.23,134,1770624000"; d="scan'208";a="75150407"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2026 15:30:26 -0700
X-CSE-ConnectionGUID: 7wtdpzKKR0uGAsitj/h+Cw==
X-CSE-MsgGUID: M85oGeqiTJmlOC66Wyt/ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,134,1770624000"; d="scan'208";a="261543955"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa001.jf.intel.com with ESMTP; 21 Mar 2026 15:30:22 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Sat, 21 Mar 2026 23:26:22 +0100
Message-Id: <20260321222627.1193603-4-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774132227; x=1805668227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L2ePYf8N69aJVra4uQmab183JIOlPslGxH7mK0bIm/U=;
 b=nm7PM4DjJkO0Ehoft8WRhkdmKiqMU9W3qTptQLHa6cBwU542dNgnUV2g
 cecL/QxoVM8/fH9mvonVS0O3g5QXhcVPCoYnlEENlxD1DFHEal62p3MFP
 S+9FHUulcvpZllM8vYWo4NDtE81d8oGBEorrHUWQOFN0pLLGy/tkCxv1J
 EfVjlm52m1kE+NQbPn6j3LzBuhIFykx6lyJKHl4L3Y2w7OqB0bfcQdQru
 rP149rGXeDtgHPdn2Zpz12N2KcM69TB6G/3Xmf03SW9UbElyT/jTTujAz
 vA6rN+zWo3qwPWcfZo0a955zAa0o8i/YKkEkgy4T+lT/Y845T8AXjddtc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nm7PM4Dj
Subject: [Intel-wired-lan] [PATCH v2 net-next 3/8] dpll: extend pin notifier
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6C8522E76F7
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
  - pin registration/unregistration use the DPLL's clock_id,
  - pin-on-pin operations use the parent pin's clock_id,
  - pin changes use the pin's own clock_id.

This enables richer event routing and more accurate state handling in
user space and in-kernel consumers.

The current DPLL pin notification infrastructure does not provide any
way to identify where a pin-related notification originates. Both the
in-kernel notifier chain and the netlink notification path only carry
information about the pin itself, not about the component that triggered
the event.

This becomes problematic on platforms where multiple DPLL devices or
drivers share the same physical pin via firmware description (fwnode).
In such setups pin creation, deletion, or state changes can be triggered
from several independent contexts:

  - from the DPLL device that owns the pin,
  - from another DPLL device that re-registers or rebinds the same
    fwnode-described pin,
  - or from a pin-on-pin relationship (parent pin registering child
    pins).

Without a source identifier all these notifications look identical to
listeners. Drivers cannot reliably determine whether a received event
is a result of their own registration/unregistration actions or
originated from a different DPLL instance. This leads to several types
of problems:

  * risk of duplicate pin registration when a driver reacts to its own
    event,
  * difficulty suppressing notifications that are merely internal
    bookkeeping side effects,
  * inability to implement correct pin‑multiplexing or cross‑device
    synchronization logic when pins are shared across fwnode domains.

To address this, extend `struct dpll_pin_notifier_info` with a new
`src_id` field that identifies the originator of the event. The DPLL
core sets this field for all pin notifications:

  - pin registration/unregistration: the source is the clock_id of the
    DPLL initiating the operation,
  - pin-on-pin relationships: the source is the parent pin's clock_id,
  - pin property/state updates: the source is the pin's own clock_id.

Netlink notifications now also carry this additional field.

With this information notifier consumers can differentiate true external
events from internal ones and ignore the latter when appropriate.
As shown later in this series, ICE/E825 devices rely on this to avoid
reacting to the events that their own registration logic triggers
when a shared-fwnode pin appears.

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

