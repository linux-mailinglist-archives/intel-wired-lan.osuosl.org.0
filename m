Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF68B97CB49
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 17:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A48784032F;
	Thu, 19 Sep 2024 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ILERI6LWQoCc; Thu, 19 Sep 2024 15:02:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CFE54066F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726758172;
	bh=rR04I4vXAf8dSZ/n+gOw2z191cw8Cqwx3LD8QAhBSG0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pCA3r4X1K9T0O1yWxORJBWjMdt57zz0CvtUw+y7NH7cKNXV68iZdVFBpHlj5N+4so
	 T4TTipEeN3tSk8POObgj7sWA4s/S0FsZw0zvLLf2PVAdMb68LyQBTFgXtdibPOtJk8
	 92282tFKlvBkzIhqud8dTgz6j1yUWFJR9PuBtPTfNm7wi205S3lci10cxvu1ef5dw1
	 LtPuAMb0FCn/faPhnkuwx8TeMa++3ul6yxQajhHrdeJQayB+l1fRt39/ohfhbhh0zn
	 Bjave0aME1WcgN+P1b/NSRSGyuJvx+lwCXQw/s6ENqjHvDilyAzz/53UgJz5pRBAPV
	 6NchCAUr7rAcA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CFE54066F;
	Thu, 19 Sep 2024 15:02:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97A0B1BF279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 928C26070B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B7oN64EXf8_w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 15:02:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5DE6606FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5DE6606FF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5DE6606FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 15:02:47 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-459-IkRno2s2O1-g_DXNdrhErg-1; Thu, 19 Sep 2024 11:02:45 -0400
X-MC-Unique: IkRno2s2O1-g_DXNdrhErg-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-42cb33e6299so6078385e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 08:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726758164; x=1727362964;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rR04I4vXAf8dSZ/n+gOw2z191cw8Cqwx3LD8QAhBSG0=;
 b=Nk8wl3Lh2CAQkAA/7C4ggGHpMt88HazRs2ykJkl8IBmmnHRj6u71oBrAJnPjtZiucU
 9c2PKc1sAC05ARO17uGzdw+GC+ZW7S6a1d+gHVS+Px8daFJE4id5B+unrnxXHDIY4CaB
 jBdfN2M4/ZVt7Ga22/xrbBTQ4WRjRXCrjozJVeCpHoZ/oaDA0Sx9cuyRYQYUAhuhTAX/
 4ofgYYUaA9rbBbi89x1urvwJy88u+27PMPGZxHC7kNATFu9cX9zd03LdgLOHw/sxPV4g
 TRUclCK2pHWsUueGqnlg5otF0H28MwICULWfGzwuOU8JELrDM5qcLALPhuoQm+jLnQEs
 ysYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVnOx70AISGmGOaqDAaNXj3MJGZcBVYy8tVB3CTfXfQe41/+/I8srps03zPipI9Qt/s4Lq2a/lp2/yBIPAqP9c=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyg2WP/1Tu4CUUF23TM9veqTk4kUoZY9J2cvqv+NN5PpaBKhQOX
 OROgWvtky6fgOzoWDGJy60HEn5n5m5tqEfSR7kha/ZX/x+1iGUj2Z5zcWNzAvyDaCDr2Sb5mXrb
 k9XHpsQqanbyd+rcugKsAocsm2AuraQ5k3Ltvej6vV/QG/vU1OZ7po32OZdVU8socfKg=
X-Received: by 2002:a05:600c:6c8d:b0:42c:b7e2:3bc3 with SMTP id
 5b1f17b1804b1-42cdb54d638mr176609655e9.19.1726758164079; 
 Thu, 19 Sep 2024 08:02:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFF3E3QwCR7nOyeWC6gf3m1WCJqB1LKUGzO3MSQD3S5cwbAHn26CviuB1RjbuOPlAOpI0RQXA==
X-Received: by 2002:a05:600c:6c8d:b0:42c:b7e2:3bc3 with SMTP id
 5b1f17b1804b1-42cdb54d638mr176608885e9.19.1726758163363; 
 Thu, 19 Sep 2024 08:02:43 -0700 (PDT)
