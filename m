Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3922A355A9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 05:20:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3BBC83F34;
	Fri, 14 Feb 2025 04:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fE6YDSwmIEfy; Fri, 14 Feb 2025 04:20:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F5D883F35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739506847;
	bh=lmJtbpqxckhATASjD1d2w6bVsotMpvgKjxR9ut3OsBM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BWJvB6LqgNzjc/5UkeQDd4tNpA+naENyni3MTPG2wo/41FRV9m9+QDNRGSpASrYud
	 w71mwZUzRq59D6ri7zTr9kiKvhSyxHtyp0LAs2Fj75UUg3syNXqaLzgpq0hhoxtAlc
	 QcqbH+GizrXS1zZu8zSnvDz6wYV9qy+CTCxCTdvg/oK/UKwmFYc6dtXcynefp9M3RE
	 2rs9PwWh4dGeGGSntManhUSTuwJP1afnG0rxvXFx32pVAE5uw3qLmCAdj/u4uG414z
	 4wfmz8TRQypVYi1bsZZ6sdi5ZDhvO+trzkVdiWiIUcbnxkNQ1JuHAAsiqMO9v0EJ6m
	 newfWjVV5Z0pQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F5D883F35;
	Fri, 14 Feb 2025 04:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 487961E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 04:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 36E3640DAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 04:20:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lar34npvlDM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 04:20:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 083FC40DAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 083FC40DAC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 083FC40DAC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 04:20:43 +0000 (UTC)
X-CSE-ConnectionGUID: ocEgikkqRfWGes7osGwclw==
X-CSE-MsgGUID: uq8Kvq7XTbixha7egb1qQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40505965"
X-IronPort-AV: E=Sophos;i="6.13,284,1732608000"; d="scan'208";a="40505965"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 20:20:43 -0800
X-CSE-ConnectionGUID: VV+jgGj8RGadw8WZ3YmWXQ==
X-CSE-MsgGUID: ktMrD4xUQYq+G2zq3bq7DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,284,1732608000"; d="scan'208";a="144209439"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.123.6])
 ([10.247.123.6])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 20:20:33 -0800
Message-ID: <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
Date: Fri, 14 Feb 2025 12:20:31 +0800
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
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <87v7td3bi1.fsf@kurt.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739506844; x=1771042844;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=0N+NIkjKA48xzvqbJnB29lAB08YfjMQLZFPJzVlNIO4=;
 b=MVRUzszSODMo+CjeMJQztsIQEh5TdFOj/0xI2mu+GxKcABaz0zemx+T4
 jCfek2j7HVL2Ogzk9An7jBlZrG4ltamFKNJB/yJp78nHbupJrFDDjEjHi
 D1lbIgpzkTrzoXPyUFgeDnZoHO0oSigp3An8BdwGBRKn7UWLWzIb1+PVk
 fKxNPiRiedxvmCPjOTfbr4OTt9g7yjytPwN/886Q2DVOe/Mvcf12V6YXs
 IWefsO7rOf6dVAezYml37ATJvd4Oq2cmLRm6zIoSg8RMfw8Do7N4SlLIs
 zWV8DRL36hDb4gjEvHWBhTVL84Q3wAsEvXVnQ8kJdH418qLFDgbHC4hgt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MVRUzszS
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



On 14/2/2025 3:12 am, Kurt Kanzenbach wrote:
> On Thu Feb 13 2025, Vladimir Oltean wrote:
>> So, confusingly to me, it seems like one operating mode is fundamentally
>> different from the other, and something will have to change if both will
>> be made to behave the same. What will change? You say mqprio will behave
>> like taprio, but I think if anything, mqprio is the one which does the
>> right thing, in igc_tsn_tx_arb(), and taprio seems to use the default Tx
>> arbitration scheme?
> 
> Correct. taprio is using the default scheme. mqprio configures it to
> what ever the user provided (in igc_tsn_tx_arb()).
> 
>> I don't think I'm on the same page as you guys, because to me, it is
>> just odd that the P traffic classes would be the first ones with
>> mqprio, but the last ones with taprio.
> 
> I think we are on the same page here. At the end both have to behave the
> same. Either by using igc_tsn_tx_arb() for taprio too or only using the
> default scheme for both (and thereby keeping broken_mqprio). Whatever
> Faizal implements I'll match the behavior with mqprio.
> 

Hi Kurt & Vladimir,

After reading Vladimir's reply on tc, hw queue, and socket priority mapping 
for both taprio and mqprio, I agree they should follow the same priority 
scheme for consistency—both in code and command usage (i.e., taprio, 
mqprio, and fpe in both configurations). Since igc_tsn_tx_arb() ensures a 
standard mapping of tc, socket priority, and hardware queue priority, I'll 
enable taprio to use igc_tsn_tx_arb() in a separate patch submission.

I'll split the changes based on Vladimir's suggestion.

First part - ethtool-mm related:
igc: Add support to get frame preemption statistics via ethtool
igc: Add support to get MAC Merge data via ethtool
igc: Add support to set tx-min-frag-size
igc: Add support for frame preemption verification
igc: Set the RX packet buffer size for TSN mode
igc: Optimize TX packet buffer utilization
igc: Rename xdp_get_tx_ring() for non-XDP usage
net: ethtool: mm: Extract stmmac verification logic into a common library

Second part:
igc: Add support for preemptible traffic class in taprio and mqprio
igc: Use igc_tsn_tx_arb() for taprio queue priority scheme
igc: Kurt's patch on mqprio to use normal TSN Tx mode

Kurt can keep igc_tsn_tx_arb() for his mqprio patch, so preemptible tc 
should work the same for both taprio and mqprio.

I'm suggesting to include Kurt's patch in the second part since there's 
some dependency and potential code conflict, even though it mixes different 
functional changes in the same series.

Does this sound good to you?

