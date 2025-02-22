Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76417A40417
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Feb 2025 01:26:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0801C6084E;
	Sat, 22 Feb 2025 00:26:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9kmNVRPvAFh; Sat, 22 Feb 2025 00:26:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90D0C607FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740183977;
	bh=wFGkta2yH79YT2RqKo4wHaIBm0v430uzCtbMdsMX9HM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fYPFZsOQ+Ww0lmmCRdaEWi97T4O8Aigh+ScDFas1NaI3gSMeSRMKg/lJ8g8908VAA
	 1RL61JV/1BhSK2R0sFNF6Ldx4x+9td0i4rbqwOgmKMi27kOaoxUJrkMJwOWf/zIr9P
	 LV+3vGahjyKBdAEYmg9EqVVrJlbNuEiEGfU/tBvziJQb/+OfjXudpoZJMRRha2hN1C
	 RK0GVujb6oaBKinDbS5haPkRNzYqKbnkUp3f/BiZVmMYUu28dRzfJ9Y9Ok298WZ72z
	 WxPJ2JTSaExupHsV7tk4uEReDHH2gBFvcMloYfSvR0GfzuOQmJNtZoVgMTmo6jTsuv
	 lCct4f1i4M2rA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90D0C607FC;
	Sat, 22 Feb 2025 00:26:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5D9FB6B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 00:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CC57408AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 00:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b8kU2vFXuXcg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Feb 2025 00:26:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A6067408A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6067408A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A6067408A2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Feb 2025 00:26:13 +0000 (UTC)
X-CSE-ConnectionGUID: fCg/Yy9/S4erwE9p41w5LA==
X-CSE-MsgGUID: KvXgHhiMRtmwhDT0YnzAIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="63488045"
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="63488045"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 16:26:13 -0800
X-CSE-ConnectionGUID: PHiHpXemQRq6zbcoQudtdA==
X-CSE-MsgGUID: +tqM9EucTUKBlk9KS9eT2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,306,1732608000"; d="scan'208";a="115474920"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.60.175])
 ([10.247.60.175])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 16:26:05 -0800
Message-ID: <fbcbfdc4-5f20-4dbc-9e46-e9c28fc399c8@linux.intel.com>
Date: Sat, 22 Feb 2025 08:26:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Furong Xu <0x1207@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
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
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
 <20250221174249.000000cc@gmail.com> <20250221095651.npjpkoy2y6nehusy@skbuf>
 <20250221182409.00006fd1@gmail.com> <20250221104333.6s7nvn2wwco3axr3@skbuf>
 <3fbe3955-48b8-449d-93ff-2699a7efcd8d@linux.intel.com>
 <20250221144402.6nuuosfjmo5tqgmj@skbuf>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250221144402.6nuuosfjmo5tqgmj@skbuf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740183974; x=1771719974;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=vrsf0n7ZKY8Rgo7QAxaBCIwX0QhPlVwAlrXV1JsxYTc=;
 b=mWPU/IGSmd9dXAQEoPw/AWm42YieklVTTbJo8Aa+6T8xcYflLrwkG+pe
 5fuYFliXGGVXkKCxfbcFLpefBaJYvawZUGvYbvic+a8rYWNIC0NsKEjqi
 vHF6zMIBEihtwiaOPVd01bT4FKeuX26l47s7FZkf2yhKHlrwaoAcxP4Q0
 YOawdjjzxYlJi/1JDLBcWFGDBbyck7Ua9g/FsPlJ2QhF1YTBY1etPaPJq
 ES9OqkodsIeqHHguVGomVuzGqCW5e4nhiCRXmiT6cguerGuHeuFIPG7Tw
 8a8D588fOzFBMN2iglqwpM4SijslqcMlZDFaLXacCsOTxHpU4Qo//iu/R
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mWPU/IGS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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