Received: from [192.168.88.100] (146-241-67-136.dyn.eolo.it. [146.241.67.136])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42e7540e4f9sm23997595e9.1.2024.09.19.08.02.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2024 08:02:42 -0700 (PDT)
Message-ID: <79484b47-3eb7-439e-b95e-6844233c8b8a@redhat.com>
Date: Thu, 19 Sep 2024 17:02:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stanislav Fomichev <stfomichev@gmail.com>
References: <cover.1725919039.git.pabeni@redhat.com>
 <5f17d61004db141808b15d50485d0ccb69cbfa12.1725919039.git.pabeni@redhat.com>
 <ZuC9H5uABXA0-SYo@mini-arch>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <ZuC9H5uABXA0-SYo@mini-arch>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1726758167;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rR04I4vXAf8dSZ/n+gOw2z191cw8Cqwx3LD8QAhBSG0=;
 b=ii5bPKcy56sX3F3aPiTgQdSK8iplu6bkiNyEOGKnwL/oS19vHuAWnuF7H1bImsRDJ9x6Vw
 +CdnJEO7znWtfylE0gLNo3mg2qj3zmddVS4t9ntD/vA17qaB2PIyUMVUh+DdoWQ4GT/5i+
 Oq1VMubtVxr1VVVQxq69eXbc4T8ibf0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ii5bPKcy
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

