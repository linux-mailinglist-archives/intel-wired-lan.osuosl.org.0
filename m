Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3C172C97A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 17:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D73D88427E;
	Mon, 12 Jun 2023 15:11:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D73D88427E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686582698;
	bh=mNkKKAevSv6CqfaXC06b2uBK0142SdDAzmNRIInvyYw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CQ2q6I474B6ug+r+lbEAnP0x+mkotyr/kj7cQ6MaOjNEzWMdWNgm8/f4jwhibEhkb
	 9eYuzSRINUljFczIwiuGlsvdMdXvK68mHwKK8Hgm32z5d2gNf2zzEy4deOomQTs+/p
	 8enh3MY9eLNZVrAdsiAPzW+NhSMgVRhwgfzEr225i7kaGBa6deTl5wR2kdyfSaFLQg
	 +Wf+RNJhrLGm6/7ME/WGTBGPaUJYmRVsqpEKhvNf+7nY0quCeL2wazF8FqfK8MkDN/
	 xk5/ln42YmKk16yYvfhQNmN19WLdj2OhVm2bXlupSZMZct1EdQMhoUqdPjXrtEYUGG
	 2tFhZu19+EDyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDFSsxuvM4b9; Mon, 12 Jun 2023 15:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4699F835D9;
	Mon, 12 Jun 2023 15:11:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4699F835D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C3261BF86B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2843B822B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2843B822B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oh4tpP7n8XNq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 15:00:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79CD883BB0
