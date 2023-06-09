Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C77299A4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 14:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0FE3615C5;
	Fri,  9 Jun 2023 12:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0FE3615C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686313329;
	bh=Rj2ea6Qxtp7ok7SfDzglTYEfYpIOuH7iDlTL3Gn/OH0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DJM6zQEkrq2YkaNWXzyZQ4b3Vc+7xi8pGmMAKJ8pjPf2jdF6PopYGSzHXaspDf54/
	 AHq4J1mEFD5Ce9K/n5hualWEBs4Sr2Ro2g6rUV5hTDdbg/L1rtFVMnXUWRgrRO3zHA
	 7GdlhlexaernQEp26qY5Gwh6bmUSnDanwjWXRRpECK8z8lvxqkjVCZ/5HDna1Xa+nY
	 7Pu0vC1OuMPbY+Ql6EWDOS3Z0m0MGiqaQatA9JP9I02PA6RSq/dvzpM2vb+9DlULNH
	 gK6zyt6xsVww6bSzdNOJfLDSxt0O6xZD283GHjbs0e+FwMr5Uu8cHqwvduoX5OI6za
	 uwF1Vu6nJhm1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AkFTr9nvt61H; Fri,  9 Jun 2023 12:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D13860C07;
	Fri,  9 Jun 2023 12:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D13860C07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFE321BF3A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A483D40B60
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A483D40B60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vK30Cq88JAvP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 12:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB44A40604
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB44A40604
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 12:21:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="337220192"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="337220192"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 05:21:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710348609"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="710348609"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga002.jf.intel.com with ESMTP; 09 Jun 2023 05:21:47 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri,  9 Jun 2023 14:18:48 +0200
Message-Id: <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686313319; x=1717849319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=huzSe6TlOxoQNIUn4mMHd2Ym4hmi7OB+Rh5CQWxixYI=;
 b=gwA1kuOG25BlzTfZme7SIWYotMJsAjYNSU/SUL9K8IVD52b8JCEF0RUM
 34bpc/vr5WMSFhaBWujCFdQAGU3rd6q1lFieMEJDu1BUdwOEnIniMLuuR
 gmMGY0lA0BEfhAbn3cSzD3/RSzf0EiFXJaQJ4GuH3d0H4Li1ZsmZhL9F4
 JSuc7uA0vQGhnl6VWtmq6tVrjcTLyaJtLAZsQ6FtizysFhmYhuAeQK3/m
 qeAcPu0aPRG5Dg522D+E2VzY5ogcXY0AMZOXtIWXfHnR2Zy61ueMviBkV
 Q78Kf+iQ1Wsme3K7DkgI2Lp8aiZ3vaTKzk5R2vWVtArDn2TJviSfPw+gp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gwA1kuOG
Subject: [Intel-wired-lan] [RFC PATCH v8 05/10] dpll: api header: Add DPLL
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
index 288d9a5edb9d..0e69429ecc55 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6306,6 +6306,14 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
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
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
