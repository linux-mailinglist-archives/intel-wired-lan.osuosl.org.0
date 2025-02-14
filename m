Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F3DA35A8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:43:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DCFA4132D;
	Fri, 14 Feb 2025 09:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mun6akA9auh0; Fri, 14 Feb 2025 09:43:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB83D4115B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739526216;
	bh=YkAOUtv2YEZdGJYB6NrZGnlKOR+POSND0NgA/1BEXAc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JDd+MtmisLwjSXh32N4nISVx2W1Ic0baeX6miIcHWlcF2cnLezxsPR9VhSy/wqdAu
	 1wL3UZ7vrbvSDDVaTeJd/fmpTFhig97gU+otc2loMgK+/Dea/HZwZ/qcQEGCDNWLLa
	 ZotD8qCwO0g2NKwAXiE6U93etNRRMO6wedCGaBrJ6MvkFkaZbA9LDXvCBsJkBzmnBy
	 xUS2HQKxy8tVGY7Ng/hzY7xxuT45l8ne9sFsKSdGKqAGu7GvUGXMYqevyz/d8+9OZ1
	 0uFzlvAOByC4qPRXi+l2T2B67QNvtSST/I36byNMN5WZBFoTOP0cSmhWRz8WUUegor
	 H9FtKq7lGwwtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB83D4115B;
	Fri, 14 Feb 2025 09:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AA855C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:43:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E84783696
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:43:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iPGnWRd3FsGp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:43:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B8848146D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B8848146D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B8848146D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:43:31 +0000 (UTC)
X-CSE-ConnectionGUID: E+5M3vceS2mcMrv59vQQ8Q==
X-CSE-MsgGUID: hmVYPvhqRvWKbiLTqggvDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="44197300"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="44197300"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:43:30 -0800
X-CSE-ConnectionGUID: ZO0UWXkJQOin2e28wbPaEw==
X-CSE-MsgGUID: Hg2vL6gvSzaFtD29bl+/3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118036852"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.89.75])
 ([10.247.89.75])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:43:22 -0800
Message-ID: <641ab972-e110-4af2-ad9b-6688cee56562@linux.intel.com>
Date: Fri, 14 Feb 2025 17:43:19 +0800
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
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
 <877c5undbg.fsf@kurt.kurt.home> <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
 <87v7td3bi1.fsf@kurt.kurt.home>
 <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
 <874j0wrjk2.fsf@kurt.kurt.home>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <874j0wrjk2.fsf@kurt.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739526212; x=1771062212;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zLq34zyZ+vn2x8EHLG71uh1H2EfQ4PWpqK69Hy66e7w=;
 b=ViFKXovgOXOFScFg8+GYrAxPhRy9KrENocku7RpenrL9BzfXvYfaAZRg
 jQBm7hnEPZCmZFwxjmlZhA1z7C884dKiyWJRzLl8bO3TkrMIBK4CjR3kQ
 iqurHJTYsCdnfougLXc2YPBCsTovqq8GIgRYMPsOzAkv0cquC2S4DIMU+
 oOMT3Z1Oe+9e+snzMOfYflKKKQ5C+P8mZeM5socKzbvrqA9r2vppzVmzq
 WVFF52dfBY+NX/AymnmuoDXRS5tYSoHjzijwYsnEPB/LzYD6/3AYtu8Ig
 DU1IYpzd/u+Tz0eUOkYtwsCAcpc0pPEI4dRofM6FLOeWYPi9UrF1cONln
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ViFKXovg
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



On 14/2/2025 4:56 pm, Kurt Kanzenbach wrote:
> On Fri Feb 14 2025, Abdul Rahim, Faizal wrote:
>> On 14/2/2025 3:12 am, Kurt Kanzenbach wrote:
>>> On Thu Feb 13 2025, Vladimir Oltean wrote:
>>>> So, confusingly to me, it seems like one operating mode is fundamentally
>>>> different from the other, and something will have to change if both will
>>>> be made to behave the same. What will change? You say mqprio will behave
>>>> like taprio, but I think if anything, mqprio is the one which does the
>>>> right thing, in igc_tsn_tx_arb(), and taprio seems to use the default Tx
>>>> arbitration scheme?
>>>
>>> Correct. taprio is using the default scheme. mqprio configures it to
>>> what ever the user provided (in igc_tsn_tx_arb()).
>>>
>>>> I don't think I'm on the same page as you guys, because to me, it is
>>>> just odd that the P traffic classes would be the first ones with
>>>> mqprio, but the last ones with taprio.
>>>
>>> I think we are on the same page here. At the end both have to behave the
>>> same. Either by using igc_tsn_tx_arb() for taprio too or only using the
>>> default scheme for both (and thereby keeping broken_mqprio). Whatever
>>> Faizal implements I'll match the behavior with mqprio.
>>>
>>
>> Hi Kurt & Vladimir,
>>
>> After reading Vladimir's reply on tc, hw queue, and socket priority mapping
>> for both taprio and mqprio, I agree they should follow the same priority
>> scheme for consistency—both in code and command usage (i.e., taprio,
>> mqprio, and fpe in both configurations). Since igc_tsn_tx_arb() ensures a
>> standard mapping of tc, socket priority, and hardware queue priority, I'll
>> enable taprio to use igc_tsn_tx_arb() in a separate patch submission.
> 
> There's one point to consider here: igc_tsn_tx_arb() changes the mapping
> between priorities and Tx queues. I have no idea how many people rely on
> the fact that queue 0 has always the highest priority. For example, it
> will change the Tx behavior for schedules which open multiple traffic
> classes at the same time. Users may notice.

Yeah, I was considering the impact on existing users too. I hadn’t given it 
much thought initially and figured they’d just need to adapt to the 
changes, but now that I think about it, properly communicating this would 
be tough. taprio on igc (i225, i226) has been around for a while, so a lot 
of users would be affected.

> OTOH changing mqprio to the broken_mqprio model is easy, because AFAIK
> there's only one customer using this.
> 

Hmmmm, now I’m leaning toward keeping taprio as is (hw queue 0 highest 
priority) and having mqprio follow the default priority scheme (aka 
broken_mqprio). Even though it’s not the norm, the impact doesn’t seem 
worth the gain. Open to hearing others' thoughts.

