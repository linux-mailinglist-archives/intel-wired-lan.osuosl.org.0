Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 668CD75F36D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D04560F60;
	Mon, 24 Jul 2023 10:36:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D04560F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690195003;
	bh=eOu0aGbq8EU7Xaly3F7UgRmFFO1ChrxJp9xlIzGVaVA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zv4Btj9TdHf04HIqzPIgCVqWh1hPc8AkF12yOwJfI4RDqvPsN4XyhybWBgmu47Vii
	 5NFPjmaKk3/uBqJN4jQxOHgeazMhrX3LxZzG0q96v4Rqkh4H50Q/EMaeAceF1n0qjJ
	 PCQJcFSjTgIegaKnmCcEQaJwB+NZ4gbxdYlyib6p1G9GZTCSjjBBjHFspswfzST6NE
	 Y+Nbw5oqYTeWqhiFypKmHlN7yLjBFkpAi6cNo68nuhbh1gL7wNbiruUsxnRpJoZYI8
	 RVAfkNAjNMD57XXQABnQKO/KPEPLK6y/q8CLXuEPSuHrwbwe7H8vvZH2yUTV24Zlnc
	 HL9nYoF2GQMOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BLsIkVvPG4o6; Mon, 24 Jul 2023 10:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EBDD60F3D;
	Mon, 24 Jul 2023 10:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EBDD60F3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 26C571BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B69C81DE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B69C81DE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSrmyUABj0S7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:36:35 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC7B381DE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC7B381DE5
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="433649085"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="433649085"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="899453197"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="899453197"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.237.140.125])
 ([10.237.140.125])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:36:30 -0700
Message-ID: <0aab3ce1-d92d-3df1-2dd4-60796bf9bf38@linux.intel.com>
Date: Mon, 24 Jul 2023 12:36:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Andy Shevchenko <andy@kernel.org>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-4-marcin.szycik@linux.intel.com>
 <ZLqcDf68HgB6Knnk@smile.fi.intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ZLqcDf68HgB6Knnk@smile.fi.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690194993; x=1721730993;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bO8nTFIe7M7bVl0r8YUD+3gUO5FWmnkLDH3idl28Gbg=;
 b=HNbqRAfoqtF/dbSIAp2Y5CD3b36206Wm0Xp/aRbZBe5QkSbLCtOWqhVe
 4RqhS9gcEdqV09vJjasp5dhvkulaD7yjCGDh4Wssgr9hMVIBB+V03g0+m
 gZCKUkYrD1kJn2KawezZxmYkXQewUswv25f6Cvh5dsfRSdhYux96rTH1z
 JijeXSKDemrPgIUpBUsTRHCMss4miN3A+ZerHAFR6M41u9wNqpOtg8ibn
 6nVzFa6I3KS3JMOj//MjSrvJWBcSfLk/KXYeY802c+xmc9yC+ZJh26aMR
 9PGziZYHiddvWjzMfhNzRsK2MWdfoAE2qO2qL+5wKyVDJWGOwF4oFCZ/4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HNbqRAfo
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



On 21.07.2023 16:54, Andy Shevchenko wrote:
> On Fri, Jul 21, 2023 at 09:15:29AM +0200, Marcin Szycik wrote:
>> From: Wojciech Drewek <wojciech.drewek@intel.com>
>>
>> Packet Forwarding Control Protocol (PFCP) is a 3GPP Protocol
>> used between the control plane and the user plane function.
>> It is specified in TS 29.244[1].
>>
>> Note that this module is not designed to support this Protocol
>> in the kernel space. There is no support for parsing any PFCP messages.
>> There is no API that could be used by any userspace daemon.
>> Basically it does not support PFCP. This protocol is sophisticated
>> and there is no need for implementing it in the kernel. The purpose
>> of this module is to allow users to setup software and hardware offload
>> of PFCP packets using tc tool.
>>
>> When user requests to create a PFCP device, a new socket is created.
>> The socket is set up with port number 8805 which is specific for
>> PFCP [29.244 4.2.2]. This allow to receive PFCP request messages,
>> response messages use other ports.
>>
>> Note that only one PFCP netdev can be created.
>>
>> Only IPv4 is supported at this time.
>>
>> [1] https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=3111
> 
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Co-developed-by: Marcin...?

In this case I'm only a sender, I didn't help in development.

> 
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> ...
> 
>> +/* PFCP according to 3GPP TS 29.244
>> + *
>> + * Copyright (C) 2022, Intel Corporation.
> 
>> + * (C) 2022 by Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Is it approved by our Legal? First time I see such (c) together with Intel's
> and correct authorship.

Right, I'll leave only first (c) line.

>> + * Author: Wojciech Drewek <wojciech.drewek@intel.com>
>> + */
> 
> ...
> 
>> +struct pfcp_dev {
>> +	struct list_head	list;
> 
> This is defined in types.h which is missing.

Will add.

> 
>> +	struct socket		*sock;
>> +	struct net_device	*dev;
>> +	struct net		*net;
>> +};
> 
> ...
> 
>> +	dev->needs_free_netdev	= true;
> 
> Single space is enough.

Will fix.

> 
> ...
> 
>> +static int pfcp_newlink(struct net *net, struct net_device *dev,
>> +			struct nlattr *tb[], struct nlattr *data[],
>> +			struct netlink_ext_ack *extack)
>> +{
>> +	struct pfcp_dev *pfcp = netdev_priv(dev);
>> +	struct pfcp_net *pn;
>> +	int err;
>> +
>> +	pfcp->net = net;
>> +
>> +	err = pfcp_add_sock(pfcp);
>> +	if (err) {
>> +		netdev_dbg(dev, "failed to add pfcp socket %d\n", err);
>> +		goto exit;
>> +	}
>> +
>> +	err = register_netdevice(dev);
>> +	if (err) {
>> +		netdev_dbg(dev, "failed to register pfcp netdev %d\n", err);
>> +		goto exit_reg_netdev;
>> +	}
>> +
>> +	pn = net_generic(dev_net(dev), pfcp_net_id);
>> +	list_add_rcu(&pfcp->list, &pn->pfcp_dev_list);
>> +
>> +	netdev_dbg(dev, "registered new PFCP interface\n");
>> +
>> +	return 0;
>> +
>> +exit_reg_netdev:
> 
> The label naming should tell what _will_ happen if goto $LABEL.
> Something like
> 
> exit_del_pfcp_sock:

Another convention I've seen is `err_what_failed`. But yeah,
exit_reg_netdev doesn't match either convention, will change to your
suggestion.

> 
> Ditto for all labels in your code.
> 
>> +	pfcp_del_sock(pfcp);
>> +exit:
> 
> Shouldn't here be
> 
> 	->net = NULL;

Good catch, will add.

> 
> ?
> 
>> +	return err;
>> +}
> 
> ...
> 
>> +#ifndef _PFCP_H_
>> +#define _PFCP_H_
> 
> Missing headers:
> For net_device internals, bool type, and strcpm() call.

Will add.

> 
>> +#define PFCP_PORT 8805
>> +
>> +static inline bool netif_is_pfcp(const struct net_device *dev)
>> +{
>> +	return dev->rtnl_link_ops &&
>> +	       !strcmp(dev->rtnl_link_ops->kind, "pfcp");
>> +}
>> +
>> +#endif
> 

Thank you for review!
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
