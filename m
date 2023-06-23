Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E6173B7A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 14:41:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 142D4419BE;
	Fri, 23 Jun 2023 12:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 142D4419BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687524101;
	bh=NBTtEUgf+iUJDErwBBoFg+uCSRE5RliGnlvImqYzbHc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ljYgHVcEtdDw7cPkAdhgftFupNRgeinspSVV9Db5vgq3JweYvucBHVRltKfwUaHxu
	 rWCTv+42VC/G5nlNOKlHoyJvSstC5HToweg0BXcpMDtrMPG8UQ7GXT62WECFw9Hyda
	 vSXi0+exa25WQVp0aqd0rkpR9rwT9dMriTxdMSXQx0fTi6Sd0HTZ4GqZlrU73knmR1
	 o/5UjpdfSIgqZ1VIHIViiXMrjIXFi+LUdWWo5LszYGD74kRUT9isixdKO/ROzMsb3u
	 3bL3GIWfOyXmnTrUZ4jaAEQva/i275G4axnC/PBYWTKlPuLuv7H2CPKENf2C9IG5+I
	 ySZgL+DE8yamQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SiBAWpe9-w3p; Fri, 23 Jun 2023 12:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AFD1419A8;
	Fri, 23 Jun 2023 12:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AFD1419A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D735C1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBBA54241B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBBA54241B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BSGg7AaFkAc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 12:41:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2506C41F96
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2506C41F96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:41:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="341096670"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="341096670"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 05:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="785321200"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="785321200"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jun 2023 05:41:07 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri, 23 Jun 2023 14:38:15 +0200
Message-Id: <20230623123820.42850-6-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687524084; x=1719060084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oqvfsLtj1L5cQN9tygjW4R0FVUyH7ELF2GpqOO5e6JU=;
 b=F3R5ZA36sAlRY7znrTuMu3J6JDXnOb/hyMGEOcvdIEc25S9eM2ywiB5s
 tZxF2mRrVrFt3PDlV8R8mJIOjW//18LEgnyY54FaVFK7hX7u0gCnhoig/
 iWVmFqJrLHeJczKNU3OjqOK/QTfY1T9ozRb2+68FW5CUt+zeNdQoKbGIq
 7HtT83UDVvrRZP0OfjXw0Rf2CjxaTVfQsN09PRLKVmxT4yW5l6/9+c8pw
 HBID0E7DYrGe0e0CUyC0lRRCGMw6QkBI38cFj9Mak8pP1daSBL8TPPmUr
 07dZ2sV3S40ico9otTLHPUPXVClPOV/ysZqKuW/nwYy/50kDjsCQsyyet
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3R5ZA36
Subject: [Intel-wired-lan] [RFC PATCH v9 05/10] dpll: api header: Add DPLL
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, airlied@redhat.com, vadfed@fb.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 netdev@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vadim Fedorenko <vadim.fedorenko@linux.dev>

DPLL framework is used to represent and configure DPLL devices
in systems. Each device that has DPLL and can configure sources
and outputs can use this framework. Netlink interface is used to
provide configuration data and to receive notification messages
about changes in the configuration or status of DPLL device.
Inputs and outputs of the DPLL device are represented as special
objects which could be dynamically added to and removed from DPLL
device.

Add kernel api header, make dpll subsystem available to device drivers.

Add/update makefiles/Kconfig to allow compilation of dpll subsystem.

Co-developed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
Co-developed-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 MAINTAINERS           |   8 +++
 drivers/Kconfig       |   2 +
 drivers/Makefile      |   1 +
 drivers/dpll/Kconfig  |   7 ++
 drivers/dpll/Makefile |   9 +++
 include/linux/dpll.h  | 144 ++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 171 insertions(+)
 create mode 100644 drivers/dpll/Kconfig
 create mode 100644 drivers/dpll/Makefile
 create mode 100644 include/linux/dpll.h

diff --git a/MAINTAINERS b/MAINTAINERS
index cb14589d14ab..58040fc550b8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6307,6 +6307,14 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
 F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-switch*
 F:	drivers/net/ethernet/freescale/dpaa2/dpsw*
 
+DPLL CLOCK SUBSYSTEM
+M:	Vadim Fedorenko <vadfed@fb.com>
+L:	netdev@vger.kernel.org
+S:	Maintained
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
diff --git a/include/linux/dpll.h b/include/linux/dpll.h
new file mode 100644
index 000000000000..a18bcaa13553
--- /dev/null
+++ b/include/linux/dpll.h
@@ -0,0 +1,144 @@
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
+	int (*mode_set)(const struct dpll_device *dpll, void *dpll_priv,
+			const enum dpll_mode mode,
+			struct netlink_ext_ack *extack);
+	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
+			       const enum dpll_mode mode,
+			       struct netlink_ext_ack *extack);
+	int (*source_pin_idx_get)(const struct dpll_device *dpll,
+				  void *dpll_priv,
+				  u32 *pin_idx,
+				  struct netlink_ext_ack *extack);
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
+struct dpll_device
+*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
+
+void dpll_device_put(struct dpll_device *dpll);
+
+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
+			 const struct dpll_device_ops *ops, void *priv);
+
+void dpll_device_unregister(struct dpll_device *dpll,
+			    const struct dpll_device_ops *ops, void *priv);
+
+struct dpll_pin
+*dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
+	      const struct dpll_pin_properties *prop);
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
+int dpll_device_change_ntf(struct dpll_device *dpll);
+
+int dpll_pin_change_ntf(struct dpll_pin *pin);
+
+#endif
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
