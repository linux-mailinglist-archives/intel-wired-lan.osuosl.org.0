Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FC272A9E7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 09:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12D2483C53;
	Sat, 10 Jun 2023 07:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12D2483C53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686382160;
	bh=YsqhboMvB2iysHm0vtFbj7vh18d6gJgw0n8/ObcJxZM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vPCGwKr2N3ZskyjEig/k6u+OSArS20fSpiCZB6vL86VyxgGvsDjRs6dgnJBpc84CG
	 vrgw978piGsAcjWAFpsPvUktbjsrsymE3rqmHWPSkwMMxcV+eTnPHEYHBvv3kdoJxv
	 czWREGJ2XF185PE/+6keDf8UV33NYJbuEMv8M4mDOiQcGE8YCpHE2u32tifiOu788j
	 snjoNIoMOa3KthNSZw3ZrMqAFDwXz1Jl/FCr8SpFy66zFGjo6OzcM4Eajle5/wyNiy
	 WM4dSJUjKxurqgQrYU1HLodET7zYyTDomBG0GhL6dhIlKzPXHkJ74LsorMXdjC+W61
	 iDgb1myg5qM8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cIhwV8E1qaw; Sat, 10 Jun 2023 07:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4092283C4D;
	Sat, 10 Jun 2023 07:29:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4092283C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BEBA1BF841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2034760BF5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2034760BF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ODtvup7I6ZBa for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 07:29:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD5A660ADD
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD5A660ADD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 07:29:11 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5147e40bbbbso3787682a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 00:29:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686382149; x=1688974149;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bCfVesusrgmkFpfwFyl6x8mUi/bS1gyIJl7RpzLtqYI=;
 b=MuRldNEmNn8bKKo8Y0xE98H9+GJl/KvzJ397xRyszTZdL7CMnNa5w/dm4pTXJedme6
 hWEnIFuIv1dBGboWJrnpjWTOtiSfo8KYBAvp/aIBIvM+LYb041J1/QtTPAVNJ7z/+ERe
 k/jRZB18i6/7J99J3iWrjx7kLQ52RimxWrJq+VHc/+b1kQ+0JV/fs9LO/jW+1BwaGzZn
 ukK9wElu3+8ZYn9fM9ZalnIKYgKlf3zcRfg9L/Budj4kt7V+yFey5x42RGVQOy78X1Cm
 M7ujKpAIihBfoXZ+VnoTkwZRxqMNG/Pc9XLtgU0sb7H+0yUYGzOhSN3DPm7yF8iQTf3+
 tv6A==
X-Gm-Message-State: AC+VfDwy1fTT/VVFQi4KOEQuwn08x4KoIcokvPO+wiz9ZfGf06y4djKj
 7/zefLO/CZX9mkF9OVaBnva/gQ==
X-Google-Smtp-Source: ACHHUZ5NatzZlIx+OQ4kzbAOdyjlfaNiTBKgd8AUnu2eAYgPO5zNQOEu3+k0VSOdEJlu9zm6knajjw==
X-Received: by 2002:aa7:d703:0:b0:514:95e8:566c with SMTP id
 t3-20020aa7d703000000b0051495e8566cmr515118edq.42.1686382149280; 
 Sat, 10 Jun 2023 00:29:09 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 dy28-20020a05640231fc00b0050bc6c04a66sm2574299edb.40.2023.06.10.00.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 00:29:08 -0700 (PDT)
