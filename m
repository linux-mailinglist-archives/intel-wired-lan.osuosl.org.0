Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 591F5C59289
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 18:30:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B8E880CBA;
	Thu, 13 Nov 2025 17:29:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sl3eT6k3otaT; Thu, 13 Nov 2025 17:29:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6007E80D9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763054996;
	bh=G6ghmzBsadObuHy7+LZDSPseOx1RIm+BPgmmTSIeQnc=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Dnhz/2124pUUEDAFhPMgkTVtdyiMxlVMIzH8H3PsYW9Wc1zLn+W3EhLhFHEn0xWJk
	 8LtxpdpqYOcJec26sWsMTHh2qZOxVQV+hxVlzBmifCGIMnU0hK7fbjyhHlgbxZdAvm
	 vw+jOHH7stE1npeN+prAtNAY0GxutThLesU1s+UYvJa0nekey1I8FzBNO9vx8X3xzI
	 RvGlyF3p/hHIGCK9ETlE+m7t3eYo5BTvJPfAUN954YK4XgqKF9AAWQwveZQzdTtKrq
	 qquWx+K4bwcEVi4taYB1zHV2jGZ2JCfZYsDOuuMGZaZ/tdPiQvTA7JT3wZUDT0YTIT
	 8oIZxTY5EP9uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6007E80D9E;
	Thu, 13 Nov 2025 17:29:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E815D158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 17:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C6A5F4002B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 17:29:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 59iFFMNWb5uz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 17:29:54 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 13 Nov 2025 17:29:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A67C640012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A67C640012
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A67C640012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 17:29:53 +0000 (UTC)
X-CSE-ConnectionGUID: lxHNJxKTSEOtsNsaZadMFA==
X-CSE-MsgGUID: A2XmzYYOQx+sN5/AIkry4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="90621017"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="90621017"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 09:22:46 -0800
X-CSE-ConnectionGUID: KGfI05O1Qk6pC7jk7wmDHA==
X-CSE-MsgGUID: bOpJib/jReq0+a1qsf5Clw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="212957758"
Received: from vverma7-desk1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.125.108.134])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 09:22:45 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <87bjl6l3j5.fsf@jax.kurt.home>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
 <87ldkblyhd.fsf@intel.com> <87bjl6l3j5.fsf@jax.kurt.home>
Date: Thu, 13 Nov 2025 09:22:44 -0800
Message-ID: <871pm126fv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763054994; x=1794590994;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MdYfZqAAfI9UhZo7IuK3PHUM5hvs8ciQVUC6Vr0MK90=;
 b=JzEb6oHPXFF6ChiMUa/1cvkLjxRlWJiiao0lj3Mt6fD0D3mR/IJtjuk/
 RjWdqE23aBe2PwQhFS17UJNjEWJkPV1NOmj1NF6gkQIDnitnOMNt3IRmI
 Fpn91iI99IKFirpqDdCkz7+WWKoTpl0w6jFcpvvAZlnHPKwyLDVeHW+7K
 yXucmx48nFq3YADe9nIHGAKtzVZVLkefD+NfyEKYXOFAgJKXuc//b0QoJ
 znaMtT9fOS/+OXoQT1uoQkgZTy055ECWe/vFyaG0/ghOLFF1pHFskaA9x
 QMtxtSB103hY/I6EfabBgbIy6axper05QBfsF2EAKCejfxbGnkXcy48iG
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JzEb6oHP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
 schedule when changing channels
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

Kurt Kanzenbach <kurt@linutronix.de> writes:

> On Wed Nov 12 2025, Vinicius Costa Gomes wrote:
>> Hi,
>>
>> Kurt Kanzenbach <kurt@linutronix.de> writes:
>>
>>> The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is always
>>> coupled to Qbv. Therefore, the driver sets a default Qbv schedule of all gates
>>> opened and a cycle time of 1s. This schedule is set during probe.
>>>
>>> However, the following sequence of events lead to Tx issues:
>>>
>>>  - Boot a dual core system
>>>    probe():
>>>      igc_tsn_clear_schedule():
>>>        -> Default Schedule is set
>>>        Note: At this point the driver has allocated two Tx/Rx queues, because
>>>        there are only two CPU(s).
>>>
>>>  - ethtool -L enp3s0 combined 4
>>>    igc_ethtool_set_channels():
>>>      igc_reinit_queues()
>>>        -> Default schedule is gone, per Tx ring start and end time are zero
>>>
>>>   - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>>>       num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>>>       queues 1@0 1@1 1@2 1@3 hw 1
>>>     igc_tsn_offload_apply():
>>>       igc_tsn_enable_offload():
>>>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom
>>>
>>> Therefore, restore the default Qbv schedule after changing the amount of
>>> channels.
>>>
>>
>> Couple of questions:
>>  - Would it make sense to mark this patch as a fix?
>
> This only happens if a user uses ETF or MQPRIO and a dual/single core
> system. So I didn't see the need to mark it as a fix.
>

I still think this is fix material. People can always run stuff in VMs,
and it makes it easier to have single/dual core systems.

>>
>>  - What would happen if the user added a Qbv schedule (not the default
>>    one) and then changed the number of queues? My concern is that 'tc
>>    qdisc' would show the custom user schedule and the hardware would be
>>    "running" the default schedule, this inconsistency is not ideal. In
>>    any case, it would be a separate patch.
>
> Excellent point. Honestly I'm not sure what to expect when changing the
> number of queues after a user Qbv schedule is added. For MQPRIO we added
> a restriction [1] especially for that case. I'm leaning towards the same
> solution here. What do you think?

Sounds great. Avoiding getting into inconsistent states is better than
trying to fix it later.

>
> Thanks,
> Kurt
>
> [1] - https://elixir.bootlin.com/linux/v6.18-rc5/source/drivers/net/ethernet/intel/igc/igc_ethtool.c#L1564


Cheers,
-- 
Vinicius