Received: from out-56.mta1.migadu.com (out-56.mta1.migadu.com [95.215.58.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79CD883BB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 15:00:49 +0000 (UTC)
Message-ID: <610b2e82-7b84-4ccd-a6da-1f018c7f6568@linux.dev>
Date: Mon, 12 Jun 2023 16:00:40 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-6-arkadiusz.kubalewski@intel.com>
 <ZIQlhyXJAtcp1Fjr@nanopsycho>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <ZIQlhyXJAtcp1Fjr@nanopsycho>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Mon, 12 Jun 2023 15:11:14 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1686582045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TMgykxS1qJzKT5Nx6Zd900nrWZlCFYHsPI+xqXc7IWA=;
 b=njOM9oT+4yYOCJBc4OCMe8j2y3ysHxLXwLoXtnkk6yE4nrxzcFAOdC/3e9MHU0D7q+fqSR
 tA5kpR2+OMZAysr8jfQ6UX8PE9fSpWoypBYA/wpYOILuBC4N/1DTXkzKx63dfBNWUy82aG
 1hOh3Q+m3HiwOc7+lEpB9ij4aIBGGXY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=njOM9oT+
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
 axboe@kernel.dk, sj@kernel.org, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/06/2023 08:25, Jiri Pirko wrote:
> Fri, Jun 09, 2023 at 02:18:48PM CEST, arkadiusz.kubalewski@intel.com wrote:
>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>> DPLL framework is used to represent and configure DPLL devices
>> in systems. Each device that has DPLL and can configure sources
>> and outputs can use this framework. Netlink interface is used to
>> provide configuration data and to receive notification messages
>> about changes in the configuration or status of DPLL device.
>> Inputs and outputs of the DPLL device are represented as special
>> objects which could be dynamically added to and removed from DPLL
>> device.
>>
>> Add kernel api header, make dpll subsystem available to device drivers.
>>
>> Add/update makefiles/Kconfig to allow compilation of dpll subsystem.
>>
>> Co-developed-by: Milena Olech <milena.olech@intel.com>
>> Signed-off-by: Milena Olech <milena.olech@intel.com>
>> Co-developed-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Co-developed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
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
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 288d9a5edb9d..0e69429ecc55 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -6306,6 +6306,14 @@ F:	Documentation/networking/device_drivers/ethernet/freescale/dpaa2/switch-drive
>> F:	drivers/net/ethernet/freescale/dpaa2/dpaa2-switch*
>> F:	drivers/net/ethernet/freescale/dpaa2/dpsw*
>>
>> +DPLL CLOCK SUBSYSTEM
>> +M:	Vadim Fedorenko <vadfed@fb.com>
>> +L:	netdev@vger.kernel.org
>> +S:	Maintained
> 
> I think status should be rather "Supported":
> "Supported:   Someone is actually paid to look after this."
> 
> Also, I think that it would be good to have Arkadiusz Kubalewski
> listed here, as he is the one that knows the subsystem by heart.
> 
> Also, if you don't mind, I would be happy as a co-maintainer of the
> subsystem to be listed here, as I helped to shape the code and
> interfaces and I also know it pretty good.
> 

Yes, sure, I'll update the list of maintainers to add both yourself and
Arkadiusz to the list, and of course the status to Supported.
> 
> 
>> +F:	drivers/dpll/*
>> +F:	include/net/dpll.h
>> +F:	include/uapi/linux/dpll.h
>> +
>> DRBD DRIVER
>> M:	Philipp Reisner <philipp.reisner@linbit.com>
>> M:	Lars Ellenberg <lars.ellenberg@linbit.com>
>> diff --git a/drivers/Kconfig b/drivers/Kconfig
>> index 514ae6b24cb2..ce5f63918eba 100644
>> --- a/drivers/Kconfig
>> +++ b/drivers/Kconfig
>> @@ -243,4 +243,6 @@ source "drivers/hte/Kconfig"
>>
>> source "drivers/cdx/Kconfig"
>>
>> +source "drivers/dpll/Kconfig"
>> +
>> endmenu
>> diff --git a/drivers/Makefile b/drivers/Makefile
>> index 7241d80a7b29..6fea42a6dd05 100644
>> --- a/drivers/Makefile
>> +++ b/drivers/Makefile
>> @@ -195,3 +195,4 @@ obj-$(CONFIG_PECI)		+= peci/
>> obj-$(CONFIG_HTE)		+= hte/
>> obj-$(CONFIG_DRM_ACCEL)		+= accel/
>> obj-$(CONFIG_CDX_BUS)		+= cdx/
>> +obj-$(CONFIG_DPLL)		+= dpll/
>> diff --git a/drivers/dpll/Kconfig b/drivers/dpll/Kconfig
>> new file mode 100644
>> index 000000000000..a4cae73f20d3
>> --- /dev/null
>> +++ b/drivers/dpll/Kconfig
>> @@ -0,0 +1,7 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +#
>> +# Generic DPLL drivers configuration
>> +#
>> +
>> +config DPLL
>> +  bool
>> diff --git a/drivers/dpll/Makefile b/drivers/dpll/Makefile
>> new file mode 100644
>> index 000000000000..2e5b27850110
>> --- /dev/null
>> +++ b/drivers/dpll/Makefile
>> @@ -0,0 +1,9 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +#
>> +# Makefile for DPLL drivers.
>> +#
>> +
>> +obj-$(CONFIG_DPLL)      += dpll.o
>> +dpll-y                  += dpll_core.o
>> +dpll-y                  += dpll_netlink.o
>> +dpll-y                  += dpll_nl.o
>> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>> new file mode 100644
>> index 000000000000..a18bcaa13553
>> --- /dev/null
>> +++ b/include/linux/dpll.h
>> @@ -0,0 +1,144 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + *  Copyright (c) 2023 Meta Platforms, Inc. and affiliates
>> + *  Copyright (c) 2023 Intel and affiliates
>> + */
>> +
>> +#ifndef __DPLL_H__
>> +#define __DPLL_H__
>> +
>> +#include <uapi/linux/dpll.h>
>> +#include <linux/device.h>
>> +#include <linux/netlink.h>
>> +
>> +struct dpll_device;
>> +struct dpll_pin;
>> +
>> +struct dpll_device_ops {
>> +	int (*mode_get)(const struct dpll_device *dpll, void *dpll_priv,
>> +			enum dpll_mode *mode, struct netlink_ext_ack *extack);
>> +	int (*mode_set)(const struct dpll_device *dpll, void *dpll_priv,
>> +			const enum dpll_mode mode,
>> +			struct netlink_ext_ack *extack);
>> +	bool (*mode_supported)(const struct dpll_device *dpll, void *dpll_priv,
>> +			       const enum dpll_mode mode,
>> +			       struct netlink_ext_ack *extack);
>> +	int (*source_pin_idx_get)(const struct dpll_device *dpll,
>> +				  void *dpll_priv,
>> +				  u32 *pin_idx,
>> +				  struct netlink_ext_ack *extack);
>> +	int (*lock_status_get)(const struct dpll_device *dpll, void *dpll_priv,
>> +			       enum dpll_lock_status *status,
>> +			       struct netlink_ext_ack *extack);
>> +	int (*temp_get)(const struct dpll_device *dpll, void *dpll_priv,
>> +			s32 *temp, struct netlink_ext_ack *extack);
>> +};
>> +
>> +struct dpll_pin_ops {
>> +	int (*frequency_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     const u64 frequency,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*frequency_get)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     u64 *frequency, struct netlink_ext_ack *extack);
>> +	int (*direction_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     const enum dpll_pin_direction direction,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*direction_get)(const struct dpll_pin *pin, void *pin_priv,
>> +			     const struct dpll_device *dpll, void *dpll_priv,
>> +			     enum dpll_pin_direction *direction,
>> +			     struct netlink_ext_ack *extack);
>> +	int (*state_on_pin_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_pin *parent_pin,
>> +				void *parent_pin_priv,
>> +				enum dpll_pin_state *state,
>> +				struct netlink_ext_ack *extack);
>> +	int (*state_on_dpll_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				 const struct dpll_device *dpll,
>> +				 void *dpll_priv, enum dpll_pin_state *state,
>> +				 struct netlink_ext_ack *extack);
>> +	int (*state_on_pin_set)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_pin *parent_pin,
>> +				void *parent_pin_priv,
>> +				const enum dpll_pin_state state,
>> +				struct netlink_ext_ack *extack);
>> +	int (*state_on_dpll_set)(const struct dpll_pin *pin, void *pin_priv,
>> +				 const struct dpll_device *dpll,
>> +				 void *dpll_priv,
>> +				 const enum dpll_pin_state state,
>> +				 struct netlink_ext_ack *extack);
>> +	int (*prio_get)(const struct dpll_pin *pin,  void *pin_priv,
>> +			const struct dpll_device *dpll,  void *dpll_priv,
>> +			u32 *prio, struct netlink_ext_ack *extack);
>> +	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>> +			const struct dpll_device *dpll, void *dpll_priv,
>> +			const u32 prio, struct netlink_ext_ack *extack);
>> +};
>> +
>> +struct dpll_pin_frequency {
>> +	u64 min;
>> +	u64 max;
>> +};
>> +
>> +#define DPLL_PIN_FREQUENCY_RANGE(_min, _max)	\
>> +	{					\
>> +		.min = _min,			\
>> +		.max = _max,			\
>> +	}
>> +
>> +#define DPLL_PIN_FREQUENCY(_val) DPLL_PIN_FREQUENCY_RANGE(_val, _val)
>> +#define DPLL_PIN_FREQUENCY_1PPS \
>> +	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_1_HZ)
>> +#define DPLL_PIN_FREQUENCY_10MHZ \
>> +	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_MHZ)
>> +#define DPLL_PIN_FREQUENCY_IRIG_B \
>> +	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_10_KHZ)
>> +#define DPLL_PIN_FREQUENCY_DCF77 \
>> +	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
>> +
>> +struct dpll_pin_properties {
>> +	const char *board_label;
>> +	const char *panel_label;
>> +	const char *package_label;
>> +	enum dpll_pin_type type;
>> +	unsigned long capabilities;
>> +	u32 freq_supported_num;
>> +	struct dpll_pin_frequency *freq_supported;
>> +};
>> +
>> +struct dpll_device
>> +*dpll_device_get(u64 clock_id, u32 dev_driver_id, struct module *module);
>> +
>> +void dpll_device_put(struct dpll_device *dpll);
>> +
>> +int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>> +			 const struct dpll_device_ops *ops, void *priv);
>> +
>> +void dpll_device_unregister(struct dpll_device *dpll,
>> +			    const struct dpll_device_ops *ops, void *priv);
>> +
>> +struct dpll_pin
>> +*dpll_pin_get(u64 clock_id, u32 dev_driver_id, struct module *module,
>> +	      const struct dpll_pin_properties *prop);
>> +
>> +int dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>> +		      const struct dpll_pin_ops *ops, void *priv);
>> +
>> +void dpll_pin_unregister(struct dpll_device *dpll, struct dpll_pin *pin,
>> +			 const struct dpll_pin_ops *ops, void *priv);
>> +
>> +void dpll_pin_put(struct dpll_pin *pin);
>> +
>> +int dpll_pin_on_pin_register(struct dpll_pin *parent, struct dpll_pin *pin,
>> +			     const struct dpll_pin_ops *ops, void *priv);
>> +
>> +void dpll_pin_on_pin_unregister(struct dpll_pin *parent, struct dpll_pin *pin,
>> +				const struct dpll_pin_ops *ops, void *priv);
>> +
>> +int dpll_device_change_ntf(struct dpll_device *dpll);
>> +
>> +int dpll_pin_change_ntf(struct dpll_pin *pin);
> 
> Why exactly did you split this into a separate patch? To me, it does not
> make any sense. Please squash this header addition to the
> 

Sounds reasonable.

> 
>> +
>> +#endif
>> -- 
>> 2.37.3
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
