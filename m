Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E95787A6D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 23:32:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01DA041DB7;
	Thu, 24 Aug 2023 21:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01DA041DB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692912727;
	bh=NYGv2Yc5lSezJ0mGc5WFBTe8qrYhdwetqe3MJvqCAGo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=auSxoB94zXbOphIXcT7qyNI6Ti48fFF/hVaH2DOhO3Xr9emg8nfbb+sZGCr/8elup
	 AqCnSSzVQaJbbVa2HMCoKKvB+TzwRarRTvq3470Sm07zNRM+doQ/ei8Z0ffdMDOtPT
	 2/xp/wPQCGkjI2gyeux5+a8dZEum9SIwRtjhl/I1qto8uPP6vCBDX3ITlSZNgWdPZq
	 xkJts6zkg4GuM/w4zPKFtiDhDiyco0fBfyOULBf8kAmLW/92rlTlYnZeRAQYQgdxjf
	 EpodPPJWPHUaK+dDUSCSICXVLb0VMMJdPw1RJ0rACh1bcJd8m+9OyBiMHLFIZEP8Gp
	 dXe3jQjiFPwng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bz465N6c2S1E; Thu, 24 Aug 2023 21:32:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6EC741D9E;
	Thu, 24 Aug 2023 21:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6EC741D9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CD731BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5243C60F79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5243C60F79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TYLyyPWjDjpb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 21:31:42 +0000 (UTC)
