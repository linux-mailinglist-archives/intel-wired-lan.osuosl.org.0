Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B93C175CB7E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60A6B6136A;
	Fri, 21 Jul 2023 15:21:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60A6B6136A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952889;
	bh=L/o001khvGXp3Laiq0M/CKGUTsJaNfrZU92queRMM90=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=baMt3Z3TVIeCNY8/yZ4UNqZdyMOuDwICiYN4SuC5m7hFKG0lzVbNv82/MWL11ivmm
	 dDs/GcLPgQwn4+VCNTbI/1GikUelWbMG2Wnpm93KuMo1dGTwVID4MnLv/XufJMEfYq
	 UKOKno4XwvgxYp5LHMYE69ez/AhNAdIA6j9Gl/j7r6QqObGkoG4ktw3+e58At3OZiC
	 s+/8BRF7aKUtlZPM7Vf3LviTAaVEu37+CgpsI/QbiK0c3ktC6r/IMdFr0cj3vGl0bs
	 QDrkX7QwmOj9nNvdIeYk+g2ujsVPJyIiviw/QeWnlFai3D28xkR4ODPg7oX7yFxBl0
	 A6RpVNI6g5kug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aguvFERoHQNE; Fri, 21 Jul 2023 15:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B24A6134B;
	Fri, 21 Jul 2023 15:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B24A6134B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9347B1BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AC08417AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AC08417AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rQRiNt_GN2Xb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:01:22 +0000 (UTC)
X-Greylist: delayed 431 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 21 Jul 2023 15:01:22 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59E4A41790
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59E4A41790
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:01:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="357029363"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="357029363"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 07:54:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="728139227"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="728139227"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jul 2023 07:54:07 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andy@kernel.org>) id 1qMrW9-009CRT-1A;
 Fri, 21 Jul 2023 17:54:05 +0300
Date: Fri, 21 Jul 2023 17:54:05 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZLqcDf68HgB6Knnk@smile.fi.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-4-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230721071532.613888-4-marcin.szycik@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Approved-At: Fri, 21 Jul 2023 15:21:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/6] pfcp: add PFCP module
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 21, 2023 at 09:15:29AM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Packet Forwarding Control Protocol (PFCP) is a 3GPP Protocol
> used between the control plane and the user plane function.
> It is specified in TS 29.244[1].
> 
> Note that this module is not designed to support this Protocol
> in the kernel space. There is no support for parsing any PFCP messages.
> There is no API that could be used by any userspace daemon.
> Basically it does not support PFCP. This protocol is sophisticated
> and there is no need for implementing it in the kernel. The purpose
> of this module is to allow users to setup software and hardware offload
> of PFCP packets using tc tool.
> 
> When user requests to create a PFCP device, a new socket is created.
> The socket is set up with port number 8805 which is specific for
> PFCP [29.244 4.2.2]. This allow to receive PFCP request messages,
> response messages use other ports.
> 
> Note that only one PFCP netdev can be created.
> 
> Only IPv4 is supported at this time.
> 
> [1] https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=3111

> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Co-developed-by: Marcin...?

> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

...

> +/* PFCP according to 3GPP TS 29.244
> + *
> + * Copyright (C) 2022, Intel Corporation.

> + * (C) 2022 by Wojciech Drewek <wojciech.drewek@intel.com>

Is it approved by our Legal? First time I see such (c) together with Intel's
and correct authorship.

> + * Author: Wojciech Drewek <wojciech.drewek@intel.com>
> + */

...

> +struct pfcp_dev {
> +	struct list_head	list;

This is defined in types.h which is missing.

> +	struct socket		*sock;
> +	struct net_device	*dev;
> +	struct net		*net;
> +};

...

> +	dev->needs_free_netdev	= true;

Single space is enough.

...

> +static int pfcp_newlink(struct net *net, struct net_device *dev,
> +			struct nlattr *tb[], struct nlattr *data[],
> +			struct netlink_ext_ack *extack)
> +{
> +	struct pfcp_dev *pfcp = netdev_priv(dev);
> +	struct pfcp_net *pn;
> +	int err;
> +
> +	pfcp->net = net;
> +
> +	err = pfcp_add_sock(pfcp);
> +	if (err) {
> +		netdev_dbg(dev, "failed to add pfcp socket %d\n", err);
> +		goto exit;
> +	}
> +
> +	err = register_netdevice(dev);
> +	if (err) {
> +		netdev_dbg(dev, "failed to register pfcp netdev %d\n", err);
> +		goto exit_reg_netdev;
> +	}
> +
> +	pn = net_generic(dev_net(dev), pfcp_net_id);
> +	list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);
> +
> +	netdev_dbg(dev, "registered new PFCP interface\n");
> +
> +	return 0;
> +
> +exit_reg_netdev:

The label naming should tell what _will_ happen if goto $LABEL.
Something like

exit_del_pfcp_sock:

Ditto for all labels in your code.

> +	pfcp_del_sock(pfcp);
> +exit:

Shouldn't here be

	->net = NULL;

?

> +	return err;
> +}

...

> +#ifndef _PFCP_H_
> +#define _PFCP_H_

Missing headers:
For net_device internals, bool type, and strcpm() call.

> +#define PFCP_PORT 8805
> +
> +static inline bool netif_is_pfcp(const struct net_device *dev)
> +{
> +	return dev->rtnl_link_ops &&
> +	       !strcmp(dev->rtnl_link_ops->kind, "pfcp");
> +}
> +
> +#endif

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