On 21/2/2025 10:44 pm, Vladimir Oltean wrote:
> On Fri, Feb 21, 2025 at 09:30:09PM +0800, Abdul Rahim, Faizal wrote:
>> On 21/2/2025 6:43 pm, Vladimir Oltean wrote:
>>> On Fri, Feb 21, 2025 at 06:24:09PM +0800, Furong Xu wrote:
>>>> Your fix is better when link is up/down, so I vote verify_enabled.
>>>
>>> Hmmm... I thought this was a bug in stmmac that was carried over to
>>> ethtool_mmsv, but it looks like it isn't.
>>>
>>> In fact, looking at the original refactoring patch I had attached in
>>> this email:
>>> https://lore.kernel.org/netdev/20241217002254.lyakuia32jbnva46@skbuf/
>>>
>>> these 2 lines in ethtool_mmsv_link_state_handle() didn't exist at all.
>>>
>>> 	} else {
>>>>>>> 		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
>>>>>>> 		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
>>>
>>> 		/* No link or pMAC not enabled */
>>> 		ethtool_mmsv_configure_pmac(mmsv, false);
>>> 		ethtool_mmsv_configure_tx(mmsv, false);
>>> 	}
>>>
>>> Faizal, could you remind me why they were added? I don't see this
>>> explained in change logs.
>>>
>>
>> Hi Vladimir,
>>
>> Yeah, it wasn’t there originally. I added that change because it failed the
>> link down/link up test.
>> After a successful verification, if the link partner goes down, the status
>> still shows ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED, which isn’t correct—so
>> that’s why I added it.
>>
>> Sorry for not mentioning it earlier. I assumed you’d check the delta between
>> the original patch and the upstream one, my bad, should have mentioned this
>> logic change.
>>
>> Should I update it to the latest suggestion?
> 
> Never, ever modify logic in the same commit as you are moving code.
> I was wondering what's with the Co-developed-by: tags, but I had just
> assumed fixups were made to code I had improperly moved because I
> didn't have hardware to test. Always structure patches to be one single
> logical change per patch, well justified and trivially correct.

Got it, sorry about that.

> I had assumed, in good faith, changes like this wouldn't sneak in, but I
> guess thanks for letting me know I should check next time :)
> 
> I think it's a slightly open question which state should the verification
> be in when the link fails, but in any case, your argument could be made
> that the state of the previous verification should be lost.
> 
> If I look at figure 99-8 in the Verify state diagram, I see that
> whenever the condition "begin || link_fail || disableVerify || !pEnable"
> is true, we transition to the state INIT_VERIFICATION. From there, there
> is a UCT (unconditional transition) to VERIFICATION_IDLE, and from there,
> a transition to state SEND_VERIFY based on "pEnable && !disableVerify".
> In principle what this is telling me is that as long as management
> software doesn't set pEnable (tx_enable in Linux) to false, verification
> would be attempted even with link down, and should eventually fail.
> 
> But the mmsv state machine does call ethtool_mmsv_configure_tx(mmsv, false),
> and in that case, if I were to interpret the standard state machine very
> strictly, it would remain blocked in state VERIFICATION_IDLE until a
> link up (thus, we should report the state as "verifying").
> 
> But, to be honest, I think the existence of the VERIFICATION_IDLE state
> doesn't make a lot of sense. The state machine should just transition on
> "!link_fail && !disable_verify && pEnable" to SEND_VERIFY directly, and
> from state WAIT_FOR_RESPONSE it should cycle back to SEND_VERIFY if the
> verify timer expired but we still have retries, or to INIT_VERIFICATION
> if link_fail, disableVerify or pEnable change. One more reason why I
> believe the VERIFICATION_IDLE state is redundant and under-specified is
> because it gives the user no chance to even _see_ the "initial" state
> being reported ever, given the unconditional transition to VERIFICATION_IDLE.
> 
> So in that sense, I agree with your proposal, and in terms of code,
> I would recommend just this:
> 
>   } else {
> +	/* Reset the reported verification state while the link is down */
> +	if (mmsv->verify_enabled)
> +		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
>   
>   	/* No link or pMAC not enabled */
>   	ethtool_mmsv_configure_pmac(mmsv, false);
>   	ethtool_mmsv_configure_tx(mmsv, false);
>   }
> 
> Because this is just for reporting to user space, resetting
> "mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;" doesn't matter,
> we'll do it on link up anyway.
> 
> Also note that there's no ternary operator like in the discussion with
> Furong. If mmsv->verify_enabled is false, the mmsv->status should
> already be DISABLED, no need for us to re-assign it.
> 

Will update, thanks.

