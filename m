Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D00B383D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 15:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F87181326;
	Wed, 27 Aug 2025 13:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YQjy3PfA7VcW; Wed, 27 Aug 2025 13:40:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7582A81349
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756302035;
	bh=lXHGPzxmKXZUKkrPKAK6AJzy4ypG9bh5yS1wxVkTKXU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xtoamjx8RbKOEVabCk2XRW8bD1w6YgS+v4weg4DS8zXM3PCWJ9Bu+Axq/292p3d1k
	 EWXWfsxQjS148uaoJ33CGGTR/qXptGzNwlh9Zq6PkGK+Jf0pKlQXmgq6yrLMGkBZht
	 118cxklBbx0ORsf1kKovX0kLTcXKPqAM9gWS1cQT3YXmbZc+0Z1V0R1L0CQgzW7mbY
	 hVGs0JK6UBhi2RO7Zsj6YMPQYGjjDPSXnH1SwB6SQUmmbE39XDGiBN064fjR2RSApL
	 3s1mWJnKJ24EsD5SyHzkW2zrYxuEbgrEtJuzhg85y+vGw1WNuuIyt3l4DGnAQh4w1c
	 GtecGxqhR6o9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7582A81349;
	Wed, 27 Aug 2025 13:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CF9B114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D89281142
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:40:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OjSnrI-e-pqT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 13:40:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 33E9681326
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33E9681326
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33E9681326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:40:31 +0000 (UTC)
Received: from [172.16.0.106] (unknown [213.71.9.131])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 07D6E60213AC1;
 Wed, 27 Aug 2025 15:39:36 +0200 (CEST)
Message-ID: <aefa86a1-8959-4e5f-8203-78ce4c50b3bd@molgen.mpg.de>
Date: Wed, 27 Aug 2025 15:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de> <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <e656a4ee-281c-4205-9183-bc3c7dbc9173@intel.com>
 <87ecswq5vj.fsf@jax.kurt.home>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <87ecswq5vj.fsf@jax.kurt.home>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Linux folks,


A very interesting issue.

Am 27.08.25 um 14:57 schrieb Kurt Kanzenbach:
> On Tue Aug 26 2025, Jacob Keller wrote:
>> On 8/26/2025 5:59 AM, Sebastian Andrzej Siewior wrote:
>>> On 2025-08-25 16:28:38 [-0700], Jacob Keller wrote:
>>>> Ya, I don't think we fully understand either. Miroslav said he tested on
>>>> I350 which is a different MAC from the I210, so it could be something
>>>> there. Theoretically we could handle just I210 directly in the interrupt
>>>> and leave the other variants to the kworker.. but I don't know how much
>>>> benefit we get from that. The data sheet for the I350 appears to have
>>>> more or less the same logic for Tx timestamps. It is significantly
>>>> different for Rx timestamps though.
>>>
>>> From logical point of view it makes sense to retrieve the HW timestamp
>>> immediately when it becomes available and feed it to the stack. I can't
>>> imagine how delaying it to yet another thread improves the situation.
>>> The benchmark is about > 1k packets/ second while in reality you have
>>> less than 20 packets a second. With multiple applications you usually
>>> need a "second timestamp register" or you may lose packets.
>>>
>>> Delaying it to the AUX worker makes sense for hardware which can't fire
>>> an interrupt and polling is the only option left. This is sane in this
>>> case but I don't like this solution as some kind compromise for
>>> everyone. Simply because it adds overhead and requires additional
>>> configuration.
>>
>> I agree. Its just frustrating that doing so appears to cause a
>> regression in at least one test setup on hardware which uses this method.
>>
>>>>> Also I couldn't really see a performance degradation with ntpperf. In my
>>>>> tests the IRQ variant reached an equal or higher rate. But sometimes I
>>>>> get 'Could not send requests at rate X'. No idea what that means.
>>>>>
>>>>> Anyway, this patch is basically a compromise. It works for Miroslav and
>>>>> my use case.
>>>>>
>>>>>> This is also what the igc does and the performance improved
>>>>>> 	afa141583d827 ("igc: Retrieve TX timestamp during interrupt handling")
>>>>
>>>> igc supports several hardware variations which are all a lot similar to
>>>> i210 than i350 is to i210 in igb. I could see this working fine for i210
>>>> if it works fine in igb.. I honestly am at a loss currently why i350 is
>>>> much worse.
>>>>
>>>>>> and here it causes the opposite?
>>>>>
>>>>> As said above, I'm out of ideas here.
>>>>
>>>> Same. It may be one of those things where the effort to dig up precisely
>>>> what has gone wrong is so large that it becomes not feasible relative to
>>>> the gain :(
>>>
>>> Could we please use the direct retrieval/ submission for HW which
>>> supports it and fallback to the AUX worker (instead of the kworker) for
>>> HW which does not have an interrupt for it?
>>
>> I have no objection. Perhaps we could assume the high end of the ntpperf
>> benchmark is not reflective of normal use case? We *are* limited to only
>> one timestamp register, which the igb driver does protect by bitlock.
> 
> Does that mean we're going back to v1 + the AUX worker for 82576? Let me
> prepare v3 then.

Good question. Personally, I’d interpret Linux’ no-regression-policy 
that, if a possible regression is known, even for a synthetic benchmark, 
it must not be introduced unrelated how upsetting this is. So the 
current approach needs to be taken.


Kind regards,

Paul
