Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C72872A9D8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 09:26:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB7AF842EF;
	Sat, 10 Jun 2023 07:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB7AF842EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686381973;
	bh=NtjA5rrLTjsehHjn0wXELzHv46J1dmQHdIVfNWeIqwA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HkzWXslxF4DilJ9UJzsn0sLyoVh5gkOn/YqvrweWSCkQvrpT14Dagmn7LrBNQtLHQ
	 FIki8T9d6a4XKjpPR3nDAJF1oAsk+cjU+Iy4BxB7F3lmzs8M/YrBqjM3anKQZBTWrJ
	 RR8Y8hF6eZEoD69nBHhWJFVM0AdcLciaJ34XYChLA3E8CxX9sCnn2KyXMkaBuFIW/J
	 miqPltdzntqGfCo5FA1fHPOJ+3O5FZ85QKpMJHPrC/tbgrU9P76CiLb1fOd10hZcDc
	 Coued/7oUmPZovDOUdWtFtqjrtW27t8vJUT7iq/SEilATIb0TNQ54mxEAgLVAFgmLD
	 Ot0qnL/3AQ1ZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5BVUKvm-QMA1; Sat, 10 Jun 2023 07:26:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0753C83C4D;
	Sat, 10 Jun 2023 07:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0753C83C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDAEE1BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:26:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C54C883C4D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:26:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C54C883C4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ygYA8d_lUfrf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 07:26:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D0E83C17
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78D0E83C17
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:26:03 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-976a0a1a92bso449200566b.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:26:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686381961; x=1688973961;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5R+1aU+0tbtByu5DRweaXUAmfZyH+0hDrQHKeFWESNo=;
 b=RHmktPJLgXkoAFzzYHDLOE2KTd4xLx28zzxD5R8xWxstSLzPAEuruUh31JilH22SrE
 /7ihqnpB0XtxGkLnaYYNTwOwp6BXRID1igakT8v3vK0r8E+2Ghz8lT/Wqhw6Bj1ZZIxw
 t4SLa0q+vjCLWK9894zofQQ1fecshVT2ZB2OHcvSe79v9i7pFaw6Vw3y7Lr9AngimkmI
 aCpCwZHc/aHuocmKMncc0vZ50eJK0k7qchjk+UwYiSSqSAAJO/olmYJJU15uPY+VQWy4
 HxwUBwpBmyYtNEo7zI2nsIYMdW48nQmYDooxIj3N5rxbPn4sKJd490RFSMmOzqK9I/CC
 sN4A==
X-Gm-Message-State: AC+VfDzTRUQGjeo1+MQE87wW7f19GHUQV0avGrSvk3FXjhHK2NFEE88D
 vaNRxdLOdLm5dWv/lfIekfh8Vw==
X-Google-Smtp-Source: ACHHUZ4Y65Tywhty78311MRIqRo1wGp0WzFlbf3wayIZiqtz3DF37g3GzNp/7YnZvR9gKGGpRcjDpA==
X-Received: by 2002:a17:906:dac6:b0:96a:3f29:40d9 with SMTP id
 xi6-20020a170906dac600b0096a3f2940d9mr4146715ejb.25.1686381961287; 
 Sat, 10 Jun 2023 00:26:01 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b20-20020aa7d494000000b00514a3c04646sm2573878edr.73.2023.06.10.00.26.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 00:26:00 -0700 (PDT)
Date: Sat, 10 Jun 2023 09:25:59 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIQlhyXJAtcp1Fjr@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686381961; x=1688973961; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=5R+1aU+0tbtByu5DRweaXUAmfZyH+0hDrQHKeFWESNo=;
 b=1qnubHDiiUBaYfvLNUmh6HjLQy/ZY0nYgGgvtKiq7x3v1W2wznVYz687cvO49YEFNz
 zctJGsSQvsdBgzOJqWAwQLMF//LaVyrbaDdm5u+lETdUPQ2piMJ6i/wW3s1bQjuk+cR5
 VQOOZI+JBNULIa6GvvLtPKT/y442XaGmC9sj2Xtp7f64HDNkVAWaQaT5RVM8N4FfSo+E
 WyAPaa+P1Q6gnczNilo2vj75mt3l0f4InHTJDZnotoBZvlUEj5C9DyPE7N7qxbEi5DQq
 WMMG2UNEE532gEPnNY9AT8heOl1TSHmGLzgx4jME0daT3/j8J9u9przb8vT3TNxsRdew
 5xNA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=1qnubHDi
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 05/10] dpll: api header: Add
 DPLL framework base functions
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
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:48PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>
>DPLL framework is used to represent and configure DPLL devices
>in systems. Each device that has DPLL and can configure sources
>and outputs can use this framework. Netlink interface is used to
>provide configuration data and to receive notification messages
>about changes in the configuration or status of DPLL device.
>Inputs and outputs of the DPLL device are represented as special
>objects which could be dynamically added to and removed from DPLL
>device.
>
>Add kernel api header, make dpll subsystem available to device drivers.
>
>Add/update makefiles/Kconfig to allow compilation of dpll subsystem.
>
>Co-developed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Milena Olech <milena.olech@intel.com>
>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> MAINTAINERS           |   8 +++
> drivers/Kconfig       |   2 +
> drivers/Makefile      |   1 +
> drivers/dpll/Kconfig  |   7 ++
> drivers/dpll/Makefile |   9 +++
> include/linux/dpll.h  | 144 ++++++++++++++++++++++++++++++++++++++++++
> 6 files changed, 171 insertions(+)
> create mode 100644 drivers/dpll/Kconfig
> create mode 100644 drivers/dpll/Makefile
> create mode 100644 include/linux/dpll.h
>
>diff --git a/MAINTAINERS b/MAINTAINERS
>index 288d9a5edb9d..0e69429ecc55 100644
>--- a/MAINTAINERS
>+++ b/MAINTAINERS
>@@ -6306,6 +6306,14 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
> F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-switch*
> F:	drivers/net/ethernet/freescale/dpaa2/dpsw*
> 
>+DPLL CLOCK SUBSYSTEM
>+M:	Vadim Fedorenko <vadfed@fb.com>
>+L:	netdev@vger.kernel.org
>+S:	Maintained

