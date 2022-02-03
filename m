Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6574A8CCD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 20:57:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E337F82AB9;
	Thu,  3 Feb 2022 19:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BIkNCA4AaO46; Thu,  3 Feb 2022 19:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F7E58299E;
	Thu,  3 Feb 2022 19:56:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B92141BF32C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A384141761
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrdQmPduRprh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 19:56:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E166416BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 19:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643918211; x=1675454211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p1eoeeVPg5stBUU+GeF77SDc2UTfoRaQkz83niuvvBQ=;
 b=To9V1FlmUo40E2R5oxELklxkTa/nXZYFi9GE8/yxSXc1Sec95DHzBPtH
 du1rMHKzrEoYKuNmDJHqN1T04F0ohOU72bTlucIIgG+sHlWHQtlfQ6lp4
 VyVQ/4wFnHjSr4QIOKw7xP4n55sRp256aLk0j8s5h/StN4tHGUyrjruWO
 824rMjlF75hbhk7xRYxHdU04Q5Avjr9XMkpOF2xypIH8S5wrUWX0aFCa7
 NntYXW2OQSfe2Ha5WT2yu5aYUMo6dUQTQxhghZDwFttgveOGTm2xsaoPw
 uaS5uvgEyuShptzLQCHPRJfjsBdTfjWOnIXEEhZZCK+MuXfngOLRKgnY7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248454276"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248454276"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 11:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="620620536"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Feb 2022 11:56:49 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 213JumNL004362; Thu, 3 Feb 2022 19:56:48 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alan Brady <alan.brady@intel.com>
Date: Thu,  3 Feb 2022 20:54:52 +0100
Message-Id: <20220203195452.74206-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB51860ACAFD75EE9B29D9856F8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-16-alan.brady@intel.com>
 <20220128181338.29738-1-alexandr.lobakin@intel.com>
 <CO1PR11MB51860ACAFD75EE9B29D9856F8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 15/19] iecm: implement
 ethtool callbacks
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phnai Burra <phani.r.burra@intel.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 03:13:41 +0100

> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 10:14 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> > lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> > Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> > <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 15/19] iecm: implement
> > ethtool callbacks
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:05 -0800
> > 
> > > This does everything needed to handle ethtool ops minus a few stubs
> > > for cloud filters and other advanced features which will be added in
> > > later in this series.
> > >
> > > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/Makefile      |    1 +
> > >  .../net/ethernet/intel/iecm/iecm_ethtool.c    | 1325
> > +++++++++++++++++
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    |   11 +-
> > >  drivers/net/ethernet/intel/include/iecm.h     |    1 +
> > >  4 files changed, 1337 insertions(+), 1 deletion(-)  create mode
> > > 100644 drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > >
> > > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> > > b/drivers/net/ethernet/intel/iecm/Makefile
> > > index 205d6f2b436a..fe2ed403d35c 100644
> > > --- a/drivers/net/ethernet/intel/iecm/Makefile
> > > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > > @@ -15,6 +15,7 @@ iecm-y := \
> > >  	iecm_virtchnl.o \
> > >  	iecm_txrx.o \
> > >  	iecm_singleq_txrx.o \
> > > +	iecm_ethtool.o \
> > >  	iecm_controlq.o \
> > >  	iecm_controlq_setup.o \
> > >  	iecm_main.o
> > > diff --git a/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > > b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > > new file mode 100644
> > > index 000000000000..32d905fb1bb6
> > > --- /dev/null
> > > +++ b/drivers/net/ethernet/intel/iecm/iecm_ethtool.c
> > > @@ -0,0 +1,1325 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/* Copyright (C) 2019 Intel Corporation */
> > > +
> > > +#include "iecm.h"
> > > +
> > > +/**
> > > + * iecm_get_rxnfc - command to get RX flow classification rules
> > > + * @netdev: network interface device structure
> > > + * @cmd: ethtool rxnfc command
> > > + * @rule_locs: pointer to store rule locations
> > > + *
> > > + * Returns Success if the command is supported.
> > > + */
> > > +static int iecm_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc
> > *cmd,
> > > +			  u32 __always_unused *rule_locs)
> > 
> > Kernel Kbuild system tell compilers to not complain on unused function
> > arguments.
> > It's pointless to add __always_unused here.
> > 
> 
> Sparse does complain about it (e.g. make ... C=2) and it's present in other (non-Intel) network drivers. I think I need a better argument to remove it.

No, it doesn't.
No, it's not.

Mellanox and ChelsIO almost never mark unused arguments, see e.g.
to [0] and [1] for reference.
And their drivers build cleanly with the latest sparse 0.6.4.

I've been using it for more than two years already and can't recall
a single episode when it would've complained about unused arguments.
If you talk about OOT, please clearly state this, to not confuse me
and other reviewers.

Marking unused arguments as __always_unused is at least a
deprecation and is not recommended for any new code. Kbuild (kernel
build system) explicitly sets -Wno-unused-parameter ([2]) to disable
this warning when building with -Wextra (W=1+).
This is due to that almost any driver has at least one (usually much
more) callback, and if we would've marked every unused argument with
this attribute, there would've been 1.5 times more lines of code.

Is this enough?

> 
> > > +{
> > > +	struct iecm_vport *vport = iecm_netdev_to_vport(netdev);

--- 8< ---

> > > +	if (adapter->virt_ver_maj < VIRTCHNL_VERSION_MAJOR_2) {
> > > +		err = adapter->dev_ops.vc_ops.add_queues(vport,
> > > +							 num_req_tx_q, 0,
> > > +							 num_req_rx_q, 0);
> > > +	} else {
> > > +		err = iecm_initiate_soft_reset(vport,
> > __IECM_SR_Q_CHANGE);
> > > +	}
> > 
> > One-liners, no need for braces.
> > 
> 
> The `if` exists across multiple lines so we would prefer to keep braces. As such the 'else' also gets them.

Please refer to my previous messages. There shouldn't be any braces,
unless they're required for code to work properly (except for
symmetrical if-else).

