Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E3097567C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 17:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B612C81316;
	Wed, 11 Sep 2024 15:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPDV0qmWnTF9; Wed, 11 Sep 2024 15:10:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E19E8132A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726067438;
	bh=Aw+6lFFj6ydEjI4u0rC5LELrB7W3bbCNrFSSnF9eFsE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ULApoJ38wk3IFluZUjHnf+gPWiTJNYfCNHK6KDuLQr215JHvJBYyk86gFX7tFQwwp
	 LwP+YOK9jhhjGBa+tAe5VIoLR122+T+n04HwRLj9/U4r6fx4tXuXpo9xpmV96VsJW6
	 gvopK+oRHgVT1FD+DwcaGKPIHr8RFWuR31xK/e7f6jTjcvJda6IF0qdXP3zta1Afgf
	 G+k6klrBrE+XMa5kzFJ7FE1jcF+vwgJGH3yktYnPqHxXyqx+bMzxnizvD/8Z5CSYWA
	 AAcPRRkEE50I1MVWYaFbDMO2eKy1OHAQOaT+/YoS7lMZyeEMtSUS7WbN+jvsYEmULr
	 3duqYk4fT1iVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E19E8132A;
	Wed, 11 Sep 2024 15:10:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D934F1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C59F5608C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJ0eWXhZnhn3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 21:41:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52d; helo=mail-pg1-x52d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B0E4608BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B0E4608BD
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B0E4608BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:41:53 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id
 41be03b00d2f7-7d4fbe62bf5so3890288a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 14:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726004512; x=1726609312;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Aw+6lFFj6ydEjI4u0rC5LELrB7W3bbCNrFSSnF9eFsE=;
 b=CfqlHhxIud2PUCu9PELqpFs3XBbqPE+bZS+sopHw43V3Y9oDiUo7900wr/K+GQ6/PB
 q66TczaVs+I1twJ8dUtE36zG8JfwDlKvj0hGflC9YZ3xkbNe6qH4JCuglaxVg6vexuTQ
 CniEboJ52uI0HKs24RjhOc/38sLSYgr8OYg12+5sHLK57qoBv5uFVLmIIH1+5ETDQmkI
 7+94Bc4QmhZg79sBsR1uaflEoJLHKMqTfOEuiBFwZLmAFb3gEU1jcTjjtygnwFFRSyFI
 EDYXpGNZRxzATJaELoVv3HlzzR+V+gNT3uE8BF7CHkCP4uVQvK1Wr6G3HbgiCgS0vrP9
 EipA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV8qJS4tRbv2s9dQHsZYqVCKJf+tNa4qqPncKa/L+OU/b5p2xkxv2u3vhR1uMB+BDUS003gh4fD1CnVDA5HJRE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw5Pl1grwwfWHOuqY+nO6mRdnBes2jUXy63kGd1A0B6MDfd0wZs
 bACTgL0clYo2M6MelbCyEgYUg1lg8sjjfEuKbrnaRsqcfdT1tf8=
X-Google-Smtp-Source: AGHT+IEvOgVrw/812SeiaWST2kBcmXnMbFJk+4080I5B6q/Gwjl34UD296M23Ho2l2tkjto19ArQ+Q==
X-Received: by 2002:a17:90b:4d08:b0:2d3:caeb:a9ad with SMTP id
 98e67ed59e1d1-2dad50ed05fmr14690679a91.31.1726004512294; 
 Tue, 10 Sep 2024 14:41:52 -0700 (PDT)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2db0419ae89sm6989195a91.13.2024.09.10.14.41.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2024 14:41:51 -0700 (PDT)
Date: Tue, 10 Sep 2024 14:41:51 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZuC9H5uABXA0-SYo@mini-arch>
References: <cover.1725919039.git.pabeni@redhat.com>
 <5f17d61004db141808b15d50485d0ccb69cbfa12.1725919039.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5f17d61004db141808b15d50485d0ccb69cbfa12.1725919039.git.pabeni@redhat.com>
