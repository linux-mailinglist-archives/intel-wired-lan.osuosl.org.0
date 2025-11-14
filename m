Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8B0C5C2C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Nov 2025 10:10:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1882783B84;
	Fri, 14 Nov 2025 09:10:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zfiNpH0UP2K; Fri, 14 Nov 2025 09:10:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 822D683B67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763111443;
	bh=b6BFu9iGbc3F1Rs9o+4VZeJk+hymSJJUpPT9WBy4yNk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ppt0LvX1qxELafSoI/CAiIGOm3FpjYsUTtEuqgVLETqR6zS1URv859FYyfUBOOfTX
	 sslHI/eF/DcMT4Eao/jou767thDUjaXb3ThkeHw3f28DCTbYKnhQW95dbwJYMBreMx
	 kXLxIXDM76x7Cgy/CMayF6nooIKSGHB0+BFEX3OF3qBLeqBcq3pKMNVUeT58lG0gP7
	 xzfLyCA2HCUcO7t6xi+GyEaMMwwRy9rI1LYzRczWzj739/DgrxMMfsoLrUHe28IYE6
	 LRJ86AalCAlLalSRsLooMVZCAjSq5LUJH9AUF9rIaYxm30EpEcKPoYnvJBbpPPZIVC
	 ZopDbQsbF5mMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 822D683B67;
	Fri, 14 Nov 2025 09:10:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 12A43D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 09:10:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EDA5383B54
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 09:10:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id djLXub_fpfdu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Nov 2025 09:10:41 +0000 (UTC)
X-Greylist: delayed 570 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 14 Nov 2025 09:10:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF6A383AE9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF6A383AE9
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF6A383AE9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Nov 2025 09:10:40 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej
 Siewior <bigeasy@linutronix.de>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <871pm126fv.fsf@intel.com>
References: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
 <87ldkblyhd.fsf@intel.com> <87bjl6l3j5.fsf@jax.kurt.home>
 <871pm126fv.fsf@intel.com>
Date: Fri, 14 Nov 2025 10:01:04 +0100
Message-ID: <874iqxng33.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1763110867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=b6BFu9iGbc3F1Rs9o+4VZeJk+hymSJJUpPT9WBy4yNk=;
 b=Q0ki1xu8ZKMdjHH1mFDVyg1p743usdI53LC54c69vslC4DNgFjpk8aioLqFX0z5USApqJU
 cgFmWWxGPjeq3rMTBolwjhSOlXEB1S+XcQBmEOT0h+9lemY2dzlHH4nUwpOPSduQWVzxmC
 BS/ujnPeVWcjHDR4jrhtqtExc4GqHm3iAw4JyLvfTLKGG7W8bniOPlq1nqDeYOhS0tBbKS
 kHR59i8DC27BGDrSrfePLTwAKwtGghcc1kHxW68hqj6dwFuXjygy9/n0hmyPoIBmgjURiY
 9le8JecTCMXlJ2iB0i2nOErcG17qQXyIiLXd41IgZSLI4g0jGP/6Gsii2BDxZg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1763110867;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=b6BFu9iGbc3F1Rs9o+4VZeJk+hymSJJUpPT9WBy4yNk=;
 b=TRLV+IzMfi5V+ejNFKmj1Ca1ICX2VAnz/oZAjQAWPNVekJbvSnLxleCo0drb9cMrNUKGxy
 c/pgacw5k5dkmQCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=Q0ki1xu8; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TRLV+IzM
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

--=-=-=
Content-Type: text/plain

