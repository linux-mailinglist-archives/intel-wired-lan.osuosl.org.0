Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D04AC28BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 19:34:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3840B60EAF;
	Fri, 23 May 2025 17:34:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoJWD0IAv5Mv; Fri, 23 May 2025 17:34:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E39D660E65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748021676;
	bh=O9KLzeWhwgsbUPDypmkGOOvp7lAhOK0TviZ5XA7gO58=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XOiz7hdJUz1GO1emwRIK5J++IbiKhvfBBLz/Q/8pEQozWLxsdzDkjOQhfx85VQ/SB
	 cTKQxmRDasDGhenNr34yWXQnF76xyZqqsR6n3nKQ8rO3kboIyEd8QDBmgBI9QQpvlP
	 orhJz7DdoHR17YjBjRzjLuAq2AUEMO20QzpxYbm89ddcB83ngpDieGjnvmhHi45INN
	 5rkxWdP7BxAoaO3AH39XafAvCjrHxCzEodqxQnsHNoOOarTyAE7Zikq29rw5pzeW0a
	 pg9XIuXYKS8KTgzTo6GU8cVyHN+sReBp3agQgftE0hqRt2xJzApLY1K90AV+P+RnRf
	 uJFrRSQ4nK6oQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E39D660E65;
	Fri, 23 May 2025 17:34:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 83818119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B91541BCE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rJ463HXkhgrF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 17:34:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 438F541BF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 438F541BF1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 438F541BF1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 17:34:31 +0000 (UTC)
X-CSE-ConnectionGUID: Y/1Hug6UQ/ST2Qa9+7t5ew==
X-CSE-MsgGUID: KT0wcXMtTqi0v76eNDW61A==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60343232"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="60343232"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 10:34:30 -0700
X-CSE-ConnectionGUID: SPtYHo3dSTiYU9g3+VK8cg==
X-CSE-MsgGUID: smY9oPDoScWgs+QfQ5R5pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="142178956"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa008.jf.intel.com with ESMTP; 23 May 2025 10:33:08 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, jiri@resnulli.us, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Fri, 23 May 2025 19:26:49 +0200
Message-Id: <20250523172650.1517164-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748021671; x=1779557671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/kY5QHOTi+kUVj58KSbtOxzvSn5xMJonGnnayd/Cs+M=;
 b=OvkugtjPvdYkgldZq66ve7ZGFHj6TU8ROUjiJOSN7cNWgWSgGhcRlkRY
 Huv5GGGxaJp/kPPHNl6j/Gmp5zmtSrPsQn4krGq8pgACH/5MYSwBzzuzM
 e5GH1+iE3zZGHGAk22+90VmWKRvmk/8o3wQwy9EJXFtbZMuLJBGyxiqIC
 Py5MGBWDqwDWxyUMCMViQ1Fd+a6yGXJe1pVVvRjmqdoTwLONQ825PPNX/
 2in7FqnHajPU/SNpPZpO5U7XCJm7y8Q02AuiFMMoWk2eK/XZldGawK2Tu
 123VGHo/MOgQcCyv1SOdILuiytNnOmlMM0Su2QW+a3yUKNsElQbtyd2sQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OvkugtjP
Subject: [Intel-wired-lan] [PATCH net-next v4 2/3] dpll: add reference sync
 get/set
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

Define function for reference sync pin registration and callback ops to
set/get current feature state.

Implement netlink handler to fill netlink messages with reference sync
pin configuration of capable pins (pin-get).

Implement netlink handler to call proper ops and configure reference
sync pin state (pin-set).

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v4:
- rename function args 'base' -> 'pin', 'sync' -> 'ref_sync_pin' within
  dpll_pin_ref_sync_pair_add(..),
- rename 'sp' -> 'ref_sync_pin', 'sp_priv' -> 'ref_sync_pin_priv' within
  dpll_msg_add_pin_ref_sync(..) to be consistent,