Received: from out-16.mta0.migadu.com (out-16.mta0.migadu.com [91.218.175.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5770D60FE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 21:31:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5770D60FE2
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>
Date: Thu, 24 Aug 2023 22:31:26 +0100
Message-Id: <20230824213132.827338-4-vadim.fedorenko@linux.dev>
In-Reply-To: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
References: <20230824213132.827338-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692912700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P00t0jjoPzF8lXpENNxYdeuaVyFoezsb2jyKRpqbqjU=;
 b=lX+HogNgAwkAyEqEqmgYGLOQtIij/HirdEzZ6Bz6WokvKxcDkwBVYxTsAeeTCAEniyAun1
 ZRxtUKQRTwWcAnzw52KeIf5AvUC4O04jFVfqUXzj23J3+GAxnW2x/zpoLfYjp4Vg5vfmQo
 y/45tulWR6dM/6cT0dAHp6uwEkViMK4=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=lX+HogNg
Subject: [Intel-wired-lan] [PATCH net-next v7 3/9] dpll: core: Add DPLL
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

Implement core framework functions for further interactions
with device drivers implementing dpll subsystem, as well as for
interactions of DPLL netlink framework part with the subsystem
itself.

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
- rebase on net-next
v4->v5:
- use cyclic allocation in xarray and full 32 bits range
v3->v4:
- re-generated on top of the latest net-next
v2->v3:
- no changes
v1->v2:
- fix checkpatch errors
- remove mentions of netlink notifications introduced in the
  next patch

 MAINTAINERS              |  11 +
 drivers/Kconfig          |   2 +
 drivers/Makefile         |   1 +
 drivers/dpll/Kconfig     |   7 +
 drivers/dpll/Makefile    |   9 +
 drivers/dpll/dpll_core.c | 789 +++++++++++++++++++++++++++++++++++++++
 drivers/dpll/dpll_core.h |  89 +++++
 include/linux/dpll.h     | 133 +++++++
 8 files changed, 1041 insertions(+)
 create mode 100644 drivers/dpll/Kconfig
 create mode 100644 drivers/dpll/Makefile
 create mode 100644 drivers/dpll/dpll_core.c
 create mode 100644 drivers/dpll/dpll_core.h
 create mode 100644 include/linux/dpll.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 9cc15c50c2c6..61c0ebc04285 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6315,6 +6315,17 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
 F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-switch*
 F:	drivers/net/ethernet/freescale/dpaa2/dpsw*
 
+DPLL SUBSYSTEM
+M:	Vadim Fedorenko <vadim.fedorenko@linux.dev>
+M:	Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
+M:	Jiri Pirko <jiri@resnulli.us>
+L:	netdev@vger.kernel.org
+S:	Supported
+F:	Documentation/driver-api/dpll.rst
+F:	drivers/dpll/*
+F:	include/net/dpll.h
+F:	include/uapi/linux/dpll.h
+
 DRBD DRIVER
 M:	Philipp Reisner <philipp.reisner@linbit.com>
 M:	Lars Ellenberg <lars.ellenberg@linbit.com>
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 514ae6b24cb2..ce5f63918eba 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -243,4 +243,6 @@ source "drivers/hte/Kconfig"
 
 source "drivers/cdx/Kconfig"
 
+source "drivers/dpll/Kconfig"
+
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 7241d80a7b29..6fea42a6dd05 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -195,3 +195,4 @@ obj-$(CONFIG_PECI)		+= peci/
 obj-$(CONFIG_HTE)		+= hte/
 obj-$(CONFIG_DRM_ACCEL)		+= accel/
 obj-$(CONFIG_CDX_BUS)		+= cdx/
+obj-$(CONFIG_DPLL)		+= dpll/
diff --git a/drivers/dpll/Kconfig b/drivers/dpll/Kconfig
new file mode 100644
index 000000000000..a4cae73f20d3
--- /dev/null
+++ b/drivers/dpll/Kconfig
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Generic DPLL drivers configuration
+#
+
+config DPLL
+  bool
diff --git a/drivers/dpll/Makefile b/drivers/dpll/Makefile
new file mode 100644
index 000000000000..2e5b27850110
--- /dev/null
+++ b/drivers/dpll/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for DPLL drivers.
+#
+
+obj-$(CONFIG_DPLL)      += dpll.o
+dpll-y                  += dpll_core.o
+dpll-y                  += dpll_netlink.o
+dpll-y                  += dpll_nl.o
diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
new file mode 100644
index 000000000000..6449ba6a383b
--- /dev/null
+++ b/drivers/dpll/dpll_core.c
@@ -0,0 +1,789 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  dpll_core.c - DPLL subsystem kernel-space interface implementation.
+ *
+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
+ *  Copyright (c) 2023 Intel Corporation.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+
+#include "dpll_core.h"
+
+/* Mutex lock to protect DPLL subsystem devices and pins */
+DEFINE_MUTEX(dpll_lock);
+
+DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
+DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
+
+static u32 dpll_xa_id;
+
+#define ASSERT_DPLL_REGISTERED(d)	\
+	WARN_ON_ONCE(!xa_get_mark(&dpll_device_xa, (d)->id, DPLL_REGISTERED))
+#define ASSERT_DPLL_NOT_REGISTERED(d)	\
+	WARN_ON_ONCE(xa_get_mark(&dpll_device_xa, (d)->id, DPLL_REGISTERED))
+#define ASSERT_PIN_REGISTERED(p)	\
+	WARN_ON_ONCE(!xa_get_mark(&dpll_pin_xa, (p)->id, DPLL_REGISTERED))
+
+struct dpll_device_registration {
+	struct list_head list;
+	const struct dpll_device_ops *ops;
+	void *priv;
+};
+
+struct dpll_pin_registration {
+	struct list_head list;
+	const struct dpll_pin_ops *ops;
+	void *priv;
+};
+
+struct dpll_device *dpll_device_get_by_id(int id)
+{
+	if (xa_get_mark(&dpll_device_xa, id, DPLL_REGISTERED))
+		return xa_load(&dpll_device_xa, id);
+
+	return NULL;
+}
+
+static struct dpll_pin_registration *
+dpll_pin_registration_find(struct dpll_pin_ref *ref,
+			   const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_registration *reg;
+
+	list_for_each_entry(reg, &ref->registration_list, list) {
+		if (reg->ops == ops && reg->priv == priv)
+			return reg;
+	}
+	return NULL;
+}
+
+static int
+dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
+		    const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+	bool ref_exists = false;
+	unsigned long i;
+	int ret;
+
+	xa_for_each(xa_pins, i, ref) {
+		if (ref->pin != pin)
+			continue;
+		reg = dpll_pin_registration_find(ref, ops, priv);
+		if (reg) {
+			refcount_inc(&ref->refcount);
+			return 0;
+		}
+		ref_exists = true;
+		break;
+	}
+
+	if (!ref_exists) {
+		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
+		if (!ref)
+			return -ENOMEM;
+		ref->pin = pin;
+		INIT_LIST_HEAD(&ref->registration_list);
+		ret = xa_insert(xa_pins, pin->pin_idx, ref, GFP_KERNEL);
+		if (ret) {
+			kfree(ref);
+			return ret;
+		}
+		refcount_set(&ref->refcount, 1);
+	}
+
+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
+	if (!reg) {
+		if (!ref_exists) {
+			xa_erase(xa_pins, pin->pin_idx);
+			kfree(ref);
+		}
+		return -ENOMEM;
+	}
+	reg->ops = ops;
+	reg->priv = priv;
+	if (ref_exists)
+		refcount_inc(&ref->refcount);
+	list_add_tail(&reg->list, &ref->registration_list);
+
+	return 0;
+}
+
+static int dpll_xa_ref_pin_del(struct xarray *xa_pins, struct dpll_pin *pin,
+			       const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+	unsigned long i;
+
+	xa_for_each(xa_pins, i, ref) {
+		if (ref->pin != pin)
+			continue;
+		reg = dpll_pin_registration_find(ref, ops, priv);
+		if (WARN_ON(!reg))
+			return -EINVAL;
+		if (refcount_dec_and_test(&ref->refcount)) {
+			list_del(&reg->list);
+			kfree(reg);
+			xa_erase(xa_pins, i);
+			WARN_ON(!list_empty(&ref->registration_list));
+			kfree(ref);
+		}
+		return 0;
+	}
+
+	return -EINVAL;
+}
+
+static int
+dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
+		     const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+	bool ref_exists = false;
+	unsigned long i;
+	int ret;
+
+	xa_for_each(xa_dplls, i, ref) {
+		if (ref->dpll != dpll)
+			continue;
+		reg = dpll_pin_registration_find(ref, ops, priv);
+		if (reg) {
+			refcount_inc(&ref->refcount);
+			return 0;
+		}
+		ref_exists = true;
+		break;
+	}
+
+	if (!ref_exists) {
+		ref = kzalloc(sizeof(*ref), GFP_KERNEL);
+		if (!ref)
+			return -ENOMEM;
+		ref->dpll = dpll;
+		INIT_LIST_HEAD(&ref->registration_list);
+		ret = xa_insert(xa_dplls, dpll->id, ref, GFP_KERNEL);
+		if (ret) {
+			kfree(ref);
+			return ret;
+		}
+		refcount_set(&ref->refcount, 1);
+	}
+
+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
+	if (!reg) {
+		if (!ref_exists) {
+			xa_erase(xa_dplls, dpll->id);
+			kfree(ref);
+		}
+		return -ENOMEM;
+	}
+	reg->ops = ops;
+	reg->priv = priv;
+	if (ref_exists)
+		refcount_inc(&ref->refcount);
+	list_add_tail(&reg->list, &ref->registration_list);
+
+	return 0;
+}
+
+static void
+dpll_xa_ref_dpll_del(struct xarray *xa_dplls, struct dpll_device *dpll,
+		     const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+	unsigned long i;
+
+	xa_for_each(xa_dplls, i, ref) {
+		if (ref->dpll != dpll)
+			continue;
+		reg = dpll_pin_registration_find(ref, ops, priv);
+		if (WARN_ON(!reg))
+			return;
+		if (refcount_dec_and_test(&ref->refcount)) {
+			list_del(&reg->list);
+			kfree(reg);
+			xa_erase(xa_dplls, i);
+			WARN_ON(!list_empty(&ref->registration_list));
+			kfree(ref);
+		}
+		return;
+	}
+}
+
+struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs)
+{
+	struct dpll_pin_ref *ref;
+	unsigned long i = 0;
+
+	ref = xa_find(xa_refs, &i, ULONG_MAX, XA_PRESENT);
+	WARN_ON(!ref);
+	return ref;
+}
+
+static struct dpll_device *
+dpll_device_alloc(const u64 clock_id, u32 device_idx, struct module *module)
+{
+	struct dpll_device *dpll;
+	int ret;
+
+	dpll = kzalloc(sizeof(*dpll), GFP_KERNEL);
+	if (!dpll)
+		return ERR_PTR(-ENOMEM);
+	refcount_set(&dpll->refcount, 1);
+	INIT_LIST_HEAD(&dpll->registration_list);
+	dpll->device_idx = device_idx;
+	dpll->clock_id = clock_id;
+	dpll->module = module;
+	ret = xa_alloc_cyclic(&dpll_device_xa, &dpll->id, dpll, xa_limit_32b,
+			      &dpll_xa_id, GFP_KERNEL);
+	if (ret < 0) {
+		kfree(dpll);
+		return ERR_PTR(ret);
+	}
+	xa_init_flags(&dpll->pin_refs, XA_FLAGS_ALLOC);
+
+	return dpll;
+}
+
+/**
+ * dpll_device_get - find existing or create new dpll device
+ * @clock_id: clock_id of creator
+ * @device_idx: idx given by device driver
+ * @module: reference to registering module
+ *
+ * Get existing object of a dpll device, unique for given arguments.
+ * Create new if doesn't exist yet.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * valid dpll_device struct pointer if succeeded
+ * * ERR_PTR(X) - error
+ */
+struct dpll_device *
+dpll_device_get(u64 clock_id, u32 device_idx, struct module *module)
+{
+	struct dpll_device *dpll, *ret = NULL;
+	unsigned long index;
+
+	mutex_lock(&dpll_lock);
+	xa_for_each(&dpll_device_xa, index, dpll) {
+		if (dpll->clock_id == clock_id &&
+		    dpll->device_idx == device_idx &&
+		    dpll->module == module) {
+			ret = dpll;
+			refcount_inc(&ret->refcount);
+			break;
+		}
+	}
+	if (!ret)
+		ret = dpll_device_alloc(clock_id, device_idx, module);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_device_get);
+
+/**
+ * dpll_device_put - decrease the refcount and free memory if possible
+ * @dpll: dpll_device struct pointer
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Drop reference for a dpll device, if all references are gone, delete
+ * dpll device object.
+ */
+void dpll_device_put(struct dpll_device *dpll)
+{
+	mutex_lock(&dpll_lock);
+	if (refcount_dec_and_test(&dpll->refcount)) {
+		ASSERT_DPLL_NOT_REGISTERED(dpll);
+		WARN_ON_ONCE(!xa_empty(&dpll->pin_refs));
+		xa_destroy(&dpll->pin_refs);
+		xa_erase(&dpll_device_xa, dpll->id);
+		WARN_ON(!list_empty(&dpll->registration_list));
+		kfree(dpll);
+	}
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_device_put);
+
+static struct dpll_device_registration *
+dpll_device_registration_find(struct dpll_device *dpll,
+			      const struct dpll_device_ops *ops, void *priv)
+{
+	struct dpll_device_registration *reg;
+
+	list_for_each_entry(reg, &dpll->registration_list, list) {
+		if (reg->ops == ops && reg->priv == priv)
+			return reg;
+	}
+	return NULL;
+}
+
+/**
+ * dpll_device_register - register the dpll device in the subsystem
+ * @dpll: pointer to a dpll
+ * @type: type of a dpll
+ * @ops: ops for a dpll device
+ * @priv: pointer to private information of owner
+ *
+ * Make dpll device available for user space.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * 0 on success
+ * * negative - error value
+ */
+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
+			 const struct dpll_device_ops *ops, void *priv)
+{
+	struct dpll_device_registration *reg;
+	bool first_registration = false;
+
+	if (WARN_ON(!ops))
+		return -EINVAL;
+	if (WARN_ON(!ops->mode_get))
+		return -EINVAL;
+	if (WARN_ON(!ops->lock_status_get))
+		return -EINVAL;
+	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
+		return -EINVAL;
+
+	mutex_lock(&dpll_lock);
+	reg = dpll_device_registration_find(dpll, ops, priv);
+	if (reg) {
+		mutex_unlock(&dpll_lock);
+		return -EEXIST;
+	}
+
+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
+	if (!reg) {
+		mutex_unlock(&dpll_lock);
+		return -ENOMEM;
+	}
+	reg->ops = ops;
+	reg->priv = priv;
+	dpll->type = type;
+	first_registration = list_empty(&dpll->registration_list);
+	list_add_tail(&reg->list, &dpll->registration_list);
+	if (!first_registration) {
+		mutex_unlock(&dpll_lock);
+		return 0;
+	}
+
+	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
+	mutex_unlock(&dpll_lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dpll_device_register);
+
+/**
+ * dpll_device_unregister - unregister dpll device
+ * @dpll: registered dpll pointer
+ * @ops: ops for a dpll device
+ * @priv: pointer to private information of owner
+ *
+ * Unregister device, make it unavailable for userspace.
+ * Note: It does not free the memory
+ * Context: Acquires a lock (dpll_lock)
+ */
+void dpll_device_unregister(struct dpll_device *dpll,
+			    const struct dpll_device_ops *ops, void *priv)
+{
+	struct dpll_device_registration *reg;
+
+	mutex_lock(&dpll_lock);
+	ASSERT_DPLL_REGISTERED(dpll);
+	reg = dpll_device_registration_find(dpll, ops, priv);
+	if (WARN_ON(!reg)) {
+		mutex_unlock(&dpll_lock);
+		return;
+	}
+	list_del(&reg->list);
+	kfree(reg);
+
+	if (!list_empty(&dpll->registration_list)) {
+		mutex_unlock(&dpll_lock);
+		return;
+	}
+	xa_clear_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_device_unregister);
+
+static struct dpll_pin *
+dpll_pin_alloc(u64 clock_id, u32 pin_idx, struct module *module,
+	       const struct dpll_pin_properties *prop)
+{
+	struct dpll_pin *pin;
+	int ret;
+
+	pin = kzalloc(sizeof(*pin), GFP_KERNEL);
+	if (!pin)
+		return ERR_PTR(-ENOMEM);
+	pin->pin_idx = pin_idx;
+	pin->clock_id = clock_id;
+	pin->module = module;
+	if (WARN_ON(prop->type < DPLL_PIN_TYPE_MUX ||
+		    prop->type > DPLL_PIN_TYPE_MAX)) {
+		ret = -EINVAL;
+		goto err;
+	}
+	pin->prop = prop;
+	refcount_set(&pin->refcount, 1);
+	xa_init_flags(&pin->dpll_refs, XA_FLAGS_ALLOC);
+	xa_init_flags(&pin->parent_refs, XA_FLAGS_ALLOC);
+	ret = xa_alloc(&dpll_pin_xa, &pin->id, pin, xa_limit_16b, GFP_KERNEL);
+	if (ret)
+		goto err;
+	return pin;
+err:
+	xa_destroy(&pin->dpll_refs);
+	xa_destroy(&pin->parent_refs);
+	kfree(pin);
+	return ERR_PTR(ret);
+}
+
+/**
+ * dpll_pin_get - find existing or create new dpll pin
+ * @clock_id: clock_id of creator
+ * @pin_idx: idx given by dev driver
+ * @module: reference to registering module
+ * @prop: dpll pin properties
+ *
+ * Get existing object of a pin (unique for given arguments) or create new
+ * if doesn't exist yet.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * valid allocated dpll_pin struct pointer if succeeded
+ * * ERR_PTR(X) - error
+ */
+struct dpll_pin *
+dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
+	     const struct dpll_pin_properties *prop)
+{
+	struct dpll_pin *pos, *ret = NULL;
+	unsigned long i;
+
+	mutex_lock(&dpll_lock);
+	xa_for_each(&dpll_pin_xa, i, pos) {
+		if (pos->clock_id == clock_id &&
+		    pos->pin_idx == pin_idx &&
+		    pos->module == module) {
+			ret = pos;
+			refcount_inc(&ret->refcount);
+			break;
+		}
+	}
+	if (!ret)
+		ret = dpll_pin_alloc(clock_id, pin_idx, module, prop);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_pin_get);
+
+/**
+ * dpll_pin_put - decrease the refcount and free memory if possible
+ * @pin: pointer to a pin to be put
+ *
+ * Drop reference for a pin, if all references are gone, delete pin object.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ */
+void dpll_pin_put(struct dpll_pin *pin)
+{
+	mutex_lock(&dpll_lock);
+	if (refcount_dec_and_test(&pin->refcount)) {
+		xa_destroy(&pin->dpll_refs);
+		xa_destroy(&pin->parent_refs);
+		xa_erase(&dpll_pin_xa, pin->id);
+		kfree(pin);
+	}
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_pin_put);
+
+static int
+__dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
+		    const struct dpll_pin_ops *ops, void *priv)
+{
+	int ret;
+
+	ret = dpll_xa_ref_pin_add(&dpll->pin_refs, pin, ops, priv);
+	if (ret)
+		return ret;
+	ret = dpll_xa_ref_dpll_add(&pin->dpll_refs, dpll, ops, priv);
+	if (ret)
+		goto ref_pin_del;
+	xa_set_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
+
+	return ret;
+
+ref_pin_del:
+	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv);
+	return ret;
+}
+
+/**
+ * dpll_pin_register - register the dpll pin in the subsystem
+ * @dpll: pointer to a dpll
+ * @pin: pointer to a dpll pin
+ * @ops: ops for a dpll pin ops
+ * @priv: pointer to private information of owner
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * 0 on success
+ * * negative - error value
+ */
+int
+dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
+		  const struct dpll_pin_ops *ops, void *priv)
+{
+	int ret;
+
+	if (WARN_ON(!ops) ||
+	    WARN_ON(!ops->state_on_dpll_get) ||
+	    WARN_ON(!ops->direction_get))
+		return -EINVAL;
+	if (ASSERT_DPLL_REGISTERED(dpll))
+		return -EINVAL;
+
+	mutex_lock(&dpll_lock);
+	if (WARN_ON(!(dpll->module == pin->module &&
+		      dpll->clock_id == pin->clock_id)))
+		ret = -EINVAL;
+	else
+		ret = __dpll_pin_register(dpll, pin, ops, priv);
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_pin_register);
+
+static void
+__dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
+		      const struct dpll_pin_ops *ops, void *priv)
+{
+	dpll_xa_ref_pin_del(&dpll->pin_refs, pin, ops, priv);
+	dpll_xa_ref_dpll_del(&pin->dpll_refs, dpll, ops, priv);
+	if (xa_empty(&pin->dpll_refs))
+		xa_clear_mark(&dpll_pin_xa, pin->id, DPLL_REGISTERED);
+}
+
+/**
+ * dpll_pin_unregister - unregister dpll pin from dpll device
+ * @dpll: registered dpll pointer
+ * @pin: pointer to a pin
+ * @ops: ops for a dpll pin
+ * @priv: pointer to private information of owner
+ *
+ * Note: It does not free the memory
+ * Context: Acquires a lock (dpll_lock)
+ */
+void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
+			 const struct dpll_pin_ops *ops, void *priv)
+{
+	if (WARN_ON(xa_empty(&dpll->pin_refs)))
+		return;
+	if (WARN_ON(!xa_empty(&pin->parent_refs)))
+		return;
+
+	mutex_lock(&dpll_lock);
+	__dpll_pin_unregister(dpll, pin, ops, priv);
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_pin_unregister);
+
+/**
+ * dpll_pin_on_pin_register - register a pin with a parent pin
+ * @parent: pointer to a parent pin
+ * @pin: pointer to a pin
+ * @ops: ops for a dpll pin
+ * @priv: pointer to private information of owner
+ *
+ * Register a pin with a parent pin, create references between them and
+ * between newly registered pin and dplls connected with a parent pin.
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Return:
+ * * 0 on success
+ * * negative - error value
+ */
+int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
+			     const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_ref *ref;
+	unsigned long i, stop;
+	int ret;
+
+	if (WARN_ON(parent->prop->type != DPLL_PIN_TYPE_MUX))
+		return -EINVAL;
+
+	if (WARN_ON(!ops) ||
+	    WARN_ON(!ops->state_on_pin_get) ||
+	    WARN_ON(!ops->direction_get))
+		return -EINVAL;
+	if (ASSERT_PIN_REGISTERED(parent))
+		return -EINVAL;
+
+	mutex_lock(&dpll_lock);
+	ret = dpll_xa_ref_pin_add(&pin->parent_refs, parent, ops, priv);
+	if (ret)
+		goto unlock;
+	refcount_inc(&pin->refcount);
+	xa_for_each(&parent->dpll_refs, i, ref) {
+		ret = __dpll_pin_register(ref->dpll, pin, ops, priv);
+		if (ret) {
+			stop = i;
+			goto dpll_unregister;
+		}
+	}
+	mutex_unlock(&dpll_lock);
+
+	return ret;
+
+dpll_unregister:
+	xa_for_each(&parent->dpll_refs, i, ref)
+		if (i < stop)
+			__dpll_pin_unregister(ref->dpll, pin, ops, priv);
+	refcount_dec(&pin->refcount);
+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
+unlock:
+	mutex_unlock(&dpll_lock);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(dpll_pin_on_pin_register);
+
+/**
+ * dpll_pin_on_pin_unregister - unregister dpll pin from a parent pin
+ * @parent: pointer to a parent pin
+ * @pin: pointer to a pin
+ * @ops: ops for a dpll pin
+ * @priv: pointer to private information of owner
+ *
+ * Context: Acquires a lock (dpll_lock)
+ * Note: It does not free the memory
+ */
+void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
+				const struct dpll_pin_ops *ops, void *priv)
+{
+	struct dpll_pin_ref *ref;
+	unsigned long i;
+
+	mutex_lock(&dpll_lock);
+	dpll_xa_ref_pin_del(&pin->parent_refs, parent, ops, priv);
+	refcount_dec(&pin->refcount);
+	xa_for_each(&pin->dpll_refs, i, ref)
+		__dpll_pin_unregister(ref->dpll, pin, ops, priv);
+	mutex_unlock(&dpll_lock);
+}
+EXPORT_SYMBOL_GPL(dpll_pin_on_pin_unregister);
+
+static struct dpll_device_registration *
+dpll_device_registration_first(struct dpll_device *dpll)
+{
+	struct dpll_device_registration *reg;
+
+	reg = list_first_entry_or_null((struct list_head *)&dpll->registration_list,
+				       struct dpll_device_registration, list);
+	WARN_ON(!reg);
+	return reg;
+}
+
+void *dpll_priv(struct dpll_device *dpll)
+{
+	struct dpll_device_registration *reg;
+
+	reg = dpll_device_registration_first(dpll);
+	return reg->priv;
+}
+
+const struct dpll_device_ops *dpll_device_ops(struct dpll_device *dpll)
+{
+	struct dpll_device_registration *reg;
+
+	reg = dpll_device_registration_first(dpll);
+	return reg->ops;
+}
+
+static struct dpll_pin_registration *
+dpll_pin_registration_first(struct dpll_pin_ref *ref)
+{
+	struct dpll_pin_registration *reg;
+
+	reg = list_first_entry_or_null(&ref->registration_list,
+				       struct dpll_pin_registration, list);
+	WARN_ON(!reg);
+	return reg;
+}
+
+void *dpll_pin_on_dpll_priv(struct dpll_device *dpll,
+			    struct dpll_pin *pin)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+
+	ref = xa_load(&dpll->pin_refs, pin->pin_idx);
+	if (!ref)
+		return NULL;
+	reg = dpll_pin_registration_first(ref);
+	return reg->priv;
+}
+
+void *dpll_pin_on_pin_priv(struct dpll_pin *parent,
+			   struct dpll_pin *pin)
+{
+	struct dpll_pin_registration *reg;
+	struct dpll_pin_ref *ref;
+
+	ref = xa_load(&pin->parent_refs, parent->pin_idx);
+	if (!ref)
+		return NULL;
+	reg = dpll_pin_registration_first(ref);
+	return reg->priv;
+}
+
+const struct dpll_pin_ops *dpll_pin_ops(struct dpll_pin_ref *ref)
+{
+	struct dpll_pin_registration *reg;
+
+	reg = dpll_pin_registration_first(ref);
+	return reg->ops;
+}
+
+static int __init dpll_init(void)
+{
+	int ret;
+
+	ret = genl_register_family(&dpll_nl_family);
+	if (ret)
+		goto error;
+
+	return 0;
+
+error:
+	mutex_destroy(&dpll_lock);
+	return ret;
+}
+
+static void __exit dpll_exit(void)
+{
+	genl_unregister_family(&dpll_nl_family);
+	mutex_destroy(&dpll_lock);
+}
+
+subsys_initcall(dpll_init);
+module_exit(dpll_exit);
diff --git a/drivers/dpll/dpll_core.h b/drivers/dpll/dpll_core.h
new file mode 100644
index 000000000000..5585873c5c1b
--- /dev/null
+++ b/drivers/dpll/dpll_core.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
+ *  Copyright (c) 2023 Intel and affiliates
+ */
+
+#ifndef __DPLL_CORE_H__
+#define __DPLL_CORE_H__
+
+#include <linux/dpll.h>
+#include <linux/list.h>
+#include <linux/refcount.h>
+#include "dpll_nl.h"
+
+#define DPLL_REGISTERED		XA_MARK_1
+
+/**
+ * struct dpll_device - stores DPLL device internal data
+ * @id:			unique id number for device given by dpll subsystem
+ * @device_idx:		id given by dev driver
+ * @clock_id:		unique identifier (clock_id) of a dpll
+ * @module:		module of creator
+ * @type:		type of a dpll
+ * @pin_refs:		stores pins registered within a dpll
+ * @refcount:		refcount
+ * @registration_list:	list of registered ops and priv data of dpll owners
+ **/
+struct dpll_device {
+	u32 id;
+	u32 device_idx;
+	u64 clock_id;
+	struct module *module;
+	enum dpll_type type;
+	struct xarray pin_refs;
+	refcount_t refcount;
+	struct list_head registration_list;
+};
+
+/**
+ * struct dpll_pin - structure for a dpll pin
+ * @id:			unique id number for pin given by dpll subsystem
+ * @pin_idx:		index of a pin given by dev driver
+ * @clock_id:		clock_id of creator
+ * @module:		module of creator
+ * @dpll_refs:		hold referencees to dplls pin was registered with
+ * @parent_refs:	hold references to parent pins pin was registered with
+ * @prop:		pointer to pin properties given by registerer
+ * @rclk_dev_name:	holds name of device when pin can recover clock from it
+ * @refcount:		refcount
+ **/
+struct dpll_pin {
+	u32 id;
+	u32 pin_idx;
+	u64 clock_id;
+	struct module *module;
+	struct xarray dpll_refs;
+	struct xarray parent_refs;
+	const struct dpll_pin_properties *prop;
+	refcount_t refcount;
+};
+
+/**
+ * struct dpll_pin_ref - structure for referencing either dpll or pins
+ * @dpll:		pointer to a dpll
+ * @pin:		pointer to a pin
+ * @registration_list:	list of ops and priv data registered with the ref
+ * @refcount:		refcount
+ **/
+struct dpll_pin_ref {
+	union {
+		struct dpll_device *dpll;
+		struct dpll_pin *pin;
+	};
+	struct list_head registration_list;
+	refcount_t refcount;
+};
+
+void *dpll_priv(struct dpll_device *dpll);
+void *dpll_pin_on_dpll_priv(struct dpll_device *dpll, struct dpll_pin *pin);
+void *dpll_pin_on_pin_priv(struct dpll_pin *parent, struct dpll_pin *pin);
+
+const struct dpll_device_ops *dpll_device_ops(struct dpll_device *dpll);
+struct dpll_device *dpll_device_get_by_id(int id);
+const struct dpll_pin_ops *dpll_pin_ops(struct dpll_pin_ref *ref);
+struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs);
+extern struct xarray dpll_device_xa;
+extern struct xarray dpll_pin_xa;
+extern struct mutex dpll_lock;
+#endif
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
new file mode 100644
index 000000000000..b47c3560b937
--- /dev/null
+++ b/include/linux/dpll.h
@@ -0,0 +1,133 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
+ *  Copyright (c) 2023 Intel and affiliates
+ */
+
+#ifndef __DPLL_H__
+#define __DPLL_H__
+
+#include <uapi/linux/dpll.h>
+#include <linux/device.h>
+#include <linux/netlink.h>
+
+struct dpll_device;
+struct dpll_pin;
+
+struct dpll_device_ops {
+	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
+			enum dpll_mode *mode, struct netlink_ext_ack *extack);
+	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
+			       const enum dpll_mode mode,
+			       struct netlink_ext_ack *extack);
+	int (*lock_status_get)(const struct dpll_device *dpll, void *dpll_priv,
+			       enum dpll_lock_status *status,
+			       struct netlink_ext_ack *extack);
+	int (*temp_get)(const struct dpll_device *dpll, void *dpll_priv,
+			s32 *temp, struct netlink_ext_ack *extack);
+};
+
+struct dpll_pin_ops {
+	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     const u64 frequency,
+			     struct netlink_ext_ack *extack);
+	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     u64 *frequency, struct netlink_ext_ack *extack);
+	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     const enum dpll_pin_direction direction,
+			     struct netlink_ext_ack *extack);
+	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
+			     const struct dpll_device *dpll, void *dpll_priv,
+			     enum dpll_pin_direction *direction,
+			     struct netlink_ext_ack *extack);
+	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_pin *parent_pin,
+				void *parent_pin_priv,
+				enum dpll_pin_state *state,
+				struct netlink_ext_ack *extack);
+	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
+				 const struct dpll_device *dpll,
+				 void *dpll_priv, enum dpll_pin_state *state,
+				 struct netlink_ext_ack *extack);
+	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
+				const struct dpll_pin *parent_pin,
+				void *parent_pin_priv,
+				const enum dpll_pin_state state,
+				struct netlink_ext_ack *extack);
+	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
+				 const struct dpll_device *dpll,
+				 void *dpll_priv,
+				 const enum dpll_pin_state state,
+				 struct netlink_ext_ack *extack);
+	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
+			const struct dpll_device *dpll,  void *dpll_priv,
+			u32 *prio, struct netlink_ext_ack *extack);
+	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
+			const struct dpll_device *dpll, void *dpll_priv,
+			const u32 prio, struct netlink_ext_ack *extack);
+};
+
+struct dpll_pin_frequency {
+	u64 min;
+	u64 max;
+};
+
+#define DPLL_PIN_FREQUENCY_RANGE(_min, _max)	\
+	{					\
+		.min = _min,			\
+		.max = _max,			\
+	}
+
+#define DPLL_PIN_FREQUENCY(_val) DPLL_PIN_FREQUENCY_RANGE(_val, _val)
+#define DPLL_PIN_FREQUENCY_1PPS \
+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_1_HZ)
+#define DPLL_PIN_FREQUENCY_10MHZ \
+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_MHZ)
+#define DPLL_PIN_FREQUENCY_IRIG_B \
+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_KHZ)
+#define DPLL_PIN_FREQUENCY_DCF77 \
+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
+
+struct dpll_pin_properties {
+	const char *board_label;
+	const char *panel_label;
+	const char *package_label;
+	enum dpll_pin_type type;
+	unsigned long capabilities;
+	u32 freq_supported_num;
+	struct dpll_pin_frequency *freq_supported;
+};
+
+struct dpll_device *
+dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
+
+void dpll_device_put(struct dpll_device *dpll);
+
+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
+			 const struct dpll_device_ops *ops, void *priv);
+
+void dpll_device_unregister(struct dpll_device *dpll,
+			    const struct dpll_device_ops *ops, void *priv);
+
+struct dpll_pin *
+dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
+	     const struct dpll_pin_properties *prop);
+
+int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
+		      const struct dpll_pin_ops *ops, void *priv);
+
+void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
+			 const struct dpll_pin_ops *ops, void *priv);
+
+void dpll_pin_put(struct dpll_pin *pin);
+
+int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
+			     const struct dpll_pin_ops *ops, void *priv);
+
+void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
+				const struct dpll_pin_ops *ops, void *priv);
+
+#endif
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