On Thu Nov 13 2025, Vinicius Costa Gomes wrote:
> Kurt Kanzenbach <kurt@linutronix.de> writes:
>
>> On Wed Nov 12 2025, Vinicius Costa Gomes wrote:
>>> Hi,
>>>
>>> Kurt Kanzenbach <kurt@linutronix.de> writes:
>>>
>>>> The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is always
>>>> coupled to Qbv. Therefore, the driver sets a default Qbv schedule of all gates
>>>> opened and a cycle time of 1s. This schedule is set during probe.
>>>>
>>>> However, the following sequence of events lead to Tx issues:
>>>>
>>>>  - Boot a dual core system
>>>>    probe():
>>>>      igc_tsn_clear_schedule():
>>>>        -> Default Schedule is set
>>>>        Note: At this point the driver has allocated two Tx/Rx queues, because
>>>>        there are only two CPU(s).
>>>>
>>>>  - ethtool -L enp3s0 combined 4
>>>>    igc_ethtool_set_channels():
>>>>      igc_reinit_queues()
>>>>        -> Default schedule is gone, per Tx ring start and end time are zero
>>>>
>>>>   - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
>>>>       num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
>>>>       queues 1@0 1@1 1@2 1@3 hw 1
>>>>     igc_tsn_offload_apply():
>>>>       igc_tsn_enable_offload():
>>>>         -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom
>>>>
>>>> Therefore, restore the default Qbv schedule after changing the amount of
>>>> channels.
>>>>
>>>
>>> Couple of questions:
>>>  - Would it make sense to mark this patch as a fix?
>>
>> This only happens if a user uses ETF or MQPRIO and a dual/single core
>> system. So I didn't see the need to mark it as a fix.
>>
>
> I still think this is fix material. People can always run stuff in VMs,
> and it makes it easier to have single/dual core systems.

Fair enough.

>
>>>
>>>  - What would happen if the user added a Qbv schedule (not the default
>>>    one) and then changed the number of queues? My concern is that 'tc
>>>    qdisc' would show the custom user schedule and the hardware would be
>>>    "running" the default schedule, this inconsistency is not ideal. In
>>>    any case, it would be a separate patch.
>>
>> Excellent point. Honestly I'm not sure what to expect when changing the
>> number of queues after a user Qbv schedule is added. For MQPRIO we added
>> a restriction [1] especially for that case. I'm leaning towards the same
>> solution here. What do you think?
>
> Sounds great. Avoiding getting into inconsistent states is better than
> trying to fix it later.

Jup. I'll wait a bit for further comments and then send a v2 with your
and Aleksandr's suggestions addressed.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmkW79ATHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzggciD/9ay/U71+nZu7e8ppiVKWfShE9SiLXZ
p8gYFYumDgZFus8HUBXdIo64Ai6dR12utE3X6EDgMZMh8AWfrieyHCipZKYw0Pqu
ZTq0vo0/shVGT1CUPxH8dv6KMAUcwpdkyI1/IvC+A4aP8TkcKHurwmGg2NRmX0TY
PHRU+stgF6UEw9vvTudxS3ITPctNGuk76EZk1HdnJFgk5SAzkQThlqoW0SjZnHkE
xIPiP2KNEy2cFUIlZpJkLUXfmfqT+Fm2vKl1pZo+lXe9FILFWTLeBgufG6vzMGsQ
ZUQTfoD3FyC0/WrtgohLZxqwkqWOmu9loWNaIHwby1yle+GFi0Z+76OgmnXgsSI+
sT6WKX82V9ytqSBzJzxEFKZYS6Nis0elxX6dY0mPFWq4PaiL/8T9mlG/SjDecNUx
dUlA6TQSLE7u4VpVfU25A1/7XcJlXp/UemUVjpRFCLQgfO3t6xHwyyd/T/4sQsyD
cO4+oyHf9C2ctUumx5W4FjRlgvr5Dd1WJKDaGq0hoHN6LXCLMgiIEKKapKl9ViW3
lhgKV+IXH5vmlFg8o5KyIp64Z+1ClB+ATDgBLTN9oiA+nQtQFVR0YzYUAyJBiGUs
aSRo3Ol2YRWiSnfmGff38fA5TOiYc955AwvKIsuGQsGh+qhMBLLim0/nLzCcngyX
eEC/CCpEuVgJQw==
=wmrl
-----END PGP SIGNATURE-----
--=-=-=--