- rename 'sync_pin' -> 'ref_sync_pin', 'sync_pin_idx' -> 'ref_sync_pin_idx'
  within dpll_pin_ref_sync_state_set(..) to be consistent,
- remove user input state validation, as already done by nl policy,
- rename 'ref_pin' -> 'ref_sync_pin', 'ref_pin_priv' -> 'ref_sync_pin_priv'
  within dpll_pin_ops callbacks to be consistent.
- add notifications on ref_sync_pin add/remove,
- erase pin from the ref_sync_pins when pin is unregistered.
---
 drivers/dpll/dpll_core.c    |  45 +++++++++
 drivers/dpll/dpll_core.h    |   2 +
 drivers/dpll/dpll_netlink.c | 190 ++++++++++++++++++++++++++++++++----
 drivers/dpll/dpll_netlink.h |   2 +
 include/linux/dpll.h        |  13 +++
 5 files changed, 233 insertions(+), 19 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 20bdc52f63a5..1f698f521ea3 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -506,6 +506,7 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
 	refcount_set(&pin->refcount, 1);
 	xa_init_flags(&pin->dpll_refs, XA_FLAGS_ALLOC);
 	xa_init_flags(&pin->parent_refs, XA_FLAGS_ALLOC);
+	xa_init_flags(&pin->ref_sync_pins, XA_FLAGS_ALLOC);
 	ret = xa_alloc_cyclic(&dpll_pin_xa, &pin->id, pin, xa_limit_32b,
 			      &dpll_pin_xa_id, GFP_KERNEL);
 	if (ret < 0)
@@ -514,6 +515,7 @@ dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
 err_xa_alloc:
 	xa_destroy(&pin->dpll_refs);
 	xa_destroy(&pin->parent_refs);
+	xa_destroy(&pin->ref_sync_pins);
 	dpll_pin_prop_free(&pin->prop);
 err_pin_prop:
 	kfree(pin);
@@ -595,6 +597,7 @@ void dpll_pin_put(struct dpll_pin *pin)
 		xa_erase(&dpll_pin_xa, pin->id);
 		xa_destroy(&pin->dpll_refs);
 		xa_destroy(&pin->parent_refs);
+		xa_destroy(&pin->ref_sync_pins);
 		dpll_pin_prop_free(&pin->prop);
 		kfree_rcu(pin, rcu);
 	}
@@ -659,11 +662,26 @@ dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 }
 EXPORT_SYMBOL_GPL(dpll_pin_register);
 
+static void dpll_pin_ref_sync_pair_del(u32 ref_sync_pin_id)
+{
+	struct dpll_pin *pin, *ref_sync_pin;
+	unsigned long i;
+
+	xa_for_each(&dpll_pin_xa, i, pin) {
+		ref_sync_pin = xa_load(&pin->ref_sync_pins, ref_sync_pin_id);
+		if (ref_sync_pin) {
+			xa_erase(&pin->ref_sync_pins, ref_sync_pin_id);
+			__dpll_pin_change_ntf(pin);
+		}
+	}
+}
+
 static void
 __dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		      const struct dpll_pin_ops *ops, void *priv, void *cookie)
 {
 	ASSERT_DPLL_PIN_REGISTERED(pin);
+	dpll_pin_ref_sync_pair_del(pin->id);
 	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv, cookie);
 	dpll_xa_ref_dpll_del(&pin->dpll_refs, dpll, ops, priv, cookie);
 	if (xa_empty(&pin->dpll_refs))
@@ -783,6 +801,33 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 }
 EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
 
