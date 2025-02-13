Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDA1A337BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 07:13:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64E4382B81;
	Thu, 13 Feb 2025 06:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FoujIQRqzaF7; Thu, 13 Feb 2025 06:13:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E5B982B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739427181;
	bh=0oAWyQpxOetBs4E6OmdRYR94Rvs0dkU7aab6agKV5H4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RJ9RO1pYuZiEgYyu0Ye/rueNiKpknj1d7iMv4n5WPTTp1qVrEWynQBRUp9fDdl/4u
	 sx795qgfj6Q/2+VewQQZrzJZBWt0rTGZiUZ4S9TNinbj/xjUyzH009sNLKAFems0Qd
	 D77iJu/WKBJ1BogLh0sjQ/MvMCcw3RPWdHBX1suGw8vCyqnsqfE6GajgpNxo0scz16
	 XFZ688ZgnayyrSZ/E7eK5x1p6Z5uSHGOtBKnIwcpAcoUblGt9DLM7z9hltFcFFbxy+
	 V0p04aCPzPDK5IQFlo5tHv045YgeHfIURKLqc0B8xVlgm/JiLKjerXsJ0AUIrvjcZW
	 EgkZv3a+8awMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E5B982B53;
	Thu, 13 Feb 2025 06:13:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A0CB21A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:12:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7114A82B49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:12:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3eUJ7XCghdpf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 06:12:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A15282B3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A15282B3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A15282B3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:12:57 +0000 (UTC)
X-CSE-ConnectionGUID: q4NQ0kvpQgqpXT8f7+MyQA==
X-CSE-MsgGUID: PUosgbMXRp6/dOw2Ji0pHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="44046228"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="44046228"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:12:57 -0800
X-CSE-ConnectionGUID: bkfrU6y2QB2L4ycTkHh9VA==
X-CSE-MsgGUID: VzfZiVD2SRO52yQ6ry9WDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117156622"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.42.34])
 ([10.247.42.34])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:12:50 -0800
Message-ID: <b19357dc-590d-458c-9646-ee5993916044@linux.intel.com>
Date: Thu, 13 Feb 2025 14:12:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
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
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250212220121.ici3qll66pfoov62@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739427178; x=1770963178;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GEJZwnWqsIMq3HKET1mdxf8SV5zMREPN381jd4cLlhM=;
 b=Y3B6dGVaf4XgFtsnu/SpHcDfNJF19sAkVqkorop83pyJdV0+xMg2Tu1E
 obdbhTVAHJtorV2VsusW2Jfblde7oZpQamVkmiEEnQu5sW5PfjmepNVVG
 mhgQZ9+EC89hQemYNtLl8H2/hjv5I2Z4zdu6rNzYlT3Ag3JIMspKPlO8I
 sZLgaIYBpSwGWdHMJdzmponi27jrRGLrMdet5eAV+w4SSoQnhk0RYsB81
 N1tSPmrdF1vsHlllWh3uL/JoWufAErP0AP33N/WCTrme5f4RX9yY9T2Ll
 F/yvo+s1GT779sHSZ2y1t/fq0wzL9UW+EFN0TLHfIuqT9E0TvSySAd5B9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y3B6dGVa
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



On 13/2/2025 6:01 am, Vladimir Oltean wrote:
> On Mon, Feb 10, 2025 at 02:01:58AM -0500, Faizal Rahim wrote:
>> Introduces support for the FPE feature in the IGC driver.
>>
>> The patches aligns with the upstream FPE API:
>> https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.1156614-1-vladimir.oltean@nxp.com/
>> https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.73054-1-vladimir.oltean@nxp.com/
>>
>> It builds upon earlier work:
>> https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.1098888-1-vinicius.gomes@intel.com/
>>
>> The patch series adds the following functionalities to the IGC driver:
>> a) Configure FPE using `ethtool --set-mm`.
>> b) Display FPE settings via `ethtool --show-mm`.
>> c) View FPE statistics using `ethtool --include-statistics --show-mm'.
>> e) Enable preemptible/express queue with `fp`:
>>     tc qdisc add ... root taprio \
>>     fp E E P P
> 
> Any reason why you are only enabling the preemptible traffic classes
> with taprio, and not with mqprio as well? I see there will have to be
> some work harmonizing igc's existing understanding of ring priorities
> with what Kurt did in 9f3297511dae ("igc: Add MQPRIO offload support"),
> and I was kind of expecting to see a proposal for that as part of this.
> 

I was planning to enable fpe + mqprio separately since it requires extra 
effort to explore mqprio with preemptible rings, ring priorities, and 
testing to ensure it works properly and there are no regressions.

I’m really hoping that fpe + mqprio doesn’t have to be enabled together in 
this series to keep things simple. It could be added later—adding it now 
would introduce additional complexity and delay this series further, which 
is focused on enabling basic, working fpe on i226.

Would that be okay with you?