I think status should be rather "Supported":
"Supported:   Someone is actually paid to look after this."

Also, I think that it would be good to have Arkadiusz Kubalewski
listed here, as he is the one that knows the subsystem by heart.

Also, if you don't mind, I would be happy as a co-maintainer of the
subsystem to be listed here, as I helped to shape the code and
interfaces and I also know it pretty good.



>+F:	drivers/dpll/*
>+F:	include/net/dpll.h
>+F:	include/uapi/linux/dpll.h
>+
> DRBD DRIVER
> M:	Philipp Reisner <philipp.reisner@linbit.com>
> M:	Lars Ellenberg <lars.ellenberg@linbit.com>
>diff --git a/drivers/Kconfig b/drivers/Kconfig
>index 514ae6b24cb2..ce5f63918eba 100644
>--- a/drivers/Kconfig
>+++ b/drivers/Kconfig
>@@ -243,4 +243,6 @@ source "drivers/hte/Kconfig"
> 
> source "drivers/cdx/Kconfig"
> 
>+source "drivers/dpll/Kconfig"
>+
> endmenu
>diff --git a/drivers/Makefile b/drivers/Makefile
>index 7241d80a7b29..6fea42a6dd05 100644
>--- a/drivers/Makefile
>+++ b/drivers/Makefile
>@@ -195,3 +195,4 @@ obj-$(CONFIG_PECI)		+= peci/
> obj-$(CONFIG_HTE)		+= hte/
> obj-$(CONFIG_DRM_ACCEL)		+= accel/
> obj-$(CONFIG_CDX_BUS)		+= cdx/
>+obj-$(CONFIG_DPLL)		+= dpll/
>diff --git a/drivers/dpll/Kconfig b/drivers/dpll/Kconfig
>new file mode 100644
>index 000000000000..a4cae73f20d3
>--- /dev/null
>+++ b/drivers/dpll/Kconfig
>@@ -0,0 +1,7 @@
>+# SPDX-License-Identifier: GPL-2.0-only
>+#
>+# Generic DPLL drivers configuration
>+#
>+
>+config DPLL
>+  bool
>diff --git a/drivers/dpll/Makefile b/drivers/dpll/Makefile
>new file mode 100644
>index 000000000000..2e5b27850110
>--- /dev/null
>+++ b/drivers/dpll/Makefile
>@@ -0,0 +1,9 @@
>+# SPDX-License-Identifier: GPL-2.0
>+#
>+# Makefile for DPLL drivers.
>+#
>+
>+obj-$(CONFIG_DPLL)      += dpll.o
>+dpll-y                  += dpll_core.o
>+dpll-y                  += dpll_netlink.o
>+dpll-y                  += dpll_nl.o
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>new file mode 100644
>index 000000000000..a18bcaa13553
>--- /dev/null
>+++ b/include/linux/dpll.h
>@@ -0,0 +1,144 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+/*
>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>+ *  Copyright (c) 2023 Intel and affiliates
>+ */
>+
>+#ifndef __DPLL_H__
>+#define __DPLL_H__
>+
>+#include <uapi/linux/dpll.h>
>+#include <linux/device.h>
>+#include <linux/netlink.h>
>+
>+struct dpll_device;
>+struct dpll_pin;
>+
>+struct dpll_device_ops {
>+	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>+			enum dpll_mode *mode, struct netlink_ext_ack *extack);
>+	int (*mode_set)(const struct dpll_device *dpll, void *dpll_priv,
>+			const enum dpll_mode mode,
>+			struct netlink_ext_ack *extack);
>+	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
>+			       const enum dpll_mode mode,
>+			       struct netlink_ext_ack *extack);
>+	int (*source_pin_idx_get)(const struct dpll_device *dpll,
>+				  void *dpll_priv,
>+				  u32 *pin_idx,
>+				  struct netlink_ext_ack *extack);
>+	int (*lock_status_get)(const struct dpll_device *dpll, void *dpll_priv,
>+			       enum dpll_lock_status *status,
>+			       struct netlink_ext_ack *extack);
>+	int (*temp_get)(const struct dpll_device *dpll, void *dpll_priv,
>+			s32 *temp, struct netlink_ext_ack *extack);
>+};
>+
>+struct dpll_pin_ops {
>+	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
>+			     const struct dpll_device *dpll, void *dpll_priv,
>+			     const u64 frequency,
>+			     struct netlink_ext_ack *extack);
>+	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
>+			     const struct dpll_device *dpll, void *dpll_priv,
>+			     u64 *frequency, struct netlink_ext_ack *extack);
>+	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
>+			     const struct dpll_device *dpll, void *dpll_priv,
>+			     const enum dpll_pin_direction direction,
>+			     struct netlink_ext_ack *extack);
>+	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
>+			     const struct dpll_device *dpll, void *dpll_priv,
>+			     enum dpll_pin_direction *direction,
>+			     struct netlink_ext_ack *extack);
>+	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
>+				const struct dpll_pin *parent_pin,
>+				void *parent_pin_priv,
>+				enum dpll_pin_state *state,
>+				struct netlink_ext_ack *extack);
>+	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
>+				 const struct dpll_device *dpll,
>+				 void *dpll_priv, enum dpll_pin_state *state,
>+				 struct netlink_ext_ack *extack);
>+	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
>+				const struct dpll_pin *parent_pin,
>+				void *parent_pin_priv,
>+				const enum dpll_pin_state state,
>+				struct netlink_ext_ack *extack);
>+	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
>+				 const struct dpll_device *dpll,
>+				 void *dpll_priv,
>+				 const enum dpll_pin_state state,
>+				 struct netlink_ext_ack *extack);
>+	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
>+			const struct dpll_device *dpll,  void *dpll_priv,
>+			u32 *prio, struct netlink_ext_ack *extack);
>+	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>+			const struct dpll_device *dpll, void *dpll_priv,
>+			const u32 prio, struct netlink_ext_ack *extack);
>+};
>+
>+struct dpll_pin_frequency {
>+	u64 min;
>+	u64 max;
>+};
>+
>+#define DPLL_PIN_FREQUENCY_RANGE(_min, _max)	\
>+	{					\
>+		.min = _min,			\
>+		.max = _max,			\
>+	}
>+
>+#define DPLL_PIN_FREQUENCY(_val) DPLL_PIN_FREQUENCY_RANGE(_val, _val)
>+#define DPLL_PIN_FREQUENCY_1PPS \
>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_1_HZ)
>+#define DPLL_PIN_FREQUENCY_10MHZ \
>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_MHZ)
>+#define DPLL_PIN_FREQUENCY_IRIG_B \
>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_KHZ)
>+#define DPLL_PIN_FREQUENCY_DCF77 \
>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
>+
>+struct dpll_pin_properties {
>+	const char *board_label;
>+	const char *panel_label;
>+	const char *package_label;
>+	enum dpll_pin_type type;
>+	unsigned long capabilities;
>+	u32 freq_supported_num;
>+	struct dpll_pin_frequency *freq_supported;
>+};
>+
>+struct dpll_device
>+*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
>+
>+void dpll_device_put(struct dpll_device *dpll);
>+
>+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>+			 const struct dpll_device_ops *ops, void *priv);
>+
>+void dpll_device_unregister(struct dpll_device *dpll,
>+			    const struct dpll_device_ops *ops, void *priv);
>+
>+struct dpll_pin
>+*dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
>+	      const struct dpll_pin_properties *prop);
>+
>+int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>+		      const struct dpll_pin_ops *ops, void *priv);
>+
>+void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
>+			 const struct dpll_pin_ops *ops, void *priv);
>+
>+void dpll_pin_put(struct dpll_pin *pin);
>+
>+int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
>+			     const struct dpll_pin_ops *ops, void *priv);
>+
>+void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
>+				const struct dpll_pin_ops *ops, void *priv);
>+
>+int dpll_device_change_ntf(struct dpll_device *dpll);
>+
>+int dpll_pin_change_ntf(struct dpll_pin *pin);

Why exactly did you split this into a separate patch? To me, it does not
make any sense. Please squash this header addition to the 


>+
>+#endif
>-- 
>2.37.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