X-Mailman-Approved-At: Wed, 11 Sep 2024 15:10:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726004512; x=1726609312; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Aw+6lFFj6ydEjI4u0rC5LELrB7W3bbCNrFSSnF9eFsE=;
 b=Ms8RcQO4gM2ab1N+dkpiGGhKl6ZP4ENN4gwAIZFAigvaGeMk/tFAV3sq/nh/cD60uQ
 72pu+EGv8I+1wfnSLGbMXMjcIDLeGh2SqtViIvRVA88knCZX24W21u8Owt6/WUW+OSKa
 Z8F8PP1p5AtYDm3zugrrHw8Lc8uK32dF6JBEQoHwRsq4ru8qsCoEsXRrS+TLmAIU3Htb
 gONv0BEeR26mKlpXvoSxzukfAl/iW3dMOJUY29C9NajMXpNQmynkMDdFB2Rs+ACzw9o1
 T3xh2BbX5zmi6XCkGAU/tYfUWQ7ZPJSvvcWoPBqWN8lmWpHRUBhr/euQ8hzv5nSW7T1A
 cwaQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Ms8RcQO4
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 11/15] testing: net-drv:
 add basic shaper test
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/10, Paolo Abeni wrote:
> Leverage a basic/dummy netdevsim implementation to do functional
> coverage for NL interface.
> 
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
> v5 -> v6:
>   - additional test-cases for delegation and queue reconf
> 
> v4 -> v5:
>   - updated to new driver API
>   - more consistent indentation
> 
> rfc v1 -> v2:
>   - added more test-cases WRT nesting and grouping
> ---
>  drivers/net/Kconfig                           |   1 +
>  drivers/net/netdevsim/ethtool.c               |   2 +
>  drivers/net/netdevsim/netdev.c                |  39 ++
>  tools/testing/selftests/drivers/net/Makefile  |   1 +
>  tools/testing/selftests/drivers/net/shaper.py | 457 ++++++++++++++++++
>  .../testing/selftests/net/lib/py/__init__.py  |   1 +
>  tools/testing/selftests/net/lib/py/ynl.py     |   5 +
>  7 files changed, 506 insertions(+)
>  create mode 100755 tools/testing/selftests/drivers/net/shaper.py
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 9920b3a68ed1..1fd5acdc73c6 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -641,6 +641,7 @@ config NETDEVSIM
>  	depends on PTP_1588_CLOCK_MOCK || PTP_1588_CLOCK_MOCK=n
>  	select NET_DEVLINK
>  	select PAGE_POOL
> +	select NET_SHAPER
>  	help
>  	  This driver is a developer testing tool and software model that can
>  	  be used to test various control path networking APIs, especially
> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
> index 1436905bc106..5fe1eaef99b5 100644
> --- a/drivers/net/netdevsim/ethtool.c
> +++ b/drivers/net/netdevsim/ethtool.c
> @@ -103,8 +103,10 @@ nsim_set_channels(struct net_device *dev, struct ethtool_channels *ch)
>  	struct netdevsim *ns = netdev_priv(dev);
>  	int err;
>  
> +	mutex_lock(&dev->lock);
>  	err = netif_set_real_num_queues(dev, ch->combined_count,
>  					ch->combined_count);
> +	mutex_unlock(&dev->lock);
>  	if (err)
>  		return err;
>  
> diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
> index 017a6102be0a..cad85bb0cf54 100644
> --- a/drivers/net/netdevsim/netdev.c
> +++ b/drivers/net/netdevsim/netdev.c
> @@ -22,6 +22,7 @@
>  #include <net/netdev_queues.h>
>  #include <net/page_pool/helpers.h>
>  #include <net/netlink.h>
> +#include <net/net_shaper.h>
>  #include <net/pkt_cls.h>
>  #include <net/rtnetlink.h>
>  #include <net/udp_tunnel.h>
> @@ -475,6 +476,43 @@ static int nsim_stop(struct net_device *dev)
>  	return 0;
>  }
>  
> +static int nsim_shaper_set(struct net_shaper_binding *binding,
> +			   const struct net_shaper *shaper,
> +			   struct netlink_ext_ack *extack)
> +{
> +	return 0;
> +}
> +
> +static int nsim_shaper_del(struct net_shaper_binding *binding,
> +			   const struct net_shaper_handle *handle,
> +			   struct netlink_ext_ack *extack)
> +{
> +	return 0;
> +}
> +
> +static int nsim_shaper_group(struct net_shaper_binding *binding,
> +			     int leaves_count,
> +			     const struct net_shaper *leaves,
> +			     const struct net_shaper *root,
> +			     struct netlink_ext_ack *extack)
> +{
> +	return 0;
> +}
> +
> +static void nsim_shaper_cap(struct net_shaper_binding *binding,
> +			    enum net_shaper_scope scope,
> +			    unsigned long *flags)
> +{
> +	*flags = ULONG_MAX;
> +}
> +
> +static const struct net_shaper_ops nsim_shaper_ops = {
> +	.set			= nsim_shaper_set,
> +	.delete			= nsim_shaper_del,
> +	.group			= nsim_shaper_group,
> +	.capabilities		= nsim_shaper_cap,
> +};
> +
>  static const struct net_device_ops nsim_netdev_ops = {
>  	.ndo_start_xmit		= nsim_start_xmit,
>  	.ndo_set_rx_mode	= nsim_set_rx_mode,
> @@ -496,6 +534,7 @@ static const struct net_device_ops nsim_netdev_ops = {
>  	.ndo_bpf		= nsim_bpf,
>  	.ndo_open		= nsim_open,
>  	.ndo_stop		= nsim_stop,
> +	.net_shaper_ops		= &nsim_shaper_ops,
>  };
>  
>  static const struct net_device_ops nsim_vf_netdev_ops = {
> diff --git a/tools/testing/selftests/drivers/net/Makefile b/tools/testing/selftests/drivers/net/Makefile
> index 39fb97a8c1df..25aec5c081df 100644
> --- a/tools/testing/selftests/drivers/net/Makefile
> +++ b/tools/testing/selftests/drivers/net/Makefile
> @@ -9,6 +9,7 @@ TEST_PROGS := \
>  	ping.py \
>  	queues.py \
>  	stats.py \
> +	shaper.py
>  # end of TEST_PROGS
>  
>  include ../../lib.mk
> diff --git a/tools/testing/selftests/drivers/net/shaper.py b/tools/testing/selftests/drivers/net/shaper.py
> new file mode 100755
> index 000000000000..3504d51985bc
> --- /dev/null
> +++ b/tools/testing/selftests/drivers/net/shaper.py
> @@ -0,0 +1,457 @@
> +#!/usr/bin/env python3
> +# SPDX-License-Identifier: GPL-2.0
> +
> +from lib.py import ksft_run, ksft_exit, ksft_eq, ksft_true, KsftSkipEx
> +from lib.py import EthtoolFamily, NetshaperFamily
> +from lib.py import NetDrvEnv
> +from lib.py import NlError
> +from lib.py import cmd
> +
> +def get_shapers(cfg, nl_shaper) -> None:
> +    try:
> +        shapers = nl_shaper.get({'ifindex': cfg.ifindex}, dump=True)
> +    except NlError as e:
> +        if e.error == 95:
> +            raise KsftSkipEx("shapers not supported by the device")
> +        raise
> +
> +    # Default configuration: no shapers configured.
> +    ksft_eq(len(shapers), 0)
> +
> +def get_caps(cfg, nl_shaper) -> None:
> +    try:
> +        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex}, dump=True)
> +    except NlError as e:
> +        if e.error == 95:
> +            raise KsftSkipEx("shapers not supported by the device")
> +        raise
> +
> +    # Each device implementing shaper support must support some
> +    # features in at least a scope.
> +    ksft_true(len(caps)> 0)
> +
> +def set_qshapers(cfg, nl_shaper) -> None:
> +    try:
> +        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
> +                                 'scope':'queue'})
> +    except NlError as e:
> +        if e.error == 95:
> +            raise KsftSkipEx("shapers not supported by the device")
> +        raise
> +    if not 'support-bw-max' in caps or not 'support-metric-bps' in caps:
> +        raise KsftSkipEx("device does not support queue scope shapers with bw_max and metric bps")
> +
> +    cfg.queues = True;
> +    netnl = EthtoolFamily()
> +    channels = netnl.channels_get({'header': {'dev-index': cfg.ifindex}})
> +    if channels['combined-count'] == 0:
> +        cfg.rx_type = 'rx'
> +        cfg.nr_queues = channels['rx-count']
> +    else:
> +        cfg.rx_type = 'combined'
> +        cfg.nr_queues = channels['combined-count']
> +    if cfg.nr_queues < 3:
> +        raise KsftSkipEx("device does not support enough queues min 3 found {cfg.nr_queues}")
> +
> +    nl_shaper.set({'ifindex': cfg.ifindex,
> +                   'handle': {'scope': 'queue', 'id': 1},
> +                   'metric': 'bps',
> +                   'bw-max': 10000})
> +    nl_shaper.set({'ifindex': cfg.ifindex,
> +                   'handle': {'scope': 'queue', 'id': 2},
> +                   'metric': 'bps',
> +                   'bw-max': 20000})
> +
> +    # Querying a specific shaper not yet configured must fail.
> +    raised = False
> +    try:
> +        shaper_q0 = nl_shaper.get({'ifindex': cfg.ifindex,
> +                                   'handle': {'scope': 'queue', 'id': 0}})
> +    except (NlError):
> +        raised = True
> +    ksft_eq(raised, True)
> +
> +    shaper_q1 = nl_shaper.get({'ifindex': cfg.ifindex,
> +                              'handle': {'scope': 'queue', 'id': 1}})

[..]

> +    ksft_eq(shaper_q1, {'ifindex': cfg.ifindex,
> +                        'parent': {'scope': 'netdev'},
> +                        'handle': {'scope': 'queue', 'id': 1},
> +                        'metric': 'bps',
> +                        'bw-max': 10000})
> +

Before comparison, you probably need to drop some fields that are not
expected? 

# # Check failed {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 10000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704} != {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-max': 10000} 
# # Check| At /home/virtme/testing-18/tools/testing/selftests/drivers/net/./shaper.py, line 83, in set_qshapers:
# # Check|     ksft_eq(shapers, [{'ifindex': cfg.ifindex,
# # Check failed [{'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 10000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704}, {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 2}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 20000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704}] != [{'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-max': 10000}, {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 2}, 'metric': 'bps', 'bw-max': 20000}]

https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/766702/4-shaper-py/stdout

Debug builds are also reporting a UBSAN error:

https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/766702/4-shaper-py/stderr

---
pw-bot: cr
