Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2F2787A7F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 23:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1793441DBD;
	Thu, 24 Aug 2023 21:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1793441DBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692912737;
	bh=Bmw5YN8iak5S8wqP/h1TlczkUsea42USmQc9TmmXt2Y=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bb1M33iqAL/DgEgy00+9zDxSQMIqTzaCEyLMUFsI0Wpf+ltIfFzXfNR/R6CGqJ8pE
	 YkwJx8u+XQiPt9iTNm3zbJAxfZOefdu15bTMYC06kBtX0Qnv2+vSAHOmL57EGPxP0l
	 Xu2hLVNg1L4+XQJ8nak+hOrw7yAwvGknC15TvjDuC3NoaOzgy+novXFPKJ32NAfah5
	 AtMfKIL5XLjihFF7Bb/eFyyDto2QAk3qPBb5OY6fP5oP7YD4F7EO5yYEN3v5qkMDzy
	 cAVvNzUmDDgWFV4rmdSsRg/YLJrA7YTXj1LP5vp9uXSmN6XNwl0SKoF/Gkd5n7qyyF
	 vQmSB63+kAe6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVdsswWva_19; Thu, 24 Aug 2023 21:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4821A41D83;
	Thu, 24 Aug 2023 21:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4821A41D83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8F51BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D83A741D9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D83A741D9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwakghU9pAQF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 21:31:43 +0000 (UTC)
Received: from out-41.mta0.migadu.com (out-41.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 71A8D41D83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71A8D41D83
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Thu, 24 Aug 2023 22:31:27 +0100
Message-Id: <20230824213132.827338-5-vadim.fedorenko@linux.dev>
In-Reply-To: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
References: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692912701;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G90Q6qLc0f1xMf2M7//tk2QueiicL78TEVydjKJMhek=;
 b=UT5ySfoKwDK+liMJAqJhEn/OhZbVNylYJruHewI+f6wwj+WDGe6wuuw2Xm6x6hNoyJ2Qwd
 XjcrdXzuQtS3WAjftfcs45Sn8h0tWWWFFCt96VQroNJp0mWnOSWlvyzWMV5oViQDIYElB9
 ifxzf0qqcMBvJl0ebBfqoxR1gKfXgVU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=UT5ySfoK
Subject: [Intel-wired-lan] [PATCH net-next v7 4/9] dpll: netlink: Add DPLL
 framework base functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DPLL framework is used to represent and configure DPLL devices
in systems. Each device that has DPLL and can configure inputs
and outputs can use this framework.

Implement dpll netlink framework functions for enablement of dpll
subsystem netlink family.

Co-developed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jiri Pirko <jiri@nvidia.com>
---
v6->v7:
- when multiple dplls are present in the OS and users construct invalid
  pin set netlink request with the target dpll not belonging to the pin,
  but with the same id as device_id that was provided by the kernel
  module the system would crash, prevent by use dpll->id as index for
  storing and loading the dpll from pin's dpll_refs xarray
v5->v6:
- rename attribute name DPLL_A_PIN_DPLL_CAPS -> DPLL_A_PIN_CAPABILITIES
- rename enum prefix DPLL_PIN_CAPS_* -> DPLL_PIN_CAPABILITIES_*
v4->v5:
- split pin into separated attribute space
- use u32 instead of u8 for all attributes as in dpll spec
- use DPLL_A_PAD for 64bit attrs of device
- use DPLL_A_PIN_PAD for 64bit pin related attrs
- fix don't use WARN_ON when target device exist but not connected to
  the pin being configured, extack and return error instead
v3->v4:
- rebase on top of net-next
v2->v3:
- extack error messages are clarified
v1->v2:
- add proper policy while parsing nested attributes
- remove DETACHED mode
- move init/exit functions to core part

 drivers/dpll/dpll_core.c    |   11 +-
 drivers/dpll/dpll_netlink.c | 1241 +++++++++++++++++++++++++++++++++++
 drivers/dpll/dpll_netlink.h |   13 +
 include/linux/dpll.h        |    4 +
 4 files changed, 1268 insertions(+), 1 deletion(-)
 create mode 100644 drivers/dpll/dpll_netlink.c
 create mode 100644 drivers/dpll/dpll_netlink.h

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index 6449ba6a383b..3568149b9562 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -14,6 +14,7 @@
 #include <linux/string.h>
 
 #include "dpll_core.h"
+#include "dpll_netlink.h"
 
 /* Mutex lock to protect DPLL subsystem devices and pins */
 DEFINE_MUTEX(dpll_lock);
@@ -381,6 +382,7 @@ int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
 	}
 
 	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
+	dpll_device_create_ntf(dpll);
 	mutex_unlock(&dpll_lock);
 
 	return 0;
@@ -404,6 +406,7 @@ void dpll_device_unregister(struct dpll_device *dpll,
 
 	mutex_lock(&dpll_lock);
 	ASSERT_DPLL_REGISTERED(dpll);
+	dpll_device_delete_ntf(dpll);
 	reg = dpll_device_registration_find(dpll, ops, priv);
 	if (WARN_ON(!reg)) {
 		mutex_unlock(&dpll_lock);
@@ -528,6 +531,7 @@ __dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
 	if (ret)
 		goto ref_pin_del;
 	xa_set_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
+	dpll_pin_create_ntf(pin);
 
 	return ret;
 
@@ -602,6 +606,7 @@ void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
 		return;
 
 	mutex_lock(&dpll_lock);
+	dpll_pin_delete_ntf(pin);
 	__dpll_pin_unregister(dpll, pin, ops, priv);
 	mutex_unlock(&dpll_lock);
 }
@@ -650,6 +655,7 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 			stop = i;
 			goto dpll_unregister;
 		}
