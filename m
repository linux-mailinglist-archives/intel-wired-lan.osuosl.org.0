Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DCAA33F8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 13:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D21566119D;
	Thu, 13 Feb 2025 12:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kpq3DQab21rQ; Thu, 13 Feb 2025 12:54:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9B9E611AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739451273;
	bh=v7acrumWnCLIQCVlU0AgIWrp2QB9ISOBnuH4BR/NhIk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vDUb25Z7zjVi1hmC5N8g4g4jLFe/S8vaw7tkQfA5xxZzrQVsVt+da7FK5/X29CqqC
	 Prc9xE1nw31jyUhsF+d/eISucuVb/trE+KU6DZU693t26++qH99z+O9TVGfyZNyzAH
	 Cx6Bz5V4NpRUwSWxdzqV0YDTOHVQTw7dBRC/kucqufHQbJH70DRkNj0mnLRP3aFPcv
	 baU53aQP7afqOPiTeO8W5iW4+Ak0vbJqZH8eh/Lan1P3ZC4Upoag55sMQRKntkk1tx
	 CJiJjrsYRkAd+U4WGP4oZTn36DfsHvvn+cNGLZWo7Z2KVavZGfRryJvY32AjKNMOOf
	 rK2D2yS0p4Y1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B9E611AD;
	Thu, 13 Feb 2025 12:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CBFD199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F7C540481
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSu90aeGu1Ia for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 12:54:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 712D840478
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 712D840478
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 712D840478
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 12:54:30 +0000 (UTC)
X-CSE-ConnectionGUID: 3JAzQTBMT9i07y8c6Ou0oQ==
X-CSE-MsgGUID: n8zMoGcoQ3qdm12rGv8/jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40266540"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40266540"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 04:54:30 -0800
X-CSE-ConnectionGUID: hz/02A95Toi+RKP8+COzSA==
X-CSE-MsgGUID: 3oCHI4xJSWuWUpbQsVvUsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150303991"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.42.34])
 ([10.247.42.34])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 04:54:22 -0800
Message-ID: <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
Date: Thu, 13 Feb 2025 20:54:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
 <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
 <87cyfmnjdh.fsf@kurt.kurt.home>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <87cyfmnjdh.fsf@kurt.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739451271; x=1770987271;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UN3Y9x428Mk8h/CXSju3Mtr+T4Cd2Rs3PZKgk+wNRiA=;
 b=d1T/yWN0G92sRqAYEX3xaQwqApgD/o8kSIcCuyLvRSriiL/c5oBO6YEV
 vqdDEjyC9xsS1df9nc7FCSp2iBJfDwjgyuZBWNL9d6SKfSp81k5mDYpk+
 ItkM+ja5oX2OjwC1prNg79tHMlgGk1SPf/j6NcyBPzcPopyCYAjS4pyRA
 S6XP6OwB5hkH/Fgu4RT/qBBIOky2AiFjS2Ywm4lQvCUQQfc3GLynHNtgz
 NWLiBjGmLVf1natKrFI5xbh73coLdHhGnvUffmfGWe5DYZaHJycPFIRmi
 AQcbTQJesmc6LEsCO/hPOW3CKIWwdj272ooq3/in0OmqcRA3EMomw9z0m
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d1T/yWN0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 13/2/2025 8:01 pm, Kurt Kanzenbach wrote:
> On Thu Feb 13 2025, Abdul Rahim, Faizal wrote:
>> On 13/2/2025 6:01 am, Vladimir Oltean wrote:
>>> On Mon, Feb 10, 2025 at 02:01:58AM -0500, Faizal Rahim wrote:
>>>> Introduces support for the FPE feature in the IGC driver.
>>>>
>>>> The patches aligns with the upstream FPE API:
>>>> https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.1156614-1-vladimir.oltean@nxp.com/
>>>> https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.73054-1-vladimir.oltean@nxp.com/
>>>>
>>>> It builds upon earlier work:
>>>> https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.1098888-1-vinicius.gomes@intel.com/
>>>>
>>>> The patch series adds the following functionalities to the IGC driver:
>>>> a) Configure FPE using `ethtool --set-mm`.
>>>> b) Display FPE settings via `ethtool --show-mm`.
>>>> c) View FPE statistics using `ethtool --include-statistics --show-mm'.
>>>> e) Enable preemptible/express queue with `fp`:
>>>>      tc qdisc add ... root taprio \
>>>>      fp E E P P
>>>
>>> Any reason why you are only enabling the preemptible traffic classes
>>> with taprio, and not with mqprio as well? I see there will have to be
>>> some work harmonizing igc's existing understanding of ring priorities
>>> with what Kurt did in 9f3297511dae ("igc: Add MQPRIO offload support"),
>>> and I was kind of expecting to see a proposal for that as part of this.
>>>
>>
>> I was planning to enable fpe + mqprio separately since it requires extra
>> effort to explore mqprio with preemptible rings, ring priorities, and
>> testing to ensure it works properly and there are no regressions.
> 
> Well, my idea was to move the current mqprio offload implementation from
> legacy TSN Tx mode to the normal TSN Tx mode. Then, taprio and mqprio
> can share the same code (with or without fpe). I have a draft patch
> ready for that. What do you think about it?
> 
> Thanks,
> Kurt

Hi Kurt,

I’m okay with including it in this series and testing fpe + mqprio, but I’m 
not sure if others might be concerned about adding different functional 
changes in this fpe series.

Hi Vladimir,
Any thoughts on this ?