> 
> > > +
> > > +	if (err) {

--- 8< ---

> > > +
> > > +	is_reset_needed =
> > > +		!!(test_bit(__IECM_PRIV_FLAGS_HDR_SPLIT,
> > change_flags));
> > 
> > Shorter name would allow avoiding line break.
> > 
> 
> For IECM_PRIV_FLAGS_HDR_SPLIT? Sure we're open to suggestion if you have a name that communicates the same level of information effectively.

For `is_reset_needed`. HDR_SPLIT is perfect to me.

> 
> > > +
> > > +	/* Issue reset to cause things to take effect, as additional bits

--- 8< ---

> > > +	case ETH_SS_PRIV_FLAGS:
> > > +		iecm_get_priv_flag_strings(netdev, data);
> > > +		break;
> > > +	default:
> > > +		break;
> > 
> > Equivalent to not having a 'default' case.
> > 
> 
> Yes static tools will complain about uncaught switch without it.

Such as? Can I get some more details please?

Is this again for OOT or for the upstream kernel as well? I think I
can recall some initiatives in the past to enable -Wswitch-default,
but all of them were cancelled due to that it's pointless to have
`default` just to satisfy some checkers and, unlike e.g.
`fallthrough`, this has a very little benefit.
Now you can get it only on W=3 level which nobody takes seriosly.

> 
> > > +	}
> > > +}
> > > +
> > > +/**
> > > + * iecm_get_sset_count - Get length of string set

--- 8< ---

> > > +
> > > +		return IECM_PORT_STATS_LEN +
> > > +		       (IECM_TX_QUEUE_STATS_LEN * max_q) +
> > > +			(IECM_RX_QUEUE_STATS_LEN * max_q);
> > > +	} else if (sset == ETH_SS_PRIV_FLAGS) {
> > > +		return IECM_PRIV_FLAGS_STR_LEN;
> > > +	} else {
> > > +		return -EINVAL;
> > 
> > Check for this at first and save 1 level of indentation for ETH_SS_STATS.
> > 
> 
> So you would have it something like:
> 
> if (sset != ETH_SS_STATS && sset != ETH_SS_PRIV_FLAGS)
>    return -EINVAL
> 
> if (sset == ETH_SS_PRIV_FLAGS)
>    return IECM_PRIV_FLAGS_STR_LEN
> 
> /* if sset code */
> 
> This to me seems less readable because now the reader has to identify the bottom half of the function is actually for the SSET case whereas the way it is written currently, it's very explicit about what we're doing for what. I commend the intent to shave off indents where possible but many of these indent suggestions are teetering on excessive and sacrificing readability to save a tab.

You guessed a correct comment block here, if you feel that some code
is not super-intuitive, you can always add a short comment to give
a hint.

What more important for readability is to keep the code as flat as
possible, otherwise the main eye focus should be moved to the right,
plus 79-col limits starts wrapping more and more lines which doesn't
improve readability either.
It means that the longest code blocks should usually have a single
Tab indent.

I'm not speaking for this particular function right now -- I'm fine
with having all of it at 2 Tabs, it's just a big comment block which
makes it look like a big chunk of code. But at least make it a
switch-case then I guess?

> 
> > > +	}
> > > +}
> > > +
> > > +/**
> > > + * iecm_add_one_ethtool_stat - copy the stat into the supplied buffer

--- 8< ---

> > > +	do {
> > > +		start = u64_stats_fetch_begin_irq(&vport-
> > >port_stats.stats_sync);
> > > +		for (i = 0; i < size; i++) {
> > > +			iecm_add_one_ethtool_stat(&(*data)[i], vport,
> > > +
> > &iecm_gstrings_port_stats[i]);
> > > +		}
> > 
> > Redundant braces.
> > 
> 
> I believe this is multi line with wrapping.  Will not fix.

Explained previously.

> 
> > > +	} while (u64_stats_fetch_retry_irq(&vport->port_stats.stats_sync,
> > > +start));
> > > +
> > > +	*data += size;
> > > +}
> > > +
> > > +/**
> > > + * iecm_get_ethtool_stats - report device statistics

--- 8< ---

> > > +void iecm_set_ethtool_ops(struct net_device *netdev) {
> > > +	netdev->ethtool_ops = &iecm_ethtool_ops; }
> > 
> > Declaring @iecm_ethtool_ops as external and directly assigning it in
> > iecm_cfg_netdev() would result in smaller code size than this.
> > 
> 
> It seems trivial either way, but I'm having a hard time justifying this function, so will fix.

Some people believe ops structs should be not only const, but also
static. I don't really get why, but it's somewhat common across
different subsystems.

There's nothing bad in having ethtool_ops global, at the same time
global functions really occupy much more space than global
variables, so just a suggestion here to avoid that.

> 
> > > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c

--- 8< ---

> > > --
> > > 2.33.0

I'm sorry, I'll get back to your replies on patch #16 and further in about
14 hours.

> > 
> > Thanks,
> > Al

[0] https://elixir.bootlin.com/linux/v5.17-rc2/source/drivers/net/ethernet/chelsio/cxgb4/cxgb4_ethtool.c#L1736
[1] https://elixir.bootlin.com/linux/v5.17-rc2/source/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c#L10
[2] https://elixir.bootlin.com/linux/v5.17-rc2/source/scripts/Makefile.extrawarn#L25

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
