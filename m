Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JxlHzUzgmktQgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 18:41:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E326ADCF50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 18:41:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86D2940B91;
	Tue,  3 Feb 2026 17:41:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VYRMoHed5KC9; Tue,  3 Feb 2026 17:41:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0D1340A46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770140462;
	bh=fqgpupl6TZ1uKajdvBDXaOANTcHHnIuThaEdhuGBKDs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OlYMnZwjdt+UeveWljJiRF+59PfvqOj71DPBDl4X3YaiKwsBet4jkJIrCzCK6QtNN
	 i+ZOLdbEGuciLgGWR0WzW4iU/7/77zEooHvGRFExKdE9O/pvKdOChWu1CuJI4wEgvQ
	 W0Jem7tycYV6DF/kn1A8+NDv8OXR/FUHXbDwxTscOsk1+XZlxmE16FDu7HEbpya2fV
	 QRRnJf+ldaxopp8qiFX84iRxfRXJVnKMo2IwA2kIS4U0FOf4rGodxkBaUE8xG+Na3B
	 fIMRfv8BHJ1wN4SfrjH7Zb9tdpAwjPbmyv2W15aie6kNIInpwywldlswIPp3bE1ked
	 YLjYLtY6YLGoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0D1340A46;
	Tue,  3 Feb 2026 17:41:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46EC7F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3065B83D6E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id trYxI8wmR-QB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 17:41:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 042CD83D6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 042CD83D6D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 042CD83D6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 17:40:59 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-342-6oSPkHo3NKm_AugAQxNWtA-1; Tue,
 03 Feb 2026 12:40:53 -0500
X-MC-Unique: 6oSPkHo3NKm_AugAQxNWtA-1
X-Mimecast-MFC-AGG-ID: 6oSPkHo3NKm_AugAQxNWtA_1770140450
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B76B11956063; Tue,  3 Feb 2026 17:40:49 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.28])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id B99D530001A7; Tue,  3 Feb 2026 17:40:43 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Tue,  3 Feb 2026 18:39:59 +0100
Message-ID: <20260203174002.705176-7-ivecera@redhat.com>
In-Reply-To: <20260203174002.705176-1-ivecera@redhat.com>
References: <20260203174002.705176-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770140459;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fqgpupl6TZ1uKajdvBDXaOANTcHHnIuThaEdhuGBKDs=;
 b=GRhg1r7La9yQdunLa4Lm2xhFJZKWFaBiutGGAZ66XcRCftYOZnsap9QSZTMRTGIMD+8vv5
 eK43ar0MOVepr55hNDYbumISWIvhqWZyBieB7IHKciLL2k/0XYeefb3FUeadbLh+Hn2MV7
 tj7IBbF5wc22nkUExZWyh7Wx6R9NWyA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=GRhg1r7L
Subject: [Intel-wired-lan] [PATCH net-next v5 6/9] dpll: Enhance and
 consolidate reference counting logic
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:arkadiusz.kubalewski@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:jonathan.lemon@gmail.com,m:leon@kernel.org,m:mbloch@nvidia.com,m:pabeni@redhat.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:anthony.l.nguyen@intel.com,m:vadim.fedorenko@linux.dev,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,resnulli.us,gmail.com,nvidia.com,redhat.com,microchip.com,linux.dev,lists.osuosl.org,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ivecera@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E326ADCF50
X-Rspamd-Action: no action

Refactor the reference counting mechanism for DPLL devices and pins to
improve consistency and prevent potential lifetime issues.

Introduce internal helpers __dpll_{device,pin}_{hold,put}() to
centralize reference management.

Update the internal XArray reference helpers (dpll_xa_ref_*) to
automatically grab a reference to the target object when it is added to
a list, and release it when removed. This ensures that objects linked
internally (e.g., pins referenced by parent pins) are properly kept
alive without relying on the caller to manually manage the count.

Consequently, remove the now redundant manual `refcount_inc/dec` calls
in dpll_pin_on_pin_{,un}register()`, as ownership is now correctly handled
by the dpll_xa_ref_* functions.

Additionally, ensure that dpll_device_{,un}register()` takes/releases
a reference to the device, ensuring the device object remains valid for
the duration of its registration.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_core.c | 74 +++++++++++++++++++++++++++-------------
 1 file changed, 50 insertions(+), 24 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 59081cf2c73ae..f6ab4f0cad84d 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -83,6 +83,45 @@ void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
 	call_dpll_notifiers(action, &info);
 }
 