+/**
+ * dpll_pin_ref_sync_pair_add - create a reference sync signal pin pair
+ * @pin: pin which produces the base frequency
+ * @ref_sync_pin: pin which produces the sync signal
+ *
+ * Once pins are paired, the user-space configuration of reference sync pair
+ * is possible.
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * 0 on success
+ * * negative - error value
+ */
+int dpll_pin_ref_sync_pair_add(struct dpll_pin *pin,
+			       struct dpll_pin *ref_sync_pin)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	ret = xa_insert(&pin->ref_sync_pins, ref_sync_pin->pin_idx,
+			ref_sync_pin, GFP_KERNEL);
+	__dpll_pin_change_ntf(pin);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_pin_ref_sync_pair_add);
+
 static struct dpll_device_registration *
 dpll_device_registration_first(struct dpll_device *dpll)
 {
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
index 2b6d8ef1cdf3..93c68e78b351 100644
--- a/drivers/dpll/dpll_core.h
+++ b/drivers/dpll/dpll_core.h
@@ -44,6 +44,7 @@ struct dpll_device {
  * @module:		module of creator
  * @dpll_refs:		hold referencees to dplls pin was registered with
  * @parent_refs:	hold references to parent pins pin was registered with
+ * @ref_sync_pins:	hold references to pins for Reference SYNC feature
  * @prop:		pin properties copied from the registerer
  * @rclk_dev_name:	holds name of device when pin can recover clock from it
  * @refcount:		refcount
@@ -56,6 +57,7 @@ struct dpll_pin {
 	struct module *module;
 	struct xarray dpll_refs;
 	struct xarray parent_refs;
+	struct xarray ref_sync_pins;
 	struct dpll_pin_properties prop;
 	refcount_t refcount;
 	struct rcu_head rcu;
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
index c130f87147fa..7c46bac7bcd3 100644
--- a/drivers/dpll/dpll_netlink.c
+++ b/drivers/dpll/dpll_netlink.c
@@ -48,6 +48,24 @@ dpll_msg_add_dev_parent_handle(struct sk_buff *msg, u32 id)
 	return 0;
 }
 
+static bool dpll_pin_available(struct dpll_pin *pin)
+{
+	struct dpll_pin_ref *par_ref;
+	unsigned long i;
+
+	if (!xa_get_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED))
+		return false;
+	xa_for_each(&pin->parent_refs, i, par_ref)
+		if (xa_get_mark(&dpll_pin_xa, par_ref->pin->id,
+				DPLL_REGISTERED))
+			return true;
+	xa_for_each(&pin->dpll_refs, i, par_ref)
+		if (xa_get_mark(&dpll_device_xa, par_ref->dpll->id,
+				DPLL_REGISTERED))
+			return true;
+	return false;
+}
+
 /**
  * dpll_msg_add_pin_handle - attach pin handle attribute to a given message
  * @msg: pointer to sk_buff message to attach a pin handle
@@ -408,6 +426,47 @@ dpll_msg_add_pin_esync(struct sk_buff *msg, struct dpll_pin *pin,
 	return -EMSGSIZE;
 }
 
+static int
+dpll_msg_add_pin_ref_sync(struct sk_buff *msg, struct dpll_pin *pin,
+			  struct dpll_pin_ref *ref,
+			  struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	void *pin_priv, *ref_sync_pin_priv;
+	struct dpll_pin *ref_sync_pin;
+	enum dpll_pin_state state;
+	struct nlattr *nest;
+	unsigned long index;
+	int ret;
+
+	pin_priv = dpll_pin_on_dpll_priv(dpll, pin);
+	xa_for_each(&pin->ref_sync_pins, index, ref_sync_pin) {
+		if (!dpll_pin_available(ref_sync_pin))
+			continue;
+		ref_sync_pin_priv = dpll_pin_on_dpll_priv(dpll, ref_sync_pin);
+		if (WARN_ON(!ops->ref_sync_get))
+			return -EOPNOTSUPP;
+		ret = ops->ref_sync_get(pin, pin_priv, ref_sync_pin,
+					ref_sync_pin_priv, &state, extack);
+		if (ret)
+			return ret;
+		nest = nla_nest_start(msg, DPLL_A_PIN_REFERENCE_SYNC);
+		if (!nest)
+			return -EMSGSIZE;
+		if (nla_put_s32(msg, DPLL_A_PIN_ID, ref_sync_pin->id))
+			goto nest_cancel;
+		if (nla_put_s32(msg, DPLL_A_PIN_STATE, state))
+			goto nest_cancel;
+		nla_nest_end(msg, nest);
+	}
+	return 0;
+
+nest_cancel:
+	nla_nest_cancel(msg, nest);
+	return -EMSGSIZE;
+}
+
 static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
 {
 	int fs;
@@ -550,6 +609,10 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
 	if (ret)
 		return ret;
 	ret = dpll_msg_add_pin_esync(msg, pin, ref, extack);
+	if (ret)
+		return ret;
+	if (!xa_empty(&pin->ref_sync_pins))
+		ret = dpll_msg_add_pin_ref_sync(msg, pin, ref, extack);
 	if (ret)
 		return ret;
 	if (xa_empty(&pin->parent_refs))
@@ -642,24 +705,6 @@ __dpll_device_change_ntf(struct dpll_device *dpll)
 	return dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
 }
 
-static bool dpll_pin_available(struct dpll_pin *pin)
-{
-	struct dpll_pin_ref *par_ref;
-	unsigned long i;
-
-	if (!xa_get_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED))
-		return false;
-	xa_for_each(&pin->parent_refs, i, par_ref)
-		if (xa_get_mark(&dpll_pin_xa, par_ref->pin->id,
-				DPLL_REGISTERED))
-			return true;
-	xa_for_each(&pin->dpll_refs, i, par_ref)
-		if (xa_get_mark(&dpll_device_xa, par_ref->dpll->id,
-				DPLL_REGISTERED))
-			return true;
-	return false;
-}
-
 /**
  * dpll_device_change_ntf - notify that the dpll device has been changed
  * @dpll: registered dpll pointer
@@ -722,7 +767,7 @@ int dpll_pin_delete_ntf(struct dpll_pin *pin)
 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
 }
 
-static int __dpll_pin_change_ntf(struct dpll_pin *pin)
+int __dpll_pin_change_ntf(struct dpll_pin *pin)
 {
 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
 }
@@ -887,6 +932,108 @@ dpll_pin_esync_set(struct dpll_pin *pin, struct nlattr *a,
 	return ret;
 }
 
+static int
+dpll_pin_ref_sync_state_set(struct dpll_pin *pin,
+			    unsigned long ref_sync_pin_idx,
+			    const enum dpll_pin_state state,
+			    struct netlink_ext_ack *extack)
+
+{
+	struct dpll_pin_ref *ref, *failed;
+	const struct dpll_pin_ops *ops;
+	enum dpll_pin_state old_state;
+	struct dpll_pin *ref_sync_pin;
+	struct dpll_device *dpll;
+	unsigned long i;
+	int ret;
+
+	ref_sync_pin = xa_find(&pin->ref_sync_pins, &ref_sync_pin_idx,
+			       ULONG_MAX, XA_PRESENT);
+	if (!ref_sync_pin) {
+		NL_SET_ERR_MSG(extack, "reference sync pin not found");
+		return -EINVAL;
+	}
+	if (!dpll_pin_available(ref_sync_pin)) {
+		NL_SET_ERR_MSG(extack, "reference sync pin not available");
+		return -EINVAL;
+	}
+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
+	ASSERT_NOT_NULL(ref);
+	ops = dpll_pin_ops(ref);
+	if (!ops->ref_sync_set || !ops->ref_sync_get) {
+		NL_SET_ERR_MSG(extack, "reference sync not supported by this pin");
+		return -EOPNOTSUPP;
+	}
+	dpll = ref->dpll;
+	ret = ops->ref_sync_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				ref_sync_pin,
+				dpll_pin_on_dpll_priv(dpll, ref_sync_pin),
+				&old_state, extack);
+	if (ret) {
+		NL_SET_ERR_MSG(extack, "unable to get old reference sync state");
+		return ret;
+	}
+	if (state == old_state)
+		return 0;
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		ret = ops->ref_sync_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+					ref_sync_pin,
+					dpll_pin_on_dpll_priv(dpll,
+							      ref_sync_pin),
+					state, extack);
+		if (ret) {
+			failed = ref;
+			NL_SET_ERR_MSG_FMT(extack, "reference sync set failed for dpll_id:%u",
+					   dpll->id);
+			goto rollback;
+		}
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+
+rollback:
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		if (ref == failed)
+			break;
+		ops = dpll_pin_ops(ref);
+		dpll = ref->dpll;
+		if (ops->ref_sync_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				      ref_sync_pin,
+				      dpll_pin_on_dpll_priv(dpll, ref_sync_pin),
+				      old_state, extack))
+			NL_SET_ERR_MSG(extack, "set reference sync rollback failed");
+	}
+	return ret;
+}
+
+static int
+dpll_pin_ref_sync_set(struct dpll_pin *pin, struct nlattr *nest,
+		      struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[DPLL_A_PIN_MAX + 1];
+	enum dpll_pin_state state;
+	u32 sync_pin_id;
+
+	nla_parse_nested(tb, DPLL_A_PIN_MAX, nest,
+			 dpll_reference_sync_nl_policy, extack);
+	if (!tb[DPLL_A_PIN_ID]) {
+		NL_SET_ERR_MSG(extack, "sync pin id expected");
+		return -EINVAL;
+	}
+	sync_pin_id = nla_get_u32(tb[DPLL_A_PIN_ID]);
+
+	if (!tb[DPLL_A_PIN_STATE]) {
+		NL_SET_ERR_MSG(extack, "sync pin state expected");
+		return -EINVAL;
+	}
+	state = nla_get_u32(tb[DPLL_A_PIN_STATE]);
+
+	return dpll_pin_ref_sync_state_set(pin, sync_pin_id, state, extack);
+}
+
 static int
 dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
 			  enum dpll_pin_state state,
@@ -1193,6 +1340,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
 			if (ret)
 				return ret;
 			break;
+		case DPLL_A_PIN_REFERENCE_SYNC:
+			ret = dpll_pin_ref_sync_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
 		}
 	}
 
diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
index a9cfd55f57fc..dd28b56d27c5 100644
--- a/drivers/dpll/dpll_netlink.h
+++ b/drivers/dpll/dpll_netlink.h
@@ -11,3 +11,5 @@ int dpll_device_delete_ntf(struct dpll_device *dpll);
 int dpll_pin_create_ntf(struct dpll_pin *pin);
 
 int dpll_pin_delete_ntf(struct dpll_pin *pin);
+
+int __dpll_pin_change_ntf(struct dpll_pin *pin);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index 5e4f9ab1cf75..024dc8d660a0 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -95,6 +95,16 @@ struct dpll_pin_ops {
 			 const struct dpll_device *dpll, void *dpll_priv,
 			 struct dpll_pin_esync *esync,
 			 struct netlink_ext_ack *extack);
+	int (*ref_sync_set)(const struct dpll_pin *pin, void *pin_priv,
+			    const struct dpll_pin *ref_sync_pin,
+			    void *ref_sync_pin_priv,
+			    const enum dpll_pin_state state,
+			    struct netlink_ext_ack *extack);
+	int (*ref_sync_get)(const struct dpll_pin *pin, void *pin_priv,
+			    const struct dpll_pin *ref_sync_pin,
+			    void *ref_sync_pin_priv,
+			    enum dpll_pin_state *state,
+			    struct netlink_ext_ack *extack);
 };
 
 struct dpll_pin_frequency {
@@ -194,6 +204,9 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 				const struct dpll_pin_ops *ops, void *priv);
 
+int dpll_pin_ref_sync_pair_add(struct dpll_pin *pin,
+			       struct dpll_pin *ref_sync_pin);
+
 int dpll_device_change_ntf(struct dpll_device *dpll);
 
 int dpll_pin_change_ntf(struct dpll_pin *pin);
-- 
2.38.1