Date: Sat, 10 Jun 2023 09:29:07 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIQmQ1NLFSPADVlA@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
 <ZIQlhyXJAtcp1Fjr@nanopsycho>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZIQlhyXJAtcp1Fjr@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686382149; x=1688974149; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bCfVesusrgmkFpfwFyl6x8mUi/bS1gyIJl7RpzLtqYI=;
 b=DgsvCr4h7jZghI7GnDzpuinzURUb58Kgrb1BOfJW2yHNfgF48+whfAxpMs8Fv3zPCf
 HzAD2IUEPfvws4agIH3imeW72C0qF8hUh4UKQ0SB2pOZEqcAeI0gnQ568HcLJ6xeOqAc
 2KKqdcwWDXdd8LaGqCmEXYtNahqx5Ep+LYNh15bjSfwJmHA4JjsBJhi4j5j6m21J0QAg
 rixg4jL6mlT0cI1Gx9E2ctbfKr7q59LcDqlt3CPUKcrUn5fSNfVqEreKaZ757CKOzIA1
 hTnL2TzWnuH2H2rogdSQdSTgsfAPcQrdC8zWj4gdq6pPuykQjriBOqr+UYvOs+SJCx7o
 AENQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=DgsvCr4h
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

Sat, Jun 10, 2023 at 09:25:59AM CEST, jiri@resnulli.us wrote:
>Fri, Jun 09, 2023 at 02:18:48PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>>DPLL framework is used to represent and configure DPLL devices
>>in systems. Each device that has DPLL and can configure sources
>>and outputs can use this framework. Netlink interface is used to
>>provide configuration data and to receive notification messages
>>about changes in the configuration or status of DPLL device.
>>Inputs and outputs of the DPLL device are represented as special
>>objects which could be dynamically added to and removed from DPLL
>>device.
>>
>>Add kernel api header, make dpll subsystem available to device drivers.
>>
>>Add/update makefiles/Kconfig to allow compilation of dpll subsystem.
>>
>>Co-developed-by: Milena Olech <milena.olech@intel.com>
>>Signed-off-by: Milena Olech <milena.olech@intel.com>
>>Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> MAINTAINERS           |   8 +++
>> drivers/Kconfig       |   2 +
>> drivers/Makefile      |   1 +
>> drivers/dpll/Kconfig  |   7 ++
>> drivers/dpll/Makefile |   9 +++
>> include/linux/dpll.h  | 144 ++++++++++++++++++++++++++++++++++++++++++
>> 6 files changed, 171 insertions(+)
>> create mode 100644 drivers/dpll/Kconfig
>> create mode 100644 drivers/dpll/Makefile
>> create mode 100644 include/linux/dpll.h
>>
>>diff --git a/MAINTAINERS b/MAINTAINERS
>>index 288d9a5edb9d..0e69429ecc55 100644
>>--- a/MAINTAINERS
>>+++ b/MAINTAINERS
>>@@ -6306,6 +6306,14 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
>> F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-switch*
>> F:	drivers/net/ethernet/freescale/dpaa2/dpsw*
>> 
>>+DPLL CLOCK SUBSYSTEM
>>+M:	Vadim Fedorenko <vadfed@fb.com>
>>+L:	netdev@vger.kernel.org
>>+S:	Maintained
>
>I think status should be rather "Supported":
>"Supported:   Someone is actually paid to look after this."
>
>Also, I think that it would be good to have Arkadiusz Kubalewski
>listed here, as he is the one that knows the subsystem by heart.
>
>Also, if you don't mind, I would be happy as a co-maintainer of the
>subsystem to be listed here, as I helped to shape the code and
>interfaces and I also know it pretty good.
>
>
>
>>+F:	drivers/dpll/*
>>+F:	include/net/dpll.h
>>+F:	include/uapi/linux/dpll.h
>>+
>> DRBD DRIVER
>> M:	Philipp Reisner <philipp.reisner@linbit.com>
>> M:	Lars Ellenberg <lars.ellenberg@linbit.com>
>>diff --git a/drivers/Kconfig b/drivers/Kconfig
>>index 514ae6b24cb2..ce5f63918eba 100644
>>--- a/drivers/Kconfig
>>+++ b/drivers/Kconfig
>>@@ -243,4 +243,6 @@ source "drivers/hte/Kconfig"
>> 
>> source "drivers/cdx/Kconfig"
>> 
>>+source "drivers/dpll/Kconfig"
>>+
>> endmenu
>>diff --git a/drivers/Makefile b/drivers/Makefile
>>index 7241d80a7b29..6fea42a6dd05 100644
>>--- a/drivers/Makefile
>>+++ b/drivers/Makefile
>>@@ -195,3 +195,4 @@ obj-$(CONFIG_PECI)		+= peci/
>> obj-$(CONFIG_HTE)		+= hte/
>> obj-$(CONFIG_DRM_ACCEL)		+= accel/
>> obj-$(CONFIG_CDX_BUS)		+= cdx/
>>+obj-$(CONFIG_DPLL)		+= dpll/
>>diff --git a/drivers/dpll/Kconfig b/drivers/dpll/Kconfig
>>new file mode 100644
>>index 000000000000..a4cae73f20d3
>>--- /dev/null
>>+++ b/drivers/dpll/Kconfig
>>@@ -0,0 +1,7 @@
>>+# SPDX-License-Identifier: GPL-2.0-only
>>+#
>>+# Generic DPLL drivers configuration
>>+#
>>+
>>+config DPLL
>>+  bool
>>diff --git a/drivers/dpll/Makefile b/drivers/dpll/Makefile
>>new file mode 100644
>>index 000000000000..2e5b27850110
>>--- /dev/null
>>+++ b/drivers/dpll/Makefile
>>@@ -0,0 +1,9 @@
>>+# SPDX-License-Identifier: GPL-2.0
>>+#
>>+# Makefile for DPLL drivers.
>>+#
>>+
>>+obj-$(CONFIG_DPLL)      += dpll.o
>>+dpll-y                  += dpll_core.o
>>+dpll-y                  += dpll_netlink.o
>>+dpll-y                  += dpll_nl.o
>>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>>new file mode 100644
>>index 000000000000..a18bcaa13553
>>--- /dev/null
>>+++ b/include/linux/dpll.h
>>@@ -0,0 +1,144 @@
>>+/* SPDX-License-Identifier: GPL-2.0 */
>>+/*
>>+ *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>>+ *  Copyright (c) 2023 Intel and affiliates
>>+ */
>>+
>>+#ifndef __DPLL_H__
>>+#define __DPLL_H__
>>+
>>+#include <uapi/linux/dpll.h>
>>+#include <linux/device.h>
>>+#include <linux/netlink.h>
>>+
>>+struct dpll_device;
>>+struct dpll_pin;
>>+
>>+struct dpll_device_ops {
>>+	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>>+			enum dpll_mode *mode, struct netlink_ext_ack *extack);
>>+	int (*mode_set)(const struct dpll_device *dpll, void *dpll_priv,
>>+			const enum dpll_mode mode,
>>+			struct netlink_ext_ack *extack);
>>+	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
>>+			       const enum dpll_mode mode,
>>+			       struct netlink_ext_ack *extack);
>>+	int (*source_pin_idx_get)(const struct dpll_device *dpll,
>>+				  void *dpll_priv,
>>+				  u32 *pin_idx,
>>+				  struct netlink_ext_ack *extack);
>>+	int (*lock_status_get)(const struct dpll_device *dpll, void *dpll_priv,
>>+			       enum dpll_lock_status *status,
>>+			       struct netlink_ext_ack *extack);
>>+	int (*temp_get)(const struct dpll_device *dpll, void *dpll_priv,
>>+			s32 *temp, struct netlink_ext_ack *extack);
>>+};
>>+
>>+struct dpll_pin_ops {
>>+	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
>>+			     const struct dpll_device *dpll, void *dpll_priv,
>>+			     const u64 frequency,
>>+			     struct netlink_ext_ack *extack);
>>+	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
>>+			     const struct dpll_device *dpll, void *dpll_priv,
>>+			     u64 *frequency, struct netlink_ext_ack *extack);
>>+	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
>>+			     const struct dpll_device *dpll, void *dpll_priv,
>>+			     const enum dpll_pin_direction direction,
>>+			     struct netlink_ext_ack *extack);
>>+	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
>>+			     const struct dpll_device *dpll, void *dpll_priv,
>>+			     enum dpll_pin_direction *direction,
>>+			     struct netlink_ext_ack *extack);
>>+	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
>>+				const struct dpll_pin *parent_pin,
>>+				void *parent_pin_priv,
>>+				enum dpll_pin_state *state,
>>+				struct netlink_ext_ack *extack);
>>+	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
>>+				 const struct dpll_device *dpll,
>>+				 void *dpll_priv, enum dpll_pin_state *state,
>>+				 struct netlink_ext_ack *extack);
>>+	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
>>+				const struct dpll_pin *parent_pin,
>>+				void *parent_pin_priv,
>>+				const enum dpll_pin_state state,
>>+				struct netlink_ext_ack *extack);
>>+	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
>>+				 const struct dpll_device *dpll,
>>+				 void *dpll_priv,
>>+				 const enum dpll_pin_state state,
>>+				 struct netlink_ext_ack *extack);
>>+	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
>>+			const struct dpll_device *dpll,  void *dpll_priv,
>>+			u32 *prio, struct netlink_ext_ack *extack);
>>+	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>>+			const struct dpll_device *dpll, void *dpll_priv,
>>+			const u32 prio, struct netlink_ext_ack *extack);
>>+};
>>+
>>+struct dpll_pin_frequency {
>>+	u64 min;
>>+	u64 max;
>>+};
>>+
>>+#define DPLL_PIN_FREQUENCY_RANGE(_min, _max)	\
>>+	{					\
>>+		.min = _min,			\
>>+		.max = _max,			\
>>+	}
>>+
>>+#define DPLL_PIN_FREQUENCY(_val) DPLL_PIN_FREQUENCY_RANGE(_val, _val)
>>+#define DPLL_PIN_FREQUENCY_1PPS \
>>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_1_HZ)
>>+#define DPLL_PIN_FREQUENCY_10MHZ \
>>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_MHZ)
>>+#define DPLL_PIN_FREQUENCY_IRIG_B \
>>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_KHZ)
>>+#define DPLL_PIN_FREQUENCY_DCF77 \
>>+	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
>>+
>>+struct dpll_pin_properties {
>>+	const char *board_label;
>>+	const char *panel_label;
>>+	const char *package_label;
>>+	enum dpll_pin_type type;
>>+	unsigned long capabilities;
>>+	u32 freq_supported_num;
>>+	struct dpll_pin_frequency *freq_supported;
>>+};
>>+
>>+struct dpll_device
>>+*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
>>+
>>+void dpll_device_put(struct dpll_device *dpll);
>>+
>>+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>>+			 const struct dpll_device_ops *ops, void *priv);
>>+
>>+void dpll_device_unregister(struct dpll_device *dpll,
>>+			    const struct dpll_device_ops *ops, void *priv);
>>+
>>+struct dpll_pin
>>+*dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
>>+	      const struct dpll_pin_properties *prop);
>>+
>>+int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>>+		      const struct dpll_pin_ops *ops, void *priv);
>>+
>>+void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
>>+			 const struct dpll_pin_ops *ops, void *priv);
>>+
>>+void dpll_pin_put(struct dpll_pin *pin);
>>+
>>+int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
>>+			     const struct dpll_pin_ops *ops, void *priv);
>>+
>>+void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
>>+				const struct dpll_pin_ops *ops, void *priv);
>>+
>>+int dpll_device_change_ntf(struct dpll_device *dpll);
>>+
>>+int dpll_pin_change_ntf(struct dpll_pin *pin);
>
>Why exactly did you split this into a separate patch? To me, it does not
>make any sense. Please squash this header addition to the 

..Hit send be mistake.

Please squash this header addition to the patch where you actually
introcude the functions. Since you define a lot of structures here, I
believe that without this patch things are not compilable and breat
dissection. Makes me wonder why you did this split...


>
>
>>+
>>+#endif
>>-- 
>>2.37.3
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