+static void __dpll_device_hold(struct dpll_device *dpll)
+{
+	refcount_inc(&dpll->refcount);
+}
+
+static void __dpll_device_put(struct dpll_device *dpll)
+{
+	if (refcount_dec_and_test(&dpll->refcount)) {
+		ASSERT_DPLL_NOT_REGISTERED(dpll);
+		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
+		xa_destroy(&dpll->pin_refs);
+		xa_erase(&dpll_device_xa, dpll->id);
+		WARN_ON(!list_empty(&dpll->registration_list));
+		kfree(dpll);
+	}
+}
+
+static void __dpll_pin_hold(struct dpll_pin *pin)
+{
+	refcount_inc(&pin->refcount);
+}
+
+static void dpll_pin_idx_free(u32 pin_idx);
+static void dpll_pin_prop_free(struct dpll_pin_properties *prop);
+
+static void __dpll_pin_put(struct dpll_pin *pin)
+{
+	if (refcount_dec_and_test(&pin->refcount)) {
+		xa_erase(&dpll_pin_xa, pin->id);
+		xa_destroy(&pin->dpll_refs);
+		xa_destroy(&pin->parent_refs);
+		xa_destroy(&pin->ref_sync_pins);
+		dpll_pin_prop_free(&pin->prop);
+		fwnode_handle_put(pin->fwnode);
+		dpll_pin_idx_free(pin->pin_idx);
+		kfree_rcu(pin, rcu);
+	}
+}
+
 struct dpll_device *dpll_device_get_by_id(int id)
 {
 	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
@@ -152,6 +191,7 @@ dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
 	reg->ops = ops;
 	reg->priv = priv;
 	reg->cookie = cookie;
+	__dpll_pin_hold(pin);
 	if (ref_exists)
 		refcount_inc(&ref->refcount);
 	list_add_tail(&reg->list, &ref->registration_list);
@@ -174,6 +214,7 @@ static int dpll_xa_ref_pin_del(struct xarray *xa_pins, struct dpll_pin *pin,
 		if (WARN_ON(!reg))
 			return -EINVAL;
 		list_del(&reg->list);
+		__dpll_pin_put(pin);
 		kfree(reg);
 		if (refcount_dec_and_test(&ref->refcount)) {
 			xa_erase(xa_pins, i);
@@ -231,6 +272,7 @@ dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
 	reg->ops = ops;
 	reg->priv = priv;
 	reg->cookie = cookie;
+	__dpll_device_hold(dpll);
 	if (ref_exists)
 		refcount_inc(&ref->refcount);
 	list_add_tail(&reg->list, &ref->registration_list);
@@ -253,6 +295,7 @@ dpll_xa_ref_dpll_del(struct xarray *xa_dplls, struct dpll_device *dpll,
 		if (WARN_ON(!reg))
 			return;
 		list_del(&reg->list);
+		__dpll_device_put(dpll);
 		kfree(reg);
 		if (refcount_dec_and_test(&ref->refcount)) {
 			xa_erase(xa_dplls, i);
@@ -323,8 +366,8 @@ dpll_device_get(u64 clock_id, u32 device_idx, struct module *module)
 		if (dpll->clock_id == clock_id &&
 		    dpll->device_idx == device_idx &&
 		    dpll->module == module) {
+			__dpll_device_hold(dpll);
 			ret = dpll;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -347,14 +390,7 @@ EXPORT_SYMBOL_GPL(dpll_device_get);
 void dpll_device_put(struct dpll_device *dpll)
 {
 	mutex_lock(&dpll_lock);
-	if (refcount_dec_and_test(&dpll->refcount)) {
-		ASSERT_DPLL_NOT_REGISTERED(dpll);
-		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
-		xa_destroy(&dpll->pin_refs);
-		xa_erase(&dpll_device_xa, dpll->id);
-		WARN_ON(!list_empty(&dpll->registration_list));
-		kfree(dpll);
-	}
+	__dpll_device_put(dpll);
 	mutex_unlock(&dpll_lock);
 }
 EXPORT_SYMBOL_GPL(dpll_device_put);
@@ -416,6 +452,7 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 	reg->ops = ops;
 	reg->priv = priv;
 	dpll->type = type;
+	__dpll_device_hold(dpll);
 	first_registration = list_empty(&dpll->registration_list);
 	list_add_tail(&reg->list, &dpll->registration_list);
 	if (!first_registration) {
@@ -455,6 +492,7 @@ void dpll_device_unregister(struct dpll_device *dpll,
 		return;
 	}
 	list_del(&reg->list);
+	__dpll_device_put(dpll);
 	kfree(reg);
 
 	if (!list_empty(&dpll->registration_list)) {
@@ -666,8 +704,8 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
 		if (pos->clock_id == clock_id &&
 		    pos->pin_idx == pin_idx &&
 		    pos->module == module) {
+			__dpll_pin_hold(pos);
 			ret = pos;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -690,16 +728,7 @@ EXPORT_SYMBOL_GPL(dpll_pin_get);
 void dpll_pin_put(struct dpll_pin *pin)
 {
 	mutex_lock(&dpll_lock);
-	if (refcount_dec_and_test(&pin->refcount)) {
-		xa_erase(&dpll_pin_xa, pin->id);
-		xa_destroy(&pin->dpll_refs);
-		xa_destroy(&pin->parent_refs);
-		xa_destroy(&pin->ref_sync_pins);
-		dpll_pin_prop_free(&pin->prop);
-		fwnode_handle_put(pin->fwnode);
-		dpll_pin_idx_free(pin->pin_idx);
-		kfree_rcu(pin, rcu);
-	}
+	__dpll_pin_put(pin);
 	mutex_unlock(&dpll_lock);
 }
 EXPORT_SYMBOL_GPL(dpll_pin_put);
@@ -740,8 +769,8 @@ struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
 	mutex_lock(&dpll_lock);
 	xa_for_each(&dpll_pin_xa, index, pin) {
 		if (pin->fwnode == fwnode) {
+			__dpll_pin_hold(pin);
 			ret = pin;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -893,7 +922,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 	ret = dpll_xa_ref_pin_add(&pin->parent_refs, parent, ops, priv, pin);
 	if (ret)
 		goto unlock;
-	refcount_inc(&pin->refcount);
 	xa_for_each(&parent->dpll_refs, i, ref) {
 		ret = __dpll_pin_register(ref->dpll, pin, ops, priv, parent);
 		if (ret) {
@@ -913,7 +941,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 					      parent);
 			dpll_pin_delete_ntf(pin);
 		}
-	refcount_dec(&pin->refcount);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 unlock:
 	mutex_unlock(&dpll_lock);
@@ -940,7 +967,6 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	mutex_lock(&dpll_lock);
 	dpll_pin_delete_ntf(pin);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
-	refcount_dec(&pin->refcount);
 	xa_for_each(&pin->dpll_refs, i, ref)
 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
 	mutex_unlock(&dpll_lock);
-- 
2.52.0