On 9/10/24 23:41, Stanislav Fomichev wrote:
> On 09/10, Paolo Abeni wrote:
>> Leverage a basic/dummy netdevsim implementation to do functional
>> coverage for NL interface.
>>
>> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>> ---
>> v5 -> v6:
>>    - additional test-cases for delegation and queue reconf
>>
>> v4 -> v5:
>>    - updated to new driver API
>>    - more consistent indentation
>>
>> rfc v1 -> v2:
>>    - added more test-cases WRT nesting and grouping
>> ---
>>   drivers/net/Kconfig                           |   1 +
>>   drivers/net/netdevsim/ethtool.c               |   2 +
>>   drivers/net/netdevsim/netdev.c                |  39 ++
>>   tools/testing/selftests/drivers/net/Makefile  |   1 +
>>   tools/testing/selftests/drivers/net/shaper.py | 457 ++++++++++++++++++
>>   .../testing/selftests/net/lib/py/__init__.py  |   1 +
>>   tools/testing/selftests/net/lib/py/ynl.py     |   5 +
>>   7 files changed, 506 insertions(+)
>>   create mode 100755 tools/testing/selftests/drivers/net/shaper.py
>>
>> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
>> index 9920b3a68ed1..1fd5acdc73c6 100644
>> --- a/drivers/net/Kconfig
>> +++ b/drivers/net/Kconfig
>> @@ -641,6 +641,7 @@ config NETDEVSIM
>>   	depends on PTP_1588_CLOCK_MOCK || PTP_1588_CLOCK_MOCK=n
>>   	select NET_DEVLINK
>>   	select PAGE_POOL
>> +	select NET_SHAPER
>>   	help
>>   	  This driver is a developer testing tool and software model that can
>>   	  be used to test various control path networking APIs, especially
>> diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
>> index 1436905bc106..5fe1eaef99b5 100644
>> --- a/drivers/net/netdevsim/ethtool.c
>> +++ b/drivers/net/netdevsim/ethtool.c
>> @@ -103,8 +103,10 @@ nsim_set_channels(struct net_device *dev, struct ethtool_channels *ch)
>>   	struct netdevsim *ns = netdev_priv(dev);
>>   	int err;
>>   
>> +	mutex_lock(&dev->lock);
>>   	err = netif_set_real_num_queues(dev, ch->combined_count,
>>   					ch->combined_count);
>> +	mutex_unlock(&dev->lock);
>>   	if (err)
>>   		return err;
>>   
>> diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
>> index 017a6102be0a..cad85bb0cf54 100644
>> --- a/drivers/net/netdevsim/netdev.c
>> +++ b/drivers/net/netdevsim/netdev.c
>> @@ -22,6 +22,7 @@
>>   #include <net/netdev_queues.h>
>>   #include <net/page_pool/helpers.h>
>>   #include <net/netlink.h>
>> +#include <net/net_shaper.h>
>>   #include <net/pkt_cls.h>
>>   #include <net/rtnetlink.h>
>>   #include <net/udp_tunnel.h>
>> @@ -475,6 +476,43 @@ static int nsim_stop(struct net_device *dev)
>>   	return 0;
>>   }
>>   
>> +static int nsim_shaper_set(struct net_shaper_binding *binding,
>> +			   const struct net_shaper *shaper,
>> +			   struct netlink_ext_ack *extack)
>> +{
>> +	return 0;
>> +}
>> +
>> +static int nsim_shaper_del(struct net_shaper_binding *binding,
>> +			   const struct net_shaper_handle *handle,
>> +			   struct netlink_ext_ack *extack)
>> +{
>> +	return 0;
>> +}
>> +
>> +static int nsim_shaper_group(struct net_shaper_binding *binding,
>> +			     int leaves_count,
>> +			     const struct net_shaper *leaves,
>> +			     const struct net_shaper *root,
>> +			     struct netlink_ext_ack *extack)
>> +{
>> +	return 0;
>> +}
>> +
>> +static void nsim_shaper_cap(struct net_shaper_binding *binding,
>> +			    enum net_shaper_scope scope,
>> +			    unsigned long *flags)
>> +{
>> +	*flags = ULONG_MAX;
>> +}
>> +
>> +static const struct net_shaper_ops nsim_shaper_ops = {
>> +	.set			= nsim_shaper_set,
>> +	.delete			= nsim_shaper_del,
>> +	.group			= nsim_shaper_group,
>> +	.capabilities		= nsim_shaper_cap,
>> +};
>> +
>>   static const struct net_device_ops nsim_netdev_ops = {
>>   	.ndo_start_xmit		= nsim_start_xmit,
>>   	.ndo_set_rx_mode	= nsim_set_rx_mode,
>> @@ -496,6 +534,7 @@ static const struct net_device_ops nsim_netdev_ops = {
>>   	.ndo_bpf		= nsim_bpf,
>>   	.ndo_open		= nsim_open,
>>   	.ndo_stop		= nsim_stop,
>> +	.net_shaper_ops		= &nsim_shaper_ops,
>>   };
>>   
>>   static const struct net_device_ops nsim_vf_netdev_ops = {
>> diff --git a/tools/testing/selftests/drivers/net/Makefile b/tools/testing/selftests/drivers/net/Makefile
>> index 39fb97a8c1df..25aec5c081df 100644
>> --- a/tools/testing/selftests/drivers/net/Makefile
>> +++ b/tools/testing/selftests/drivers/net/Makefile
>> @@ -9,6 +9,7 @@ TEST_PROGS := \
>>   	ping.py \
>>   	queues.py \
>>   	stats.py \
>> +	shaper.py
>>   # end of TEST_PROGS
>>   
>>   include ../../lib.mk
>> diff --git a/tools/testing/selftests/drivers/net/shaper.py b/tools/testing/selftests/drivers/net/shaper.py
>> new file mode 100755
>> index 000000000000..3504d51985bc
>> --- /dev/null
>> +++ b/tools/testing/selftests/drivers/net/shaper.py
>> @@ -0,0 +1,457 @@
>> +#!/usr/bin/env python3
>> +# SPDX-License-Identifier: GPL-2.0
>> +
>> +from lib.py import ksft_run, ksft_exit, ksft_eq, ksft_true, KsftSkipEx
>> +from lib.py import EthtoolFamily, NetshaperFamily
>> +from lib.py import NetDrvEnv
>> +from lib.py import NlError
>> +from lib.py import cmd
>> +
>> +def get_shapers(cfg, nl_shaper) -> None:
>> +    try:
>> +        shapers = nl_shaper.get({'ifindex': cfg.ifindex}, dump=True)
>> +    except NlError as e:
>> +        if e.error == 95:
>> +            raise KsftSkipEx("shapers not supported by the device")
>> +        raise
>> +
>> +    # Default configuration: no shapers configured.
>> +    ksft_eq(len(shapers), 0)
>> +
>> +def get_caps(cfg, nl_shaper) -> None:
>> +    try:
>> +        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex}, dump=True)
>> +    except NlError as e:
>> +        if e.error == 95:
>> +            raise KsftSkipEx("shapers not supported by the device")
>> +        raise
>> +
>> +    # Each device implementing shaper support must support some
>> +    # features in at least a scope.
>> +    ksft_true(len(caps)> 0)
>> +
>> +def set_qshapers(cfg, nl_shaper) -> None:
>> +    try:
>> +        caps = nl_shaper.cap_get({'ifindex': cfg.ifindex,
>> +                                 'scope':'queue'})
>> +    except NlError as e:
>> +        if e.error == 95:
>> +            raise KsftSkipEx("shapers not supported by the device")
>> +        raise
>> +    if not 'support-bw-max' in caps or not 'support-metric-bps' in caps:
>> +        raise KsftSkipEx("device does not support queue scope shapers with bw_max and metric bps")
>> +
>> +    cfg.queues = True;
>> +    netnl = EthtoolFamily()
>> +    channels = netnl.channels_get({'header': {'dev-index': cfg.ifindex}})
>> +    if channels['combined-count'] == 0:
>> +        cfg.rx_type = 'rx'
>> +        cfg.nr_queues = channels['rx-count']
>> +    else:
>> +        cfg.rx_type = 'combined'
>> +        cfg.nr_queues = channels['combined-count']
>> +    if cfg.nr_queues < 3:
>> +        raise KsftSkipEx("device does not support enough queues min 3 found {cfg.nr_queues}")
>> +
>> +    nl_shaper.set({'ifindex': cfg.ifindex,
>> +                   'handle': {'scope': 'queue', 'id': 1},
>> +                   'metric': 'bps',
>> +                   'bw-max': 10000})
>> +    nl_shaper.set({'ifindex': cfg.ifindex,
>> +                   'handle': {'scope': 'queue', 'id': 2},
>> +                   'metric': 'bps',
>> +                   'bw-max': 20000})
>> +
>> +    # Querying a specific shaper not yet configured must fail.
>> +    raised = False
>> +    try:
>> +        shaper_q0 = nl_shaper.get({'ifindex': cfg.ifindex,
>> +                                   'handle': {'scope': 'queue', 'id': 0}})
>> +    except (NlError):
>> +        raised = True
>> +    ksft_eq(raised, True)
>> +
>> +    shaper_q1 = nl_shaper.get({'ifindex': cfg.ifindex,
>> +                              'handle': {'scope': 'queue', 'id': 1}})
> 
> [..]
> 
>> +    ksft_eq(shaper_q1, {'ifindex': cfg.ifindex,
>> +                        'parent': {'scope': 'netdev'},
>> +                        'handle': {'scope': 'queue', 'id': 1},
>> +                        'metric': 'bps',
>> +                        'bw-max': 10000})
>> +
> 
> Before comparison, you probably need to drop some fields that are not
> expected?
> 
> # # Check failed {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 10000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704} != {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-max': 10000}
> # # Check| At /home/virtme/testing-18/tools/testing/selftests/drivers/net/./shaper.py, line 83, in set_qshapers:
> # # Check|     ksft_eq(shapers, [{'ifindex': cfg.ifindex,
> # # Check failed [{'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 10000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704}, {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 2}, 'metric': 'bps', 'bw-min': 517778718638633216, 'bw-max': 20000, 'burst': 18446683600580769792, 'priority': 60858368, 'weight': 4294936704}] != [{'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 1}, 'metric': 'bps', 'bw-max': 10000}, {'ifindex': 8, 'parent': {'scope': 'netdev'}, 'handle': {'scope': 'queue', 'id': 2}, 'metric': 'bps', 'bw-max': 20000}]
> 
> https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/766702/4-shaper-py/stdout
> 
> Debug builds are also reporting a UBSAN error:
> 
> https://netdev-3.bots.linux.dev/vmksft-net-drv-dbg/results/766702/4-shaper-py/stderr

Thanks for the feedback, and sorry for the late reply, I was traveling.

It looks like the root cause is the same, a couple of stack allocated 
structs are not zeroed before usage.

For the record I could not reproduce the issue locally, because I 
probably miss some debug kconf.

I'll address the issue in the next iteration.

Thanks!

Paolo

