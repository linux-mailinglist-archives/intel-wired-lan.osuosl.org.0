Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EE7D384AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:47:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 352CB610EA;
	Fri, 16 Jan 2026 18:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFgUi2d1DK1t; Fri, 16 Jan 2026 18:47:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BA91610E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768589265;
	bh=cLmYWISvdFcVupMzsZHmCRs81gS/4QwR4ldZUKtuStM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=evHR1p1Cr0+Xt9prrHQzb7vdxRgffvopnS3lED0HIBEu5cHBHNrhuJdj/rfhf46VC
	 9YVIF/25rrPMv5p/gq9Bl/mn3MiY0VWYp5szoCABQI+pnRak9KZHVf9rGPZ/ND6ZgV
	 guMvpIJj9EZLJysItUXayTyCrl5yBdCRtxhqx6MRTQPvV4dUmsrm43Z/mV6OpiNURN
	 bryWawAZIyOYaCnAL96J4aK+05IOzuDDoQUvp5Eceno3xxLSF5bOJRktZGgUbwKInh
	 xhXdmRFTGVd39HY8jJcQNvnuS7ja4zcAbZpZMuRoLXqdyVIwhncRm/aWx8eQ55l82P
	 udK20hHOAJXaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BA91610E7;
	Fri, 16 Jan 2026 18:47:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C7308160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 728C2844A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SZ-w4agBMJkE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:47:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 65924844A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65924844A5
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65924844A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:47:34 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-161-NQ3dXMBkM8umQlVYvBzx4Q-1; Fri,
 16 Jan 2026 13:47:29 -0500
X-MC-Unique: NQ3dXMBkM8umQlVYvBzx4Q-1
X-Mimecast-MFC-AGG-ID: NQ3dXMBkM8umQlVYvBzx4Q_1768589246
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id E9FF118005B3; Fri, 16 Jan 2026 18:47:25 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.71])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 5B3B21955F67; Fri, 16 Jan 2026 18:47:18 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 16 Jan 2026 19:46:06 +0100
Message-ID: <20260116184610.147591-9-ivecera@redhat.com>
In-Reply-To: <20260116184610.147591-1-ivecera@redhat.com>
References: <20260116184610.147591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768589253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cLmYWISvdFcVupMzsZHmCRs81gS/4QwR4ldZUKtuStM=;
 b=XGRPVnfVBxFviIAh2/42qyywDUakCP7spjz/w3vRbyCb4Jh6UZjro5Y0v+EOHmnxHNtrFp
 UZXMk1gdFAiYSUetfHH+LI0VsicEw0aDmkOc2KgsbSyyAHXiwlHKOm3R2dFxRPAqBeKo93
 o5ueNtEAtRrKSewPy1vx1rUri2mv/WM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XGRPVnfV
Subject: [Intel-wired-lan] [PATCH net-next v2 08/12] dpll: Enhance and
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

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_core.c | 74 +++++++++++++++++++++++++++-------------
 1 file changed, 50 insertions(+), 24 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 156f95de8e8e8..f2a77eb1b9916 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -84,6 +84,45 @@ void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
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
@@ -155,6 +194,7 @@ dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
 	reg->ops = ops;
 	reg->priv = priv;
 	reg->cookie = cookie;
+	__dpll_pin_hold(pin);
 	if (ref_exists)
 		refcount_inc(&ref->refcount);
 	list_add_tail(&reg->list, &ref->registration_list);
@@ -177,6 +217,7 @@ static int dpll_xa_ref_pin_del(struct xarray *xa_pins, struct dpll_pin *pin,
 		if (WARN_ON(!reg))
 			return -EINVAL;
 		list_del(&reg->list);
+		__dpll_pin_put(pin);
 		kfree(reg);
 		if (refcount_dec_and_test(&ref->refcount)) {
 			xa_erase(xa_pins, i);
@@ -236,6 +277,7 @@ dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
 	reg->ops = ops;
 	reg->priv = priv;
 	reg->cookie = cookie;
+	__dpll_device_hold(dpll);
 	if (ref_exists)
 		refcount_inc(&ref->refcount);
 	list_add_tail(&reg->list, &ref->registration_list);
@@ -258,6 +300,7 @@ dpll_xa_ref_dpll_del(struct xarray *xa_dplls, struct dpll_device *dpll,
 		if (WARN_ON(!reg))
 			return;
 		list_del(&reg->list);
+		__dpll_device_put(dpll);
 		kfree(reg);
 		if (refcount_dec_and_test(&ref->refcount)) {
 			xa_erase(xa_dplls, i);
@@ -328,8 +371,8 @@ dpll_device_get(u64 clock_id, u32 device_idx, struct module *module)
 		if (dpll->clock_id == clock_id &&
 		    dpll->device_idx == device_idx &&
 		    dpll->module == module) {
+			__dpll_device_hold(dpll);
 			ret = dpll;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -352,14 +395,7 @@ EXPORT_SYMBOL_GPL(dpll_device_get);
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
@@ -421,6 +457,7 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 	reg->ops = ops;
 	reg->priv = priv;
 	dpll->type = type;
+	__dpll_device_hold(dpll);
 	first_registration = list_empty(&dpll->registration_list);
 	list_add_tail(&reg->list, &dpll->registration_list);
 	if (!first_registration) {
@@ -460,6 +497,7 @@ void dpll_device_unregister(struct dpll_device *dpll,
 		return;
 	}
 	list_del(&reg->list);
+	__dpll_device_put(dpll);
 	kfree(reg);
 
 	if (!list_empty(&dpll->registration_list)) {
@@ -671,8 +709,8 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
 		if (pos->clock_id == clock_id &&
 		    pos->pin_idx == pin_idx &&
 		    pos->module == module) {
+			__dpll_pin_hold(pos);
 			ret = pos;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -695,16 +733,7 @@ EXPORT_SYMBOL_GPL(dpll_pin_get);
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
@@ -745,8 +774,8 @@ struct dpll_pin *fwnode_dpll_pin_find(struct fwnode_handle *fwnode)
 	mutex_lock(&dpll_lock);
 	xa_for_each(&dpll_pin_xa, index, pin) {
 		if (pin->fwnode == fwnode) {
+			__dpll_pin_hold(pin);
 			ret = pin;
-			refcount_inc(&ret->refcount);
 			break;
 		}
 	}
@@ -971,7 +1000,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 	ret = dpll_xa_ref_pin_add(&pin->parent_refs, parent, ops, priv, pin);
 	if (ret)
 		goto unlock;
-	refcount_inc(&pin->refcount);
 	xa_for_each(&parent->dpll_refs, i, ref) {
 		ret = __dpll_pin_register(ref->dpll, pin, ops, priv, parent);
 		if (ret) {
@@ -991,7 +1019,6 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 					      parent);
 			dpll_pin_delete_ntf(pin);
 		}
-	refcount_dec(&pin->refcount);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
 unlock:
 	mutex_unlock(&dpll_lock);
@@ -1018,7 +1045,6 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	mutex_lock(&dpll_lock);
 	dpll_pin_delete_ntf(pin);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv, pin);
-	refcount_dec(&pin->refcount);
 	xa_for_each(&pin->dpll_refs, i, ref)
 		__dpll_pin_unregister(ref->dpll, pin, ops, priv, parent);
 	mutex_unlock(&dpll_lock);
-- 
2.52.0