+		dpll_pin_create_ntf(pin);
 	}
 	mutex_unlock(&dpll_lock);
 
@@ -657,8 +663,10 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 
 dpll_unregister:
 	xa_for_each(&parent->dpll_refs, i, ref)
-		if (i < stop)
+		if (i < stop) {
 			__dpll_pin_unregister(ref->dpll, pin, ops, priv);
+			dpll_pin_delete_ntf(pin);
+		}
 	refcount_dec(&pin->refcount);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
 unlock:
@@ -684,6 +692,7 @@ void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 	unsigned long i;
 
 	mutex_lock(&dpll_lock);
+	dpll_pin_delete_ntf(pin);
 	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
 	refcount_dec(&pin->refcount);
 	xa_for_each(&pin->dpll_refs, i, ref)
diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
new file mode 100644
index 000000000000..9464a6865977
--- /dev/null
+++ b/drivers/dpll/dpll_netlink.c
@@ -0,0 +1,1241 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Generic netlink for DPLL management framework
+ *
+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
+ *  Copyright (c) 2023 Intel and affiliates
+ *
+ */
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <net/genetlink.h>
+#include "dpll_core.h"
+#include "dpll_netlink.h"
+#include "dpll_nl.h"
+#include <uapi/linux/dpll.h>
+
+#define ASSERT_NOT_NULL(ptr)	(WARN_ON(!ptr))
+
+#define xa_for_each_marked_start(xa, index, entry, filter, start) \
+	for (index = start, entry = xa_find(xa, &index, ULONG_MAX, filter); \
+	     entry; entry = xa_find_after(xa, &index, ULONG_MAX, filter))
+
+struct dpll_dump_ctx {
+	unsigned long idx;
+};
+
+static struct dpll_dump_ctx *dpll_dump_context(struct netlink_callback *cb)
+{
+	return (struct dpll_dump_ctx *)cb->ctx;
+}
+
+static int
+dpll_msg_add_dev_handle(struct sk_buff *msg, struct dpll_device *dpll)
+{
+	if (nla_put_u32(msg, DPLL_A_ID, dpll->id))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_dev_parent_handle(struct sk_buff *msg, u32 id)
+{
+	if (nla_put_u32(msg, DPLL_A_PIN_PARENT_ID, id))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+/**
+ * dpll_msg_add_pin_handle - attach pin handle attribute to a given message
+ * @msg: pointer to sk_buff message to attach a pin handle
+ * @pin: pin pointer
+ *
+ * Return:
+ * * 0 - success
+ * * -EMSGSIZE - no space in message to attach pin handle
+ */
+static int
+dpll_msg_add_pin_handle(struct sk_buff *msg, struct dpll_pin *pin)
+{
+	if (!pin)
+		return 0;
+	if (nla_put_u32(msg, DPLL_A_PIN_ID, pin->id))
+		return -EMSGSIZE;
+	return 0;
+}
+
+static int
+dpll_msg_add_mode(struct sk_buff *msg, struct dpll_device *dpll,
+		  struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	enum dpll_mode mode;
+	int ret;
+
+	ret = ops->mode_get(dpll, dpll_priv(dpll), &mode, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_MODE, mode))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_mode_supported(struct sk_buff *msg, struct dpll_device *dpll,
+			    struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	enum dpll_mode mode;
+
+	if (!ops->mode_supported)
+		return 0;
+	for (mode = DPLL_MODE_MANUAL; mode <= DPLL_MODE_MAX; mode++)
+		if (ops->mode_supported(dpll, dpll_priv(dpll), mode, extack))
+			if (nla_put_u32(msg, DPLL_A_MODE_SUPPORTED, mode))
+				return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_lock_status(struct sk_buff *msg, struct dpll_device *dpll,
+			 struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	enum dpll_lock_status status;
+	int ret;
+
+	ret = ops->lock_status_get(dpll, dpll_priv(dpll), &status, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_LOCK_STATUS, status))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_temp(struct sk_buff *msg, struct dpll_device *dpll,
+		  struct netlink_ext_ack *extack)
+{
+	const struct dpll_device_ops *ops = dpll_device_ops(dpll);
+	s32 temp;
+	int ret;
+
+	if (!ops->temp_get)
+		return 0;
+	ret = ops->temp_get(dpll, dpll_priv(dpll), &temp, extack);
+	if (ret)
+		return ret;
+	if (nla_put_s32(msg, DPLL_A_TEMP, temp))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_pin_prio(struct sk_buff *msg, struct dpll_pin *pin,
+		      struct dpll_pin_ref *ref,
+		      struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	u32 prio;
+	int ret;
+
+	if (!ops->prio_get)
+		return 0;
+	ret = ops->prio_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+			    dpll_priv(dpll), &prio, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_PIN_PRIO, prio))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_pin_on_dpll_state(struct sk_buff *msg, struct dpll_pin *pin,
+			       struct dpll_pin_ref *ref,
+			       struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	enum dpll_pin_state state;
+	int ret;
+
+	if (!ops->state_on_dpll_get)
+		return 0;
+	ret = ops->state_on_dpll_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				     dpll, dpll_priv(dpll), &state, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_PIN_STATE, state))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_pin_direction(struct sk_buff *msg, struct dpll_pin *pin,
+			   struct dpll_pin_ref *ref,
+			   struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	enum dpll_pin_direction direction;
+	int ret;
+
+	ret = ops->direction_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+				 dpll_priv(dpll), &direction, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_PIN_DIRECTION, direction))
+		return -EMSGSIZE;
+
+	return 0;
+}
+
+static int
+dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
+		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+	struct dpll_device *dpll = ref->dpll;
+	struct nlattr *nest;
+	int fs, ret;
+	u64 freq;
+
+	if (!ops->frequency_get)
+		return 0;
+	ret = ops->frequency_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+				 dpll_priv(dpll), &freq, extack);
+	if (ret)
+		return ret;
+	if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY, sizeof(freq), &freq,
+			  DPLL_A_PIN_PAD))
+		return -EMSGSIZE;
+	for (fs = 0; fs < pin->prop->freq_supported_num; fs++) {
+		nest = nla_nest_start(msg, DPLL_A_PIN_FREQUENCY_SUPPORTED);
+		if (!nest)
+			return -EMSGSIZE;
+		freq = pin->prop->freq_supported[fs].min;
+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MIN, sizeof(freq),
+				  &freq, DPLL_A_PIN_PAD)) {
+			nla_nest_cancel(msg, nest);
+			return -EMSGSIZE;
+		}
+		freq = pin->prop->freq_supported[fs].max;
+		if (nla_put_64bit(msg, DPLL_A_PIN_FREQUENCY_MAX, sizeof(freq),
+				  &freq, DPLL_A_PIN_PAD)) {
+			nla_nest_cancel(msg, nest);
+			return -EMSGSIZE;
+		}
+		nla_nest_end(msg, nest);
+	}
+
+	return 0;
+}
+
+static bool dpll_pin_is_freq_supported(struct dpll_pin *pin, u32 freq)
+{
+	int fs;
+
+	for (fs = 0; fs < pin->prop->freq_supported_num; fs++)
+		if (freq >= pin->prop->freq_supported[fs].min &&
+		    freq <= pin->prop->freq_supported[fs].max)
+			return true;
+	return false;
+}
+
+static int
+dpll_msg_add_pin_parents(struct sk_buff *msg, struct dpll_pin *pin,
+			 struct dpll_pin_ref *dpll_ref,
+			 struct netlink_ext_ack *extack)
+{
+	enum dpll_pin_state state;
+	struct dpll_pin_ref *ref;
+	struct dpll_pin *ppin;
+	struct nlattr *nest;
+	unsigned long index;
+	int ret;
+
+	xa_for_each(&pin->parent_refs, index, ref) {
+		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+		void *parent_priv;
+
+		ppin = ref->pin;
+		parent_priv = dpll_pin_on_dpll_priv(dpll_ref->dpll, ppin);
+		ret = ops->state_on_pin_get(pin,
+					    dpll_pin_on_pin_priv(ppin, pin),
+					    ppin, parent_priv, &state, extack);
+		if (ret)
+			return ret;
+		nest = nla_nest_start(msg, DPLL_A_PIN_PARENT_PIN);
+		if (!nest)
+			return -EMSGSIZE;
+		ret = dpll_msg_add_dev_parent_handle(msg, ppin->id);
+		if (ret)
+			goto nest_cancel;
+		if (nla_put_u32(msg, DPLL_A_PIN_STATE, state)) {
+			ret = -EMSGSIZE;
+			goto nest_cancel;
+		}
+		nla_nest_end(msg, nest);
+	}
+
+	return 0;
+
+nest_cancel:
+	nla_nest_cancel(msg, nest);
+	return ret;
+}
+
+static int
+dpll_msg_add_pin_dplls(struct sk_buff *msg, struct dpll_pin *pin,
+		       struct netlink_ext_ack *extack)
+{
+	struct dpll_pin_ref *ref;
+	struct nlattr *attr;
+	unsigned long index;
+	int ret;
+
+	xa_for_each(&pin->dpll_refs, index, ref) {
+		attr = nla_nest_start(msg, DPLL_A_PIN_PARENT_DEVICE);
+		if (!attr)
+			return -EMSGSIZE;
+		ret = dpll_msg_add_dev_parent_handle(msg, ref->dpll->id);
+		if (ret)
+			goto nest_cancel;
+		ret = dpll_msg_add_pin_on_dpll_state(msg, pin, ref, extack);
+		if (ret)
+			goto nest_cancel;
+		ret = dpll_msg_add_pin_prio(msg, pin, ref, extack);
+		if (ret)
+			goto nest_cancel;
+		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
+		if (ret)
+			goto nest_cancel;
+		nla_nest_end(msg, attr);
+	}
+
+	return 0;
+
+nest_cancel:
+	nla_nest_end(msg, attr);
+	return ret;
+}
+
+static int
+dpll_cmd_pin_get_one(struct sk_buff *msg, struct dpll_pin *pin,
+		     struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_properties *prop = pin->prop;
+	struct dpll_pin_ref *ref;
+	int ret;
+
+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
+	ASSERT_NOT_NULL(ref);
+
+	ret = dpll_msg_add_pin_handle(msg, pin);
+	if (ret)
+		return ret;
+	if (nla_put_string(msg, DPLL_A_PIN_MODULE_NAME,
+			   module_name(pin->module)))
+		return -EMSGSIZE;
+	if (nla_put_64bit(msg, DPLL_A_PIN_CLOCK_ID, sizeof(pin->clock_id),
+			  &pin->clock_id, DPLL_A_PIN_PAD))
+		return -EMSGSIZE;
+	if (prop->board_label &&
+	    nla_put_string(msg, DPLL_A_PIN_BOARD_LABEL, prop->board_label))
+		return -EMSGSIZE;
+	if (prop->panel_label &&
+	    nla_put_string(msg, DPLL_A_PIN_PANEL_LABEL, prop->panel_label))
+		return -EMSGSIZE;
+	if (prop->package_label &&
+	    nla_put_string(msg, DPLL_A_PIN_PACKAGE_LABEL,
+			   prop->package_label))
+		return -EMSGSIZE;
+	if (nla_put_u32(msg, DPLL_A_PIN_TYPE, prop->type))
+		return -EMSGSIZE;
+	if (nla_put_u32(msg, DPLL_A_PIN_CAPABILITIES, prop->capabilities))
+		return -EMSGSIZE;
+	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack);
+	if (ret)
+		return ret;
+	if (xa_empty(&pin->parent_refs))
+		ret = dpll_msg_add_pin_dplls(msg, pin, extack);
+	else
+		ret = dpll_msg_add_pin_parents(msg, pin, ref, extack);
+
+	return ret;
+}
+
+static int
+dpll_device_get_one(struct dpll_device *dpll, struct sk_buff *msg,
+		    struct netlink_ext_ack *extack)
+{
+	int ret;
+
+	ret = dpll_msg_add_dev_handle(msg, dpll);
+	if (ret)
+		return ret;
+	if (nla_put_string(msg, DPLL_A_MODULE_NAME, module_name(dpll->module)))
+		return -EMSGSIZE;
+	if (nla_put_64bit(msg, DPLL_A_CLOCK_ID, sizeof(dpll->clock_id),
+			  &dpll->clock_id, DPLL_A_PAD))
+		return -EMSGSIZE;
+	ret = dpll_msg_add_temp(msg, dpll, extack);
+	if (ret)
+		return ret;
+	ret = dpll_msg_add_lock_status(msg, dpll, extack);
+	if (ret)
+		return ret;
+	ret = dpll_msg_add_mode(msg, dpll, extack);
+	if (ret)
+		return ret;
+	ret = dpll_msg_add_mode_supported(msg, dpll, extack);
+	if (ret)
+		return ret;
+	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
+		return -EMSGSIZE;
+
+	return ret;
+}
+
+static int
+dpll_device_event_send(enum dpll_cmd event, struct dpll_device *dpll)
+{
+	struct sk_buff *msg;
+	int ret = -ENOMEM;
+	void *hdr;
+
+	if (WARN_ON(!xa_get_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED)))
+		return -ENODEV;
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	hdr = genlmsg_put(msg, 0, 0, &dpll_nl_family, 0, event);
+	if (!hdr)
+		goto err_free_msg;
+	ret = dpll_device_get_one(dpll, msg, NULL);
+	if (ret)
+		goto err_cancel_msg;
+	genlmsg_end(msg, hdr);
+	genlmsg_multicast(&dpll_nl_family, msg, 0, 0, GFP_KERNEL);
+
+	return 0;
+
+err_cancel_msg:
+	genlmsg_cancel(msg, hdr);
+err_free_msg:
+	nlmsg_free(msg);
+
+	return ret;
+}
+
+int dpll_device_create_ntf(struct dpll_device *dpll)
+{
+	return dpll_device_event_send(DPLL_CMD_DEVICE_CREATE_NTF, dpll);
+}
+
+int dpll_device_delete_ntf(struct dpll_device *dpll)
+{
+	return dpll_device_event_send(DPLL_CMD_DEVICE_DELETE_NTF, dpll);
+}
+
+static int
+__dpll_device_change_ntf(struct dpll_device *dpll)
+{
+	return dpll_device_event_send(DPLL_CMD_DEVICE_CHANGE_NTF, dpll);
+}
+
+/**
+ * dpll_device_change_ntf - notify that the dpll device has been changed
+ * @dpll: registered dpll pointer
+ *
+ * Context: acquires and holds a dpll_lock.
+ * Return: 0 if succeeds, error code otherwise.
+ */
+int dpll_device_change_ntf(struct dpll_device *dpll)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	ret = __dpll_device_change_ntf(dpll);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_device_change_ntf);
+
+static int
+dpll_pin_event_send(enum dpll_cmd event, struct dpll_pin *pin)
+{
+	struct sk_buff *msg;
+	int ret = -ENOMEM;
+	void *hdr;
+
+	if (WARN_ON(!xa_get_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED)))
+		return -ENODEV;
+
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+
+	hdr = genlmsg_put(msg, 0, 0, &dpll_nl_family, 0, event);
+	if (!hdr)
+		goto err_free_msg;
+	ret = dpll_cmd_pin_get_one(msg, pin, NULL);
+	if (ret)
+		goto err_cancel_msg;
+	genlmsg_end(msg, hdr);
+	genlmsg_multicast(&dpll_nl_family, msg, 0, 0, GFP_KERNEL);
+
+	return 0;
+
+err_cancel_msg:
+	genlmsg_cancel(msg, hdr);
+err_free_msg:
+	nlmsg_free(msg);
+
+	return ret;
+}
+
+int dpll_pin_create_ntf(struct dpll_pin *pin)
+{
+	return dpll_pin_event_send(DPLL_CMD_PIN_CREATE_NTF, pin);
+}
+
+int dpll_pin_delete_ntf(struct dpll_pin *pin)
+{
+	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
+}
+
+static int __dpll_pin_change_ntf(struct dpll_pin *pin)
+{
+	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
+}
+
+/**
+ * dpll_pin_change_ntf - notify that the pin has been changed
+ * @pin: registered pin pointer
+ *
+ * Context: acquires and holds a dpll_lock.
+ * Return: 0 if succeeds, error code otherwise.
+ */
+int dpll_pin_change_ntf(struct dpll_pin *pin)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	ret = __dpll_pin_change_ntf(pin);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_pin_change_ntf);
+
+static int
+dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
+		  struct netlink_ext_ack *extack)
+{
+	u64 freq = nla_get_u64(a);
+	struct dpll_pin_ref *ref;
+	unsigned long i;
+	int ret;
+
+	if (!dpll_pin_is_freq_supported(pin, freq)) {
+		NL_SET_ERR_MSG_ATTR(extack, a, "frequency is not supported by the device");
+		return -EINVAL;
+	}
+
+	xa_for_each(&pin->dpll_refs, i, ref) {
+		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
+		struct dpll_device *dpll = ref->dpll;
+
+		if (!ops->frequency_set)
+			return -EOPNOTSUPP;
+		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+					 dpll, dpll_priv(dpll), freq, extack);
+		if (ret)
+			return ret;
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
+static int
+dpll_pin_on_pin_state_set(struct dpll_pin *pin, u32 parent_idx,
+			  enum dpll_pin_state state,
+			  struct netlink_ext_ack *extack)
+{
+	struct dpll_pin_ref *parent_ref;
+	const struct dpll_pin_ops *ops;
+	struct dpll_pin_ref *dpll_ref;
+	void *pin_priv, *parent_priv;
+	struct dpll_pin *parent;
+	unsigned long i;
+	int ret;
+
+	if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE &
+	      pin->prop->capabilities)) {
+		NL_SET_ERR_MSG(extack, "state changing is not allowed");
+		return -EOPNOTSUPP;
+	}
+	parent = xa_load(&dpll_pin_xa, parent_idx);
+	if (!parent)
+		return -EINVAL;
+	parent_ref = xa_load(&pin->parent_refs, parent->pin_idx);
+	if (!parent_ref)
+		return -EINVAL;
+	xa_for_each(&parent->dpll_refs, i, dpll_ref) {
+		ops = dpll_pin_ops(parent_ref);
+		if (!ops->state_on_pin_set)
+			return -EOPNOTSUPP;
+		pin_priv = dpll_pin_on_pin_priv(parent, pin);
+		parent_priv = dpll_pin_on_dpll_priv(dpll_ref->dpll, parent);
+		ret = ops->state_on_pin_set(pin, pin_priv, parent, parent_priv,
+					    state, extack);
+		if (ret)
+			return ret;
+	}
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
+static int
+dpll_pin_state_set(struct dpll_device *dpll, struct dpll_pin *pin,
+		   enum dpll_pin_state state,
+		   struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops;
+	struct dpll_pin_ref *ref;
+	int ret;
+
+	if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE &
+	      pin->prop->capabilities)) {
+		NL_SET_ERR_MSG(extack, "state changing is not allowed");
+		return -EOPNOTSUPP;
+	}
+	ref = xa_load(&pin->dpll_refs, dpll->id);
+	ASSERT_NOT_NULL(ref);
+	ops = dpll_pin_ops(ref);
+	if (!ops->state_on_dpll_set)
+		return -EOPNOTSUPP;
+	ret = ops->state_on_dpll_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				     dpll, dpll_priv(dpll), state, extack);
+	if (ret)
+		return ret;
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
+static int
+dpll_pin_prio_set(struct dpll_device *dpll, struct dpll_pin *pin,
+		  u32 prio, struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops;
+	struct dpll_pin_ref *ref;
+	int ret;
+
+	if (!(DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE &
+	      pin->prop->capabilities)) {
+		NL_SET_ERR_MSG(extack, "prio changing is not allowed");
+		return -EOPNOTSUPP;
+	}
+	ref = xa_load(&pin->dpll_refs, dpll->id);
+	ASSERT_NOT_NULL(ref);
+	ops = dpll_pin_ops(ref);
+	if (!ops->prio_set)
+		return -EOPNOTSUPP;
+	ret = ops->prio_set(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
+			    dpll_priv(dpll), prio, extack);
+	if (ret)
+		return ret;
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
+static int
+dpll_pin_direction_set(struct dpll_pin *pin, struct dpll_device *dpll,
+		       enum dpll_pin_direction direction,
+		       struct netlink_ext_ack *extack)
+{
+	const struct dpll_pin_ops *ops;
+	struct dpll_pin_ref *ref;
+	int ret;
+
+	if (!(DPLL_PIN_CAPABILITIES_DIRECTION_CAN_CHANGE &
+	      pin->prop->capabilities)) {
+		NL_SET_ERR_MSG(extack, "direction changing is not allowed");
+		return -EOPNOTSUPP;
+	}
+	ref = xa_load(&pin->dpll_refs, dpll->id);
+	ASSERT_NOT_NULL(ref);
+	ops = dpll_pin_ops(ref);
+	if (!ops->direction_set)
+		return -EOPNOTSUPP;
+	ret = ops->direction_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
+				 dpll, dpll_priv(dpll), direction, extack);
+	if (ret)
+		return ret;
+	__dpll_pin_change_ntf(pin);
+
+	return 0;
+}
+
+static int
+dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr *parent_nest,
+			   struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[DPLL_A_PIN_MAX + 1];
+	enum dpll_pin_direction direction;
+	enum dpll_pin_state state;
+	struct dpll_pin_ref *ref;
+	struct dpll_device *dpll;
+	u32 pdpll_idx, prio;
+	int ret;
+
+	nla_parse_nested(tb, DPLL_A_PIN_MAX, parent_nest,
+			 dpll_pin_parent_device_nl_policy, extack);
+	if (!tb[DPLL_A_PIN_PARENT_ID]) {
+		NL_SET_ERR_MSG(extack, "device parent id expected");
+		return -EINVAL;
+	}
+	pdpll_idx = nla_get_u32(tb[DPLL_A_PIN_PARENT_ID]);
+	dpll = xa_load(&dpll_device_xa, pdpll_idx);
+	if (!dpll) {
+		NL_SET_ERR_MSG(extack, "parent device not found");
+		return -EINVAL;
+	}
+	ref = xa_load(&pin->dpll_refs, dpll->id);
+	if (!ref) {
+		NL_SET_ERR_MSG(extack, "pin not connected to given parent device");
+		return -EINVAL;
+	}
+	if (tb[DPLL_A_PIN_STATE]) {
+		state = nla_get_u32(tb[DPLL_A_PIN_STATE]);
+		ret = dpll_pin_state_set(dpll, pin, state, extack);
+		if (ret)
+			return ret;
+	}
+	if (tb[DPLL_A_PIN_PRIO]) {
+		prio = nla_get_u32(tb[DPLL_A_PIN_PRIO]);
+		ret = dpll_pin_prio_set(dpll, pin, prio, extack);
+		if (ret)
+			return ret;
+	}
+	if (tb[DPLL_A_PIN_DIRECTION]) {
+		direction = nla_get_u32(tb[DPLL_A_PIN_DIRECTION]);
+		ret = dpll_pin_direction_set(pin, dpll, direction, extack);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static int
+dpll_pin_parent_pin_set(struct dpll_pin *pin, struct nlattr *parent_nest,
+			struct netlink_ext_ack *extack)
+{
+	struct nlattr *tb[DPLL_A_PIN_MAX + 1];
+	enum dpll_pin_state state;
+	u32 ppin_idx;
+	int ret;
+
+	nla_parse_nested(tb, DPLL_A_PIN_MAX, parent_nest,
+			 dpll_pin_parent_pin_nl_policy, extack);
+	if (!tb[DPLL_A_PIN_PARENT_ID]) {
+		NL_SET_ERR_MSG(extack, "device parent id expected");
+		return -EINVAL;
+	}
+	ppin_idx = nla_get_u32(tb[DPLL_A_PIN_PARENT_ID]);
+	state = nla_get_u32(tb[DPLL_A_PIN_STATE]);
+	ret = dpll_pin_on_pin_state_set(pin, ppin_idx, state, extack);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int
+dpll_pin_set_from_nlattr(struct dpll_pin *pin, struct genl_info *info)
+{
+	struct nlattr *a;
+	int rem, ret;
+
+	nla_for_each_attr(a, genlmsg_data(info->genlhdr),
+			  genlmsg_len(info->genlhdr), rem) {
+		switch (nla_type(a)) {
+		case DPLL_A_PIN_FREQUENCY:
+			ret = dpll_pin_freq_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
+		case DPLL_A_PIN_PARENT_DEVICE:
+			ret = dpll_pin_parent_device_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
+		case DPLL_A_PIN_PARENT_PIN:
+			ret = dpll_pin_parent_pin_set(pin, a, info->extack);
+			if (ret)
+				return ret;
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static struct dpll_pin *
+dpll_pin_find(u64 clock_id, struct nlattr *mod_name_attr,
+	      enum dpll_pin_type type, struct nlattr *board_label,
+	      struct nlattr *panel_label, struct nlattr *package_label,
+	      struct netlink_ext_ack *extack)
+{
+	bool board_match, panel_match, package_match;
+	struct dpll_pin *pin_match = NULL, *pin;
+	const struct dpll_pin_properties *prop;
+	bool cid_match, mod_match, type_match;
+	unsigned long i;
+
+	xa_for_each_marked(&dpll_pin_xa, i, pin, DPLL_REGISTERED) {
+		prop = pin->prop;
+		cid_match = clock_id ? pin->clock_id == clock_id : true;
+		mod_match = mod_name_attr && module_name(pin->module) ?
+			!nla_strcmp(mod_name_attr,
+				    module_name(pin->module)) : true;
+		type_match = type ? prop->type == type : true;
+		board_match = board_label ? (prop->board_label ?
+			!nla_strcmp(board_label, prop->board_label) : false) :
+			true;
+		panel_match = panel_label ? (prop->panel_label ?
+			!nla_strcmp(panel_label, prop->panel_label) : false) :
+			true;
+		package_match = package_label ? (prop->package_label ?
+			!nla_strcmp(package_label, prop->package_label) :
+			false) : true;
+		if (cid_match && mod_match && type_match && board_match &&
+		    panel_match && package_match) {
+			if (pin_match) {
+				NL_SET_ERR_MSG(extack, "multiple matches");
+				return ERR_PTR(-EINVAL);
+			}
+			pin_match = pin;
+		};
+	}
+	if (!pin_match) {
+		NL_SET_ERR_MSG(extack, "not found");
+		return ERR_PTR(-ENODEV);
+	}
+	return pin_match;
+}
+
+static struct dpll_pin *dpll_pin_find_from_nlattr(struct genl_info *info)
+{
+	struct nlattr *attr, *mod_name_attr = NULL, *board_label_attr = NULL,
+		*panel_label_attr = NULL, *package_label_attr = NULL;
+	enum dpll_pin_type type = 0;
+	u64 clock_id = 0;
+	int rem = 0;
+
+	nla_for_each_attr(attr, genlmsg_data(info->genlhdr),
+			  genlmsg_len(info->genlhdr), rem) {
+		switch (nla_type(attr)) {
+		case DPLL_A_PIN_CLOCK_ID:
+			if (clock_id)
+				goto duplicated_attr;
+			clock_id = nla_get_u64(attr);
+			break;
+		case DPLL_A_PIN_MODULE_NAME:
+			if (mod_name_attr)
+				goto duplicated_attr;
+			mod_name_attr = attr;
+			break;
+		case DPLL_A_PIN_TYPE:
+			if (type)
+				goto duplicated_attr;
+			type = nla_get_u32(attr);
+		break;
+		case DPLL_A_PIN_BOARD_LABEL:
+			if (board_label_attr)
+				goto duplicated_attr;
+			board_label_attr = attr;
+		break;
+		case DPLL_A_PIN_PANEL_LABEL:
+			if (panel_label_attr)
+				goto duplicated_attr;
+			panel_label_attr = attr;
+		break;
+		case DPLL_A_PIN_PACKAGE_LABEL:
+			if (package_label_attr)
+				goto duplicated_attr;
+			package_label_attr = attr;
+		break;
+		default:
+			break;
+		}
+	}
+	if (!(clock_id  || mod_name_attr || board_label_attr ||
+	      panel_label_attr || package_label_attr)) {
+		NL_SET_ERR_MSG(info->extack, "missing attributes");
+		return ERR_PTR(-EINVAL);
+	}
+	return dpll_pin_find(clock_id, mod_name_attr, type, board_label_attr,
+			     panel_label_attr, package_label_attr,
+			     info->extack);
+duplicated_attr:
+	NL_SET_ERR_MSG(info->extack, "duplicated attribute");
+	return ERR_PTR(-EINVAL);
+}
+
+int dpll_nl_pin_id_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct dpll_pin *pin;
+	struct sk_buff *msg;
+	struct nlattr *hdr;
+	int ret;
+
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
+				DPLL_CMD_PIN_ID_GET);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	pin = dpll_pin_find_from_nlattr(info);
+	if (!IS_ERR(pin)) {
+		ret = dpll_msg_add_pin_handle(msg, pin);
+		if (ret) {
+			nlmsg_free(msg);
+			return ret;
+		}
+	}
+	genlmsg_end(msg, hdr);
+
+	return genlmsg_reply(msg, info);
+}
+
+int dpll_nl_pin_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct dpll_pin *pin = info->user_ptr[0];
+	struct sk_buff *msg;
+	struct nlattr *hdr;
+	int ret;
+
+	if (!pin)
+		return -ENODEV;
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
+				DPLL_CMD_PIN_GET);
+	if (!hdr)
+		return -EMSGSIZE;
+	ret = dpll_cmd_pin_get_one(msg, pin, info->extack);
+	if (ret) {
+		nlmsg_free(msg);
+		return ret;
+	}
+	genlmsg_end(msg, hdr);
+
+	return genlmsg_reply(msg, info);
+}
+
+int dpll_nl_pin_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
+{
+	struct dpll_dump_ctx *ctx = dpll_dump_context(cb);
+	struct dpll_pin *pin;
+	struct nlattr *hdr;
+	unsigned long i;
+	int ret = 0;
+
+	xa_for_each_marked_start(&dpll_pin_xa, i, pin, DPLL_REGISTERED,
+				 ctx->idx) {
+		hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).portid,
+				  cb->nlh->nlmsg_seq,
+				  &dpll_nl_family, NLM_F_MULTI,
+				  DPLL_CMD_PIN_GET);
+		if (!hdr) {
+			ret = -EMSGSIZE;
+			break;
+		}
+		ret = dpll_cmd_pin_get_one(skb, pin, cb->extack);
+		if (ret) {
+			genlmsg_cancel(skb, hdr);
+			break;
+		}
+		genlmsg_end(skb, hdr);
+	}
+	if (ret == -EMSGSIZE) {
+		ctx->idx = i;
+		return skb->len;
+	}
+	return ret;
+}
+
+int dpll_nl_pin_set_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct dpll_pin *pin = info->user_ptr[0];
+
+	return dpll_pin_set_from_nlattr(pin, info);
+}
+
+static struct dpll_device *
+dpll_device_find(u64 clock_id, struct nlattr *mod_name_attr,
+		 enum dpll_type type, struct netlink_ext_ack *extack)
+{
+	struct dpll_device *dpll_match = NULL, *dpll;
+	bool cid_match, mod_match, type_match;
+	unsigned long i;
+
+	xa_for_each_marked(&dpll_device_xa, i, dpll, DPLL_REGISTERED) {
+		cid_match = clock_id ? dpll->clock_id == clock_id : true;
+		mod_match = mod_name_attr ? (module_name(dpll->module) ?
+			!nla_strcmp(mod_name_attr,
+				    module_name(dpll->module)) : false) : true;
+		type_match = type ? dpll->type == type : true;
+		if (cid_match && mod_match && type_match) {
+			if (dpll_match) {
+				NL_SET_ERR_MSG(extack, "multiple matches");
+				return ERR_PTR(-EINVAL);
+			}
+			dpll_match = dpll;
+		}
+	}
+	if (!dpll_match) {
+		NL_SET_ERR_MSG(extack, "not found");
+		return ERR_PTR(-ENODEV);
+	}
+
+	return dpll_match;
+}
+
+static struct dpll_device *
+dpll_device_find_from_nlattr(struct genl_info *info)
+{
+	struct nlattr *attr, *mod_name_attr = NULL;
+	enum dpll_type type = 0;
+	u64 clock_id = 0;
+	int rem = 0;
+
+	nla_for_each_attr(attr, genlmsg_data(info->genlhdr),
+			  genlmsg_len(info->genlhdr), rem) {
+		switch (nla_type(attr)) {
+		case DPLL_A_CLOCK_ID:
+			if (clock_id)
+				goto duplicated_attr;
+			clock_id = nla_get_u64(attr);
+			break;
+		case DPLL_A_MODULE_NAME:
+			if (mod_name_attr)
+				goto duplicated_attr;
+			mod_name_attr = attr;
+			break;
+		case DPLL_A_TYPE:
+			if (type)
+				goto duplicated_attr;
+			type = nla_get_u32(attr);
+			break;
+		default:
+			break;
+		}
+	}
+	if (!clock_id && !mod_name_attr && !type) {
+		NL_SET_ERR_MSG(info->extack, "missing attributes");
+		return ERR_PTR(-EINVAL);
+	}
+	return dpll_device_find(clock_id, mod_name_attr, type, info->extack);
+duplicated_attr:
+	NL_SET_ERR_MSG(info->extack, "duplicated attribute");
+	return ERR_PTR(-EINVAL);
+}
+
+int dpll_nl_device_id_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct dpll_device *dpll;
+	struct sk_buff *msg;
+	struct nlattr *hdr;
+	int ret;
+
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
+				DPLL_CMD_DEVICE_ID_GET);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	dpll = dpll_device_find_from_nlattr(info);
+	if (!IS_ERR(dpll)) {
+		ret = dpll_msg_add_dev_handle(msg, dpll);
+		if (ret) {
+			nlmsg_free(msg);
+			return ret;
+		}
+	}
+	genlmsg_end(msg, hdr);
+
+	return genlmsg_reply(msg, info);
+}
+
+int dpll_nl_device_get_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	struct dpll_device *dpll = info->user_ptr[0];
+	struct sk_buff *msg;
+	struct nlattr *hdr;
+	int ret;
+
+	msg = genlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
+	if (!msg)
+		return -ENOMEM;
+	hdr = genlmsg_put_reply(msg, info, &dpll_nl_family, 0,
+				DPLL_CMD_DEVICE_GET);
+	if (!hdr)
+		return -EMSGSIZE;
+
+	ret = dpll_device_get_one(dpll, msg, info->extack);
+	if (ret) {
+		nlmsg_free(msg);
+		return ret;
+	}
+	genlmsg_end(msg, hdr);
+
+	return genlmsg_reply(msg, info);
+}
+
+int dpll_nl_device_set_doit(struct sk_buff *skb, struct genl_info *info)
+{
+	/* placeholder for set command */
+	return 0;
+}
+
+int dpll_nl_device_get_dumpit(struct sk_buff *skb, struct netlink_callback *cb)
+{
+	struct dpll_dump_ctx *ctx = dpll_dump_context(cb);
+	struct dpll_device *dpll;
+	struct nlattr *hdr;
+	unsigned long i;
+	int ret = 0;
+
+	xa_for_each_marked_start(&dpll_device_xa, i, dpll, DPLL_REGISTERED,
+				 ctx->idx) {
+		hdr = genlmsg_put(skb, NETLINK_CB(cb->skb).portid,
+				  cb->nlh->nlmsg_seq, &dpll_nl_family,
+				  NLM_F_MULTI, DPLL_CMD_DEVICE_GET);
+		if (!hdr) {
+			ret = -EMSGSIZE;
+			break;
+		}
+		ret = dpll_device_get_one(dpll, skb, cb->extack);
+		if (ret) {
+			genlmsg_cancel(skb, hdr);
+			break;
+		}
+		genlmsg_end(skb, hdr);
+	}
+	if (ret == -EMSGSIZE) {
+		ctx->idx = i;
+		return skb->len;
+	}
+	return ret;
+}
+
+int dpll_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		  struct genl_info *info)
+{
+	u32 id;
+
+	if (GENL_REQ_ATTR_CHECK(info, DPLL_A_ID))
+		return -EINVAL;
+
+	mutex_lock(&dpll_lock);
+	id = nla_get_u32(info->attrs[DPLL_A_ID]);
+	info->user_ptr[0] = dpll_device_get_by_id(id);
+	if (!info->user_ptr[0]) {
+		NL_SET_ERR_MSG(info->extack, "device not found");
+		goto unlock;
+	}
+	return 0;
+unlock:
+	mutex_unlock(&dpll_lock);
+	return -ENODEV;
+}
+
+void dpll_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		    struct genl_info *info)
+{
+	mutex_unlock(&dpll_lock);
+}
+
+int
+dpll_lock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+	       struct genl_info *info)
+{
+	mutex_lock(&dpll_lock);
+
+	return 0;
+}
+
+void
+dpll_unlock_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		 struct genl_info *info)
+{
+	mutex_unlock(&dpll_lock);
+}
+
+int dpll_lock_dumpit(struct netlink_callback *cb)
+{
+	mutex_lock(&dpll_lock);
+
+	return 0;
+}
+
+int dpll_unlock_dumpit(struct netlink_callback *cb)
+{
+	mutex_unlock(&dpll_lock);
+
+	return 0;
+}
+
+int dpll_pin_pre_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+		      struct genl_info *info)
+{
+	int ret;
+
+	mutex_lock(&dpll_lock);
+	if (GENL_REQ_ATTR_CHECK(info, DPLL_A_PIN_ID)) {
+		ret = -EINVAL;
+		goto unlock_dev;
+	}
+	info->user_ptr[0] = xa_load(&dpll_pin_xa,
+				    nla_get_u32(info->attrs[DPLL_A_PIN_ID]));
+	if (!info->user_ptr[0]) {
+		NL_SET_ERR_MSG(info->extack, "pin not found");
+		ret = -ENODEV;
+		goto unlock_dev;
+	}
+
+	return 0;
+
+unlock_dev:
+	mutex_unlock(&dpll_lock);
+	return ret;
+}
+
+void dpll_pin_post_doit(const struct genl_split_ops *ops, struct sk_buff *skb,
+			struct genl_info *info)
+{
+	mutex_unlock(&dpll_lock);
+}
diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
new file mode 100644
index 000000000000..a9cfd55f57fc
--- /dev/null
+++ b/drivers/dpll/dpll_netlink.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
+ *  Copyright (c) 2023 Intel and affiliates
+ */
+
+int dpll_device_create_ntf(struct dpll_device *dpll);
+
+int dpll_device_delete_ntf(struct dpll_device *dpll);
+
+int dpll_pin_create_ntf(struct dpll_pin *pin);
+
+int dpll_pin_delete_ntf(struct dpll_pin *pin);
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
index b47c3560b937..2202310c10cd 100644
--- a/include/linux/dpll.h
+++ b/include/linux/dpll.h
@@ -130,4 +130,8 @@ int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
 void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
 				const struct dpll_pin_ops *ops, void *priv);
 
+int dpll_device_change_ntf(struct dpll_device *dpll);
+
+int dpll_pin_change_ntf(struct dpll_pin *pin);
+
 #endif
-- 
2.27.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

