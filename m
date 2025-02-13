Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAC5A340D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 14:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E96F161749;
	Thu, 13 Feb 2025 13:54:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u5XlakSqPDsK; Thu, 13 Feb 2025 13:54:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E710961766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739454857;
	bh=WnD9TeNwfT+U3ultRf7LUdWkp1sv+OxtUbvuDPJjDY8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ifE0Et38DCDWfNm1dApuTz8Q8W0f93K/LBz6ERuxcptYfoMy3kzTTK+5y6oRi7bNi
	 /8bGbhWcsEz6SvzaivI+eXtY+HQ26sbm0lFiZrdj030S2V1JwTcQ0GJMP7AgRf+6SI
	 0fefrAqnDk0Rob7jVvx9yPgzZ6A6ahrbE3A5GeFcsAgjJUulM4r6SCWuOyFIvhEaMs
	 nOJ4KWKP/WXngbukYjzWDImzxIagGU0Z0Q8LpOI+GEIwqUQX+jhDbenxycT4bGWkun
	 ku1QbTQxgAcZdIqg/Dci3N9iUCTnJQo+5FcXkyth24fe5B81Sgxa9Jpt6LQxV5uYN7
	 l3PpJw0HteD1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E710961766;
	Thu, 13 Feb 2025 13:54:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E91312D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 13:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EBEB6156F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 13:54:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRu_lrUggrME for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 13:54:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AAD961743
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AAD961743
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AAD961743
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 13:54:13 +0000 (UTC)
X-CSE-ConnectionGUID: 3GOxbTq5RJCfeYhfV9pLJg==
X-CSE-MsgGUID: d3uEsv0fT8qjsQUCIL4fhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40019844"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40019844"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 05:54:12 -0800
X-CSE-ConnectionGUID: Va5fv8RuSjiYMn+k3238nA==
X-CSE-MsgGUID: 1CjFB4TaT2qSpWMyGvwtMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118080787"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.42.34])
 ([10.247.42.34])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 05:54:04 -0800
Message-ID: <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
Date: Thu, 13 Feb 2025 21:54:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250213130003.nxt2ev47a6ppqzrq@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739454853; x=1770990853;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=g5HGHBuqAjMQOceJtIfxFmXU57w01hrdcPk8EKvjSzU=;
 b=dsR7wsI/gJFB++j7xyA3eg2TFuAPg61NMoHq3uUMi5HremhdxCfkVzDb
 mq1BOJ0GdlwVPmUYFnpJe9cFkeBuC+0LHZWKLcNzyI25YZk9g9/3BYa9K
 dSr8V3DywSt1Jy9DLoi7hWwTpDSnXzL4TA6PjUeVuuwwCX7znMWnTON+4
 4b9V+7NDpfJCQlc95ztHi07c+UDbU3no1oisQWfIOXAl806JhNlmmsdHp
 QSDJqTP3uJ29RxtU5UDNQEahA9hZKl8mMd5kS+9aDR2p76rqslsjwK36g
 mF5c2liwiGvN1x3rQ0l5bsZE7R5Jx+YOU11mdBciIlnDGlq9OxdXiYi3b
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dsR7wsI/
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



On 13/2/2025 9:00 pm, Vladimir Oltean wrote:
> On Thu, Feb 13, 2025 at 08:54:18PM +0800, Abdul Rahim, Faizal wrote:
>>> Well, my idea was to move the current mqprio offload implementation from
>>> legacy TSN Tx mode to the normal TSN Tx mode. Then, taprio and mqprio
>>> can share the same code (with or without fpe). I have a draft patch
>>> ready for that. What do you think about it?
>>
>> Hi Kurt,
>>
>> I’m okay with including it in this series and testing fpe + mqprio, but I’m
>> not sure if others might be concerned about adding different functional
>> changes in this fpe series.
>>
>> Hi Vladimir,
>> Any thoughts on this ?
> 
> Well, what do you think of my split proposal from here, essentially
> drawing the line for the first patch set at just ethtool mm?
> https://lore.kernel.org/netdev/20250213110653.iqy5magn27jyfnwh@skbuf/
> 

Honestly, after reconsidering, I’d prefer to keep the current series as is 
(without Kurt’s patch), assuming you’re okay with enabling mqprio + fpe 
later rather than at the same time as taprio + fpe. There likely won’t be 
any additional work needed for mqprio + fpe after Kurt’s patch is accepted, 
since it will mostly reuse the taprio code flow.

If I were to split it, the structure would look something like this:
First part of fpe series:
igc: Add support to get frame preemption statistics via ethtool
igc: Add support to get MAC Merge data via ethtool
igc: Add support to set tx-min-frag-size
igc: Add support for frame preemption verification
igc: Set the RX packet buffer size for TSN mode
igc: Optimize the TX packet buffer utilization
igc: Rename xdp_get_tx_ring() for non-XDP usage
net: ethtool: mm: Extract stmmac verification logic into a common library

Second part of fpe:
igc: Add support for preemptible traffic class in taprio

I don’t think Kurt’s patch should be included in my second part of fpe, as 
it’s not logically related. Another approach would be to wait for Kurt’s 
patch to be accepted first, then submit the second part and verify both 
taprio + mqprio. However, that would delay i226 from having a basic fpe 
feature working as a whole, which I'd really like to avoid.

